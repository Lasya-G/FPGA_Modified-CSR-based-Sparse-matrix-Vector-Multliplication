import numpy as np

with open("matrix_hex.txt") as a:
    a1 = a.readlines()

with open("vector_hex.txt") as x:
    x1 = x.readlines()

f1 = open("matrix_value.txt", "w")
f2 = open("vector_value.txt", "w")
f3 = open("finishflag.txt", "w")

matrix_value, vector_value = [], []
finishflag = 0

x1 = np.array(x1)
a1 = np.array(a1)

for i in range(len(a1)):
    if i != len(a1) - 1:
        a1[i] = a1[i][:-1]

n = len(x1)
m = len(a1) // n
arr_a = a1.reshape(m, n)

scheduled = 0
k = 0

while np.any(arr_a):
    for i in range(m):
        for j in range(n):
            if arr_a[i, j] != 0 and scheduled < m:
                scheduled += 1
                matrix_value.append(arr_a[i, j])
                f1.write(str(arr_a[i,j]))
                f1.write("\n")
                vector_value.append(x1[i])
                f2.write(str(x1[i]))
                f2.write("\n")
                if scheduled == m:
                    finishflag = 1
                    f3.write(str(finishflag))
                    f3.write("\n")
                else:
                    finishflag = 0
                    f3.write(str(finishflag))
                    f3.write("\n")
                arr_a[i, j] = 0

    k += 1

# matrix_value = np.array(matrix_value).reshape(m, k)
# vector_value = np.array(vector_value).reshape(m, k)

# np.savetxt(f1, matrix_value)
# np.savetxt(f2, vector_value)
# f3.write(str(finishflag))
#
# f1.close()
# f2.close()
# f3.close()
