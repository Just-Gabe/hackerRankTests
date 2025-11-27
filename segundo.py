# Given an integer, n, perform the following conditional actions:
# [ x ] If n is odd, print Weird
# [ x ] If n is even and in the inclusive range of 2 to 5, print Not Weird
# [ x ] If n is even and in the inclusive range of 6 to 20, print Weird
# [ x ] If n is even and greater than 20, print Not Weird

import math
import os
import random
import re
import sys



if __name__ == '__main__':
    n = int(input().strip())
    if n % 2 == 0:
        if 6 <= n <= 20:
            print('Weird')
        if 2 <= n <= 5 or n > 20:
                print('Not Weird')
    else:
        print('Weird')
