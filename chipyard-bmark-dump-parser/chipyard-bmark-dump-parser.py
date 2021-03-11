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
import csv

# open the dump file and copy to a list
def get_dump_line_list(dump_file_path):
    dump_line_list = []
    with open(dump_file_path, "r") as dump_file:
        dump_line_list = dump_file.readlines()
    return dump_line_list

# find instructions and build up the nested list with data
def collect_instructions(dump_line_list, i_data_init):
    i_data = i_data_init
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

def generate_csv(i_data, csv_file_path):
    with open(csv_file_path, 'w') as csv_file:
        writer = csv.writer(csv_file, delimiter=',')

        writer.writerow(["total instructions", str(i_data[0])])
        writer.writerow([""])

        for i_type in i_data[1:]:
            if i_type[1] > 0:
                writer.writerow([i_type[0], str(i_type[1])])

        writer.writerow([""])

        for i_type in i_data[1:]:
            for i in i_type[2:]:
                if i[1] > 0:
                    writer.writerow([i[0], str(i[1])])

try:
    dump_file_path = sys.argv[1]
except:
    print("error: need to specify dump file location")
    quit()

try:
    csv_file_path = sys.argv[2]
except:
    print("error: need to specify output csv file location")
    quit()

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

i_data = collect_instructions(get_dump_line_list(dump_file_path), i_data_init)

print_result(i_data)
generate_csv(i_data, csv_file_path)

