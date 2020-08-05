def median(arr):
    l=len(arr)
    if(l%2!=0):
        return arr[l//2]
    else:
        return (arr[(l//2)-1]+arr[l//2])//2

n=int(input())
x=[int(i) for i in input().split(' ')]
x.sort()
#Q2
Q2=median(x)
#Q1 
Q1=median(x[:n//2])
#Q3
if(n%2!=0):
    Q3=median(x[((n//2)+1):n])
else:
    Q3=median(x[n//2:n])
print(Q1)
print(Q2)
print(Q3)
