def median(arr):
    l=len(arr)
    mid=l//2
    if (l%2!=0):
        return arr[mid]
    else:
        return ((arr[mid-1]+arr[mid])/2)

n=int(input())
x=[int(i) for i in input().split(' ')]
f=[int(i) for i in input().split(' ')]
s=[]
for i in range(n):
    s += [x[i]] * f[i]
l=len(s)
s.sort()
Q1=median(s[:l//2])
Q2=median(s)
if(l%2!=0):
    Q3=median(s[((l//2)+1):])
else:
    Q3=median(s[(l//2):])
print(round(float(Q3-Q1),1))

