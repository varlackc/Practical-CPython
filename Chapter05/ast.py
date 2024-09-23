#!/usr/bin/env python3
#import the ast library
import ast

# declare variables
code = 'message = "hello AST"'

# generate tree
tree = ast.parse(code)

# print the tree
print("AST:")
print(tree, end="\n\n")

# generate tree dump
tree_dump = ast.dump(tree, indent=4)

# print tree dump
print("AST Content:")
print(tree_dump)
