# You are given a string S and width W.
# Your task is to wrap the string into a paragraph of width W.

# Function Description

# wrap has the following parameters:

# string string: a long string
# int max_width: the width to wrap to
#
# Returns
# string: a single string with newline characters ('\n') where the breaks should be

# Input Format

# The first line contains a string, String.
# The second line contains the width, max_width.

import textwrap

def wrap(string, max_width):
    wrapper = textwrap.TextWrapper(width=max_width)

    word_list = wrapper.fill(text=string)

    return word_list

if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)
