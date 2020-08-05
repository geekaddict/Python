def merge_the_tools(string, k):
    # your code goes here
    length=len(string)/k
    t=[]
    i=0
    new=""
    for char in string:
        i+=1
        if char not in new:
            new+=char
        if i==k:
            t.append(new)
            new=""
            i=0
    print(t)
    

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)

"""

AABCAAADA
3

AB
CA
AD


"""
