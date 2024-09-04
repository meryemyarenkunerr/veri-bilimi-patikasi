def flatten (l, s = []):
    
    for i in l:
        if type(i) == type(s):
            flatten(i)
        else:
            s.append(i)
    
    return s


print(flatten([[1,'a',['cat'],2],[[[3]],'dog'],4,5]))