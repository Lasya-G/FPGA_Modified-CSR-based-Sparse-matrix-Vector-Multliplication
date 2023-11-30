import numpy as np

with open("matrix_hex.txt") as a:
    a1 = a.readlines()
with open("vector_hex.txt") as x:
    x1 =x.readlines()

f1 = open("rid.txt", "w")
f2 = open("value.txt","w")
f3 = open("xd.txt", "w")

x1 = np.array(x1)
a1 = np.array(a1)

for i in range(len(a1)):
    if(i != len(a1) - 1):
        a1[i] = a1[i][:-1]


for i in range(len(x1)):
    x1[i] = x1[i][:-1]
#print(len(a1))
#print(len(x1))
n = len(x1)
m = len(a1)//n
arr_a =a1.reshape(m, n)
#print(x1)
#print(arr_a)

rid, value, xd = [], [], []


for i in range(m):
    for j in range(n):
        if (arr_a[i, j] != '00000000'):
            rid.append(i)
            f1.write(str(i))
            f1.write("\n")
            value.append(arr_a[i, j])
            f2.write(arr_a[i][j])
            f2.write("\n")
            xd.append(x1[j])
            f3.write(x1[j])
            f3.write("\n")



print(rid, end = "\n")
print(value, end = "\n")
print(xd, end = "\n")







