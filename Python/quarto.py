# The provided code stub reads two integers, a and b, from STDIN.
# Add logic to print two lines. The first line should contain the result of integer division, a//b. 
# The second line should contain the result of float division, a/b.
# No rounding or formatting is necessary.
# Exemple:

# a = 3
# b = 5

# prints:

# 0
# 0.6


if __name__ == '__main__':
    a = int(input())
    b = int(input())
    intdiv = a//b
    floatdiv = a/b

    print(intdiv)
    print(floatdiv)
