import numpy as np

n, m, p = 3, 3, 3

a = np.array([(i+1) for i in range(n * p)])
a = a.reshape((n, p))
b = np.array([(i+1) for i in range(p * m)])
b = b.reshape((p, m))
c = a @ b
r = np.sum(c, axis=None)
print(r)
