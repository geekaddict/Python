def is_part_of_series(lst):
    series=[0,1]
    maximum=max(lst)
    n=2
    while( ((3*series[n-1])-(2*series[n-2])) <= maximum ):
        series.append( (3*series[n-1])-(2*series[n-2]) )
        n+=1
    for i in lst:
        if i not in series:
            return False
    return True

lst=[127, 255, 511, 1023]
print(is_part_of_series(lst))