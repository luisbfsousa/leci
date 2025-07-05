import cv2
import numpy as np

# Load image
i0 = cv2.imread("images/sample00.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0
i1 = cv2.imread("images/sample01.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0

# Ajust horizontal scale
i0cols = i0.shape[1]
i1cols = i1.shape[1]
if i0cols != i1cols:
    i0 = cv2.resize(i0, None, fx=(i1cols / i0cols), fy=1.0, interpolation=cv2.INTER_LINEAR)

# Ajust vertical scale
i0rows = i0.shape[0]
i1rows = i1.shape[0]
if i0rows != i1rows:
    i0 = cv2.resize(i0, None, fx=1.0, fy=(i1rows / i0rows), interpolation=cv2.INTER_LINEAR)

# Blend images
r = np.clip(np.clip(i0 * 0.3, 0, 1) + np.clip(0.7 * i1, 0, 1), 0, 1)

# Save image
cv2.imwrite("images/test.pgm", (r * 255).astype(np.uint8))