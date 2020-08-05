import math
n=int(input())
x=[int(i) for i in input().split(' ')]
#mean
mean=0
for i in range(n):
    mean+=x[i]
mean/=n
var=0
for i in range(n):
    var+=pow((x[i]-mean),2)
var/=n
sd=0
sd=math.sqrt(var)
print(round(sd,1))
