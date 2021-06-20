#!/bin/bash

iverilog -o out testbench.v cpu.v && vvp out
