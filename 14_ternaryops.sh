#!/bin/bash

#Ternary Ops mixture

# Cond1 && Cond2 || Cond3

# This is same as if else but an shortcut

age=18

[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"
