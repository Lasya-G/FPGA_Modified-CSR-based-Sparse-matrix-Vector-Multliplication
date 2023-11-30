import numpy as np
with open("matrix_hex.txt") as a:
    a1 = a.readlines()
with open("vector_hex.txt") as x:
    x1 =x.readlines()

f1 = open("col_index.txt", "w")
f2 = open("value.txt","w")
f3 = open("row_index.txt", "w")
x1 = np.array(x1)
a1 = np.array(a1)
for i in range(len(a1)):
    if(i != len(a1) - 1):
        a1[i] = a1[i][:-1]

# for i in range(len(x1)):
#     x1[i] = x1[i][:-1]
#print(len(a1))
#print(len(x1))
n = len(x1)
m = len(a1)//n
arr_a =a1.reshape(m, n)
#print(x1)
#print(arr_a)
col_index, value, row_index = [], [], []
#rid = np.array(rid)
#value = np.array(value)
#xd = np.array(xd)
nnz=0
row_index.append(nnz)
f3.write(str(nnz))
f3.write("\n")
for i in range(len(arr_a)):

    for j in range(len(arr_a[i])):
        if(arr_a[i][j] != '00000000'):
            col_index.append(j)
            f1.write(str(j))
            f1.write("\n")
            value.append(arr_a[i][j])
            f2.write(arr_a[i][j])
            f2.write("\n")
            nnz +=1
    row_index.append(nnz)
    f3.write(str(nnz))
    f3.write("\n")

print(col_index, end = "\n")
print(value, end = "\n")
print(row_index, end = "\n")


