#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

def not_in_str(s, l):
    not_in = []
    for x in l:
        if x not in s:
            not_in.append(x)
    return not_in

def print_list(l, message):
    print(f"\n{message}:")
    for word in l:
        print(word, end=" ")
    print()

with open(sys.argv[1], "r") as f:
    with open(sys.argv[2], "r") as f1:
        trusted = f.read()
        incoming = f1.read()

        untrusted = not_in_str(trusted, incoming.split("\n"))
        not_found = not_in_str(incoming, trusted.split(" "))

        print_list(untrusted, "Untrusted")
        print_list(not_found, "Not found")

