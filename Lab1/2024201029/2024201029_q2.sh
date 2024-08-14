#!/bin/bash

awk -F',' '{sum+=$4;} END{print sum}' $(dirname $0)/power_level.txt