#!/usr/bin/env python3

#import the dis module
import dis

# generate the code to compile
code = 'message = "hello ByteCode"'

# compile the code to bytecode
code_bytecode = compile(code, "code bytecode", "exec")

# display the bytecode object
print("bytecode:")
print(code_bytecode, end="\n\n")

# loop in list comprehension to display the bytecode content
bytecode_content = [byte for byte in code_bytecode.co_code]

# print the content
print("bytecode content:")
print(bytecode_content, end="\n\n")

# print the disassembled bytecode
print("disassembled bytecode:")
print(dis.dis(code))
