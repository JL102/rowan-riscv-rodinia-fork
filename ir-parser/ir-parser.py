#!/usr/bin/env python3

# ir-parser.py
# counts the number of each instruction of each data type is present in an LLVM IR, stores in a nested list (boxes)
# prints the results, and calculates percentages
# IR file is specified as a command-line argument
# known issues:
#   -won't count instructions with struct data type - should count them in the instruction and instruction type counters, but doesn't count the struct data type
#   -counts array data types as just one of the array's base data type

import os
import sys
import copy

# open the IR file and copy to a list
def get_ir_line_list(ir_file_path):
    ir_line_list = []
    with open(ir_file_path, "r") as ir_file:
        ir_line_list = ir_file.readlines()
    return ir_line_list

# find instructions and build up the nested list with data
def collect_instructions(ir_line_list, i_data_init):
    i_data = i_data_init
    for line in ir_line_list: #iterate through lines in the ir file
        for i_type in i_data[1:]: #iterate through instruction types in the instruction data
            for i in i_type[2:]: #iterate through instructions in the instruction type
                i_start_pos = line.find(" " + i[0] + " ") #find the first occurance of the instruction name with spaces on either side
                if i_start_pos != -1:
                    i_data[0] = i_data[0] + 1 #increment total instructions counter
                    i_type[1] = i_type[1] + 1 #increment instruction type counter
                    i[1] = i[1] + 1 #increment instruction counter
                    data_type_poses = []
                    for data_type in i[2]:
                        data_type_pos = line.find(data_type[0], i_start_pos)
                        if data_type_pos != -1:
                            data_type_poses.append([int(data_type_pos), data_type])
                    if len(data_type_poses) == 0:
                    #    print("no data type found for " + i[0] + " on line " + line)
                        pass;
                    else:
                        #print(data_type_poses)
                        min_sep_from_i = sys.maxsize
                        for data_type in data_type_poses:
                            if data_type[0] < min_sep_from_i:
                                min_sep_from_i = data_type[0]
                                min_sep_from_i_index = data_type_poses.index(data_type)
                        data_type_found = data_type_poses[min_sep_from_i_index][1]
                        data_type_to_increment = i[2][i[2].index(data_type_found)]
                        data_type_to_increment[1] = data_type_to_increment[1] + 1 #increment value for how many instructions of the data type
    return i_data

# get a formatted string of a percentage of two numbers
def get_percent(num1, num2):
    if num2 == 0:
        return str(0)
    return " - " + str(round(float(num1) / float(num2) * 100.0, 2)) + "%"

# print the instruction count and percentages
def print_result(i_data):
    print("total instructions: " + str(i_data[0]))
    for i_type in i_data[1:]:
        if i_type[1] > 0:
            print(i_type[0] + " - " + str(i_type[1]) + get_percent(i_type[1], i_data[0]))
        for i in i_type[2:]:
            if i[1] > 0:
                print("\t" + i[0] + " - " + str(i[1]) + get_percent(i[1], i_type[1]) + get_percent(i[1], i_data[0]))
            for data_type in i[2]:
                if data_type[1] > 0:
                    print("\t\t" + data_type[0] + " - " + str(data_type[1]) + get_percent(data_type[1], i[1]) + \
                            get_percent(data_type[1], i_type[1]) + \
                            get_percent(data_type[1], i_data[0]))


try:
    ir_file_path = sys.argv[1]
except:
    print("error: need to specify IR file location")
    quit()

data_types = [ \
        ["void"], \
        ["label"], \
        ["metadata"], \
        ["i1"], \
        ["i8"], \
        ["i16"], \
        ["i32"], \
        ["i64"], \
        ["float"], \
        ["double"], \
        ["fp128"], \
        ["x86_fp80"], \
        ["ppc_fp128"] \
        ]

for data_type in data_types:
    data_type.append(0)

i_data_init = [0, \
        ["terminator instructions", \
            ["ret"], \
            ["br"], \
            ["switch"], \
            ["invoke"], \
            ["unwind"], \
            ["unreachable"], \
            ], \
        ["binary operations", \
            ["add"], \
            ["fadd"], \
            ["sub"], \
            ["fsub"], \
            ["mul"], \
            ["fmul"], \
            ["udiv"], \
            ["sdiv"], \
            ["fdiv"], \
            ["urem"], \
            ["srem"], \
            ["frem"], \
            ], \
        ["binary bitwise operations", \
            ["shl"], \
            ["lshr"], \
            ["ashr"], \
            ["and"], \
            ["or"], \
            ["xor"], \
            ], \
        ["vector operations", \
            ["extractelement"], \
            ["insertelement"], \
            ["shufflevector"], \
            ], \
        ["aggregate operations", \
            ["extractvalue"], \
            ["insertvalue"], \
            ], \
        ["memory access and addressing operations", \
            ["malloc"], \
            ["free"], \
            ["alloca"], \
            ["load"], \
            ["store"], \
            ["getelementptr"], \
            ], \
        ["conversion operations", \
            ["trunc"], \
            ["zext"], \
            ["sext"], \
            ["fptrunc"], \
            ["fpext"], \
            ["fptoui"], \
            ["fptosi"], \
            ["uitofp"], \
            ["sitofp"], \
            ["ptrtoint"], \
            ["inttoptr"], \
            ["bitcast"], \
            ], \
        ["other operations", \
            ["icmp"], \
            ["fcmp"], \
            ["phi"], \
            ["select"], \
            ["call"], \
            ["va_arg"], \
            ] \
        ]

for i_type in i_data_init[1:]:
    i_type.insert(1, 0)
    for i in i_type[2:]:
        i.append(0)
        i.append(copy.deepcopy(data_types))

i_data = collect_instructions(get_ir_line_list(ir_file_path), i_data_init)

print_result(i_data)

