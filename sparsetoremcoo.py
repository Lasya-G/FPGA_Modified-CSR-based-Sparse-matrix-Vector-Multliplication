import numpy as np

def sparse_to_recoo(matrix_file, vector_file, rid_file, value_file, xd_file):
    # Read matrix and vector from files
    matrix_a = np.loadtxt(matrix_file).reshape((M, N))
    vector_x = np.loadtxt(vector_file)

    rid = []
    value = []
    xd = []

    # Convert sparse matrix to coordinate format
    for i in range(M):
        for j in range(N):
            if matrix_a[i, j] != 0:
                rid.append(i)
                value.append(int(matrix_a[i, j]))
                xd.append(int(vector_x[j]))

    # Write rid, value, and xd to files
    np.savetxt(rid_file, rid, fmt='%d')
    np.savetxt(value_file, value, fmt='%d')
    np.savetxt(xd_file, xd, fmt='%d')

if __name__ == "__main__":
    M = 5
    N = 5

    # Assuming matrix_hex.txt and vector_hex.txt are your input files
    matrix_file = "matrix_hex.txt"
    vector_file = "vector_hex.txt"
    rid_file = "rid.txt"
    value_file = "value.txt"
    xd_file = "xd.txt"

    sparse_to_recoo(matrix_file, vector_file, rid_file, value_file, xd_file)
