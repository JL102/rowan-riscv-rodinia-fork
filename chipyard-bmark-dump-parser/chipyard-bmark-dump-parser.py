#!/usr/bin/env python3

# chipyard-bmark-dump-parser.py
# counts the number of each instruction of each data type is present in an assembly dump of the chipyard benchmarks, stores in a nested list
# prints the results, and calculates percentages
# 
# command line options:
# -o  specify an output text file instead of outputting to stdout
# -c  specify an output csv file, only contains counts and not percentages
# -r  analyze all dump files in the input directory, instead of a single file
#     text and csv outputs will be all in the same file
# -t  print out a table containing only percentages of instruction types for each file anaylyzed
#     only to be used with the -r option
# 
# examples:
# python chipyard-bmark-dump-parser.py -o out.txt -c out.csv ../../benchmarks/dhrystone.riscv.dump
# python chipyard-bmark-dump-parser.py -o out.txt -c out.csv -t -r ../../benchmarks/ > table.txt
# 
# requires the prettytable library
# can be installed with 'pip install prettytable'

import os
import sys
import copy
import csv
import getopt
from prettytable import PrettyTable

# open the dump file and copy to a list
def get_dump_line_list(dump_file_path):
    dump_line_list = []
    with open(dump_file_path, "r") as dump_file:
        dump_line_list = dump_file.readlines()
    return dump_line_list

# find instructions and build up the nested list with data
def collect_instructions(dump_line_list, i_data_init):
    i_data = copy.deepcopy(i_data_init)
    for line in dump_line_list: #iterate through lines in the dump file
        found_i_in_line = False
        for i_type in i_data[1:]: #iterate through instruction types in the instruction data
            for i in i_type[2:]: #iterate through instructions in the instruction type
                i_start_pos = line.find("\t" + i[0] + "\t") #find the first occurance of the instruction name with tabs on either side
                if i_start_pos == -1:
                    i_start_pos = line.find("\t" + i[0] + "\n")
                if i_start_pos != -1:
                    i_data[0] = i_data[0] + 1 #increment total instructions counter
                    i_type[1] = i_type[1] + 1 #increment instruction type counter
                    i[1] = i[1] + 1 #increment instruction counter
                    found_i_in_line = True
        if not found_i_in_line:
            #print(line,end='')
            pass
    return i_data

# get a formatted string of a percentage of two numbers
def get_percent(num1, num2):
    if num2 == 0:
        return str(0)
    return str(round(float(num1) / float(num2) * 100.0, 2)) + "%"

# print the instruction count and percentages
def print_result(i_data, dump_file_name):
    print(dump_file_name)
    print("total instructions: " + str(i_data[0]))
    for i_type in i_data[1:]:
        if i_type[1] > 0:
            print(i_type[0] + " - " + str(i_type[1]) + " - " + get_percent(i_type[1], i_data[0]))
        for i in i_type[2:]:
            if i[1] > 0:
                print("\t" + i[0] + " - " + str(i[1]) + " - " + get_percent(i[1], i_type[1]) + " - " + get_percent(i[1], i_data[0]))
    print("\n\n")

def output_result_to_file(i_data, dump_file_name, output_file):
    with open(output_file, 'a') as output_file:
        output_file.write(dump_file_name + "\n")
        output_file.write("total instructions: " + str(i_data[0]) + "\n")
        for i_type in i_data[1:]:
            if i_type[1] > 0:
                output_file.write(i_type[0] + " - " + str(i_type[1]) + " - " + get_percent(i_type[1], i_data[0]) + "\n")
            for i in i_type[2:]:
                if i[1] > 0:
                    output_file.write("\t" + i[0] + " - " + str(i[1]) + " - " + get_percent(i[1], i_type[1]) + " - " + get_percent(i[1], i_data[0]) + "\n")
        output_file.write("\n\n")

def generate_csv(i_data, csv_file_path):
    with open(csv_file_path, 'a') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')

        writer.writerow(["total instructions", str(i_data[0])])
        writer.writerow([])

        for i_type in i_data[1:]:
            if i_type[1] > 0:
                writer.writerow([i_type[0], str(i_type[1])])

        writer.writerow([])

        for i_type in i_data[1:]:
            for i in i_type[2:]:
                if i[1] > 0:
                    writer.writerow([i[0], str(i[1])])

        writer.writerow([])
        writer.writerow([])

