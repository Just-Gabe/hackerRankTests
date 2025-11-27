# The provided code stub reads an integer, n, from STDIN. For all non-negative integers i < n, print i². 
# Exemple: n = 3 
# The list of non-negative integers that are less than n = 3 is [0, 1, 2]. Print the square of each number on a separate line.
# prints:

# 0
# 1
# 4

if __name__ == '__main__':
    n = int(input())
    if n >= 0:
        rangeNum = range(0, n)
        menor_que = [*rangeNum]
        for i in menor_que:
            print(i**2)
    else:
        print('valores precisam ser positivos')
        pass
