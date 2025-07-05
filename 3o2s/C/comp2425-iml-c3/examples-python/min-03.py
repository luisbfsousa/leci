import cv2
import numpy as np

def morphologyfunction(i, k, operation):
    if i.dtype != np.uint8:
        i = (i * 255).astype(np.uint8)
    if k.dtype != np.uint8:
        k = (k * 255).astype(np.uint8)
    return cv2.morphologyEx(i, operation, k)

i = cv2.imread("images/sample03.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0

k = cv2.imread("images/kernel00.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0

# Apply opening then closing
r = morphologyfunction(morphologyfunction(i, k, cv2.MORPH_OPEN), k, cv2.MORPH_CLOSE)

cv2.imwrite("images/test.pgm", (r * 255).astype(np.uint8))
