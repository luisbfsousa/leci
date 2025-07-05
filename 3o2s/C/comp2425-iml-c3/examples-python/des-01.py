import cv2
import numpy as np

# --- Load images ---
i = cv2.imread("images/sample00.pgm", cv2.IMREAD_UNCHANGED)
k = cv2.imread("images/kernel00.pgm", cv2.IMREAD_UNCHANGED)

# Convert kernel to binary (just in case it's not)
_, k_bin = cv2.threshold(k, 127, 1, cv2.THRESH_BINARY)

# Ensure image is 8-bit
i_uint8 = (i * 255).astype(np.uint8) if i.dtype != np.uint8 else i

# --- Apply morphological operations: open then close ---
r_open = cv2.morphologyEx(i_uint8, cv2.MORPH_OPEN, k_bin)
r = cv2.morphologyEx(r_open, cv2.MORPH_CLOSE, k_bin)

# --- Boolean check: any pixel > 0 ---
if np.any(r > 0):
    print("Image contains at least one object.")
else:
    print("Image does not contains any object.")

# --- Draw result ---
cv2.imshow("Result Image", r)
cv2.waitKey(0)
cv2.destroyAllWindows()

# --- Store result ---
cv2.imwrite("images/test_result.pgm", r)
