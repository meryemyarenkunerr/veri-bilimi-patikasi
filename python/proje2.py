def reverse(l):

    for i in range(len(l)):
        if type(l[i]) == type(l):
            start = 0
            end = len(l[i]) - 1

            while start < end:
                l[i][start], l[i][end] = l[i][end], l[i][start]
                start += 1
                end -= 1

    start = 0
    end = len(l) - 1

    while start < end:
        l[start], l[end] = l[end], l[start]
        start += 1
        end -= 1   

    return l

print(reverse([[1, 2], [3, 4], [5, 6, 7]]))


