n=int(input())
x=[int(i) for i in input().split(' ')]
w=[int(i) for i in input().split(' ')]

w_sum=0
for i in range(n):
    w_sum+=w[i]

xw=0
for i in range(n):
    xw+=(x[i]*w[i])

mean=xw/w_sum
print(round(mean,1))
