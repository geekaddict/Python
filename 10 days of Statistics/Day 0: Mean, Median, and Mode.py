#64630 11735 14216 99233 14470 4978 73429 38120 51135 67060



n = int(input())
a=[int(i) for i in input().split(' ')]
freq={}
mean=0
for i in range(n):
    mean+=a[i]
mean/=n


median=0
a.sort()
if(n%2==0):
    print(int((n/2)-1) , ':' , a[int((n/2)-1)])
    print(int(n/2) , ':' , a[int(n/2)])
    median=(a[int((n/2)-1)]+a[int(n/2)])/2
else:
    median=a[(int(n/2))]


for i in range(n):
    if a[i] in freq.keys():
        freq[a[i]]+=1
    else:
        freq[a[i]]=1

mode=min(freq.keys())
max=freq[mode]
for i in freq:
    if freq[i]>max:
        max=freq[i]
        mode=i
print('mean :', round(mean,1))
print('median :', round(median,1))
print('mode:', mode)