def do_output(i_data, dump_file_name, output_file, output_csv):
    if output_file == False:
        print_result(i_data, dump_file_name)
    else:
        output_result_to_file(i_data, dump_file_name, output_file)

    if output_csv != False:
        generate_csv(i_data, output_csv)

def get_table_row(i_data, dump_file_name):
    row = [dump_file_name]
    for i_type in i_data[1:]:
        row.append(get_percent(i_type[1], i_data[0]))
    return row

i_data_init = [0, \
        ["integer computation", \
            ["addi"], \
            ["slti"], \
            ["sltiu"], \
            ["xori"], \
            ["ori"], \
            ["andi"], \
            ["slli"], \
            ["slri"], \
            ["srai"], \
            ["li"], \
            ["lui"], \
            ["auipc"], \
            ["add"], \
            ["sub"], \
            ["sll"], \
            ["slt"], \
            ["sltu"], \
            ["xor"], \
            ["srl"], \
            ["sra"], \
            ["or"], \
            ["and"], \
            ["addiw"], \
            ["slliw"], \
            ["srliw"], \
            ["sraiw"], \
            ["slli"], \
            ["srli"], \
            ["srai"], \
            ["addw"], \
            ["subw"], \
            ["sllw"], \
            ["srlw"], \
            ["sraw"], \
            ["c.add"], \
            ["c.addw"], \
            ["c.addi"], \
            ["c.addiw"], \
            ["c.addi6sp"], \
            ["c.addi4spn"], \
            ["c.li"], \
            ["c.lui"], \
            ["c.mv"], \
            ["c.sub"], \
            ["c.slli"], \
            ["mv"], \
            ["not"], \
            ["neg"], \
            ["sext.w"], \
            ], \
        ["branching", \
            ["jal"], \
            ["jalr"], \
            ["beq"], \
            ["bne"], \
            ["blt"], \
            ["bge"], \
            ["bltu"], \
            ["bgeu"], \
            ["c.beqz"], \
            ["c.bnez"], \
            ["c.j"], \
            ["c.jr"], \
            ["c.jal"], \
            ["c.jalr"], \
            ["c.bgez"], \
            ["bgez"], \
            ["bgtz"], \
            ["blez"], \
            ["bltz"], \
            ["bnez"], \
            ["beqz"], \
            ["j"], \
            ["jr"], \
            ["ret"], \
            ["mret"], \
            ], \
        ["memory access", \
            ["lb"], \
            ["lh"], \
            ["lw"], \
            ["lbu"], \
            ["lhu"], \
            ["sb"], \
            ["sh"], \
            ["sw"], \
            ["ld"], \
            ["sd"], \
            ["lwu"], \
            ["c.lw"], \
            ["c.lwsp"], \
            ["c.ld"], \
            ["c.ldsp"], \
            ["c.lq"], \
            ["c.lqsp"], \
            ["c.sw"], \
            ["c.swsp"], \
            ["c.sd"], \
            ["c.sdsp"], \
            ["c.sq"], \
            ["c.sqsp"], \
            ], \
        ["mul and div", \
            ["mul"], \
            ["mulh"], \
            ["mulhsu"], \
            ["mulhu"], \
            ["div"], \
            ["divu"], \
            ["rem"], \
            ["remu"], \
            ["mulw"], \
            ["divw"], \
            ["divuw"], \
            ["remw"], \
            ["remuw"], \
            ], \
        ["csr", \
            ["csrrw"], \
            ["csrrs"], \
            ["csrrc"], \
            ["csrrwi"], \
            ["csrrsi"], \
            ["csrrci"], \
            ["csrs"], \
            ["csrr"], \
            ["csrw"], \
            ["fscsr"], \
            ["unimp"], \
            ], \
        ["atomic", \
            ["lr.w"], \
            ["sc.w"], \
            ["amoswap.w"], \
            ["amoadd.w"], \
            ["amoxor.w"], \
            ["amoand.w"], \
            ["amoor.w"], \
            ["amomin.w"], \
            ["amomax.w"], \
            ["amomimu.w"], \
            ["amomaxu.w"], \
            ["lr.d"], \
            ["sc.d"], \
            ["amoswap.d"], \
            ["amoadd.d"], \
            ["amoxor.d"], \
            ["amoand.d"], \
            ["amoor.d"], \
            ["amomin.d"], \
            ["amomax.d"], \
            ["amominu.d"], \
            ["amomaxu.d"], \
            ], \
        ["floating point operations", \
            ["flw"], \
            ["fsw"], \
            ["fmadd.s"], \
            ["fmsub.s"], \
            ["fnmsub.s"], \
            ["fnmadd.s"], \
            ["fadd.s"], \
            ["fsub.s"], \
            ["fmul.s"], \
            ["fdiv.s"], \
            ["fsqrt.s"], \
            ["fsgnj.s"], \
            ["fsgnjn.s"], \
            ["fsgnjx.s"], \
            ["fmin.s"], \
            ["fmax.s"], \
            ["fcvt.w.s"], \
            ["fcvt.wu.s"], \
            ["fmt.x.w"], \
            ["feq.s"], \
            ["fle.s"], \
            ["fclass.s"], \
            ["fcvt.s.w"], \
            ["fcvt.s.wu"], \
            ["fmv.w.x"], \
            ["fcvt.l.s"], \
            ["fcvt.lu.s"], \
            ["fcvt.s.l"], \
            ["fcvt.s.lu"], \
            ["fld"], \
            ["fsd"], \
            ["fmadd.d"], \
            ["fmsub.d"], \
            ["fnmsub.d"], \
            ["fnmadd.d"], \
            ["fadd.d"], \
            ["fsub.d"], \
            ["fmul.d"], \
            ["fdiv.d"], \
            ["fsqrt.d"], \
            ["fsgnj.d"], \
            ["fsgnjn.d"], \
            ["fsgnjx.d"], \
            ["fmin.d"], \
            ["fmax.d"], \
            ["fcvt.s.d"], \
            ["fcvt.d.s"], \
            ["feq.d"], \
            ["flt.d"], \
            ["fle.d"], \
            ["fclass.d"], \
            ["fcvt.w.d"], \
            ["fcvt.wu.d"], \
            ["fcvt.d.w"], \
            ["fcvt.d.wu"], \
            ["fcvt.l.d"], \
            ["fcvt.lu.d"], \
            ["fmv.x.d"], \
            ["fcvt.d.l"], \
            ["fcvt.d.lu"], \
            ["fmv.d.x"], \
            ], \
        ["counters", \
            ["rdcycle"], \
            ["rdcycleh"], \
            ["rdtime"], \
            ["rdtimeh"], \
            ["rdinstret"], \
            ["rdinstreth"], \
            ], \
        ["misc", \
            ["fence"], \
            ["fence.i"], \
            ["scall"], \
            ["sbreak"], \
            ["ecall"], \
            ["ebreak"], \
            ["eret"], \
            ["mrts"], \
            ["mrth"], \
            ["hrts"], \
            ["wfi"], \
            ["sfence.vm"], \
            ["nop"], \
            ["c.ebreak"], \
            ["c.nop"], \
            ], \
    ]

