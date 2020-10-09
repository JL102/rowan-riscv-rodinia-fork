#!/usr/bin/env python3

import os
import sys
import copy

def get_ir_line_list(ir_file_path):
    ir_line_list = []
    with open(ir_file_path, "r") as ir_file:
        ir_line_list = ir_file.readlines()
    return ir_line_list

def collect_instructions(ir_line_list, i_data_init):
    i_data = i_data_init
    for line in ir_line_list:
        for i_type in i_data[1:]:
            for i in i_type[2:]:
                i_start_pos = line.find(" " + i[0] + " ")
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
                        print("no data type found for " + i[0] + " on line " + line)
                    else:
                        #print(data_type_poses)
                        min_sep_from_i = sys.maxsize
                        for data_type in data_type_poses:
                            if data_type[0] < min_sep_from_i:
                                min_sep_from_i = data_type[0]
                                min_sep_from_i_index = data_type_poses.index(data_type)
                        data_type_found = data_type_poses[min_sep_from_i_index][1]
                        data_type_to_increment = i[2][i[2].index(data_type_found)]
                        data_type_to_increment[1] = data_type_to_increment[1] + 1

                        #print(line)
                        #print(i[0])
                        #print(data_type_pos)
                        #print(data_type_found)
                        #print(data_type_to_increment[1])
                        #print("-")
    return i_data

def get_percent(num1, num2):
    if num2 == 0:
        return str(0)
    return " - " + str(round(float(num1) / float(num2) * 100.0, 2)) + "%"

def print_result(i_data):
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

#print(i_data)
print_result(i_data)