for i_type in i_data_init[1:]:
    i_type.insert(1, 0)
    for i in i_type[2:]:
        i.append(0)

output_csv = False
recursive = False
output_file = False
output_table = False

options = 'c:ro:t'
arguments = sys.argv[1:]
options_values, other_args = getopt.getopt(arguments, options)
for option_value in options_values:
    if '-c' in option_value:
        output_csv = option_value[1]
        if(os.path.exists(output_csv)):
            os.remove(output_csv)
    if '-r' in option_value:
        recursive = True
    if '-o' in option_value:
        output_file = option_value[1]
        if(os.path.exists(output_file)):
            os.remove(output_file)
    if '-t' in option_value:
        output_table = True

dump_file_path = other_args[0]

if recursive == False:
    i_data = collect_instructions(get_dump_line_list(dump_file_path), i_data_init)
    do_output(i_data, dump_file_path, output_file, output_csv)
else:
    if output_table:
        table = PrettyTable()
        header = ['instruction type']
        for i_type in i_data_init[1:]:
            header.append(i_type[0])
        table.field_names = header
    for cur_dump_file in sorted(os.listdir(dump_file_path)):
        cur_dump_file_path = dump_file_path + cur_dump_file
        i_data = collect_instructions(get_dump_line_list(cur_dump_file_path), i_data_init)
        do_output(i_data, cur_dump_file_path, output_file, output_csv)
        if output_table:
            table.add_row(get_table_row(i_data, cur_dump_file))

    if output_table:
        print(table)

