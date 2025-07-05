import cv2
import numpy as np
from IIml.IImlVisitor import load_iiml

# Load image
i = cv2.imread("images/sample03.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0

# Generate an image with the secundary language
k = load_iiml(input("Path: "))

# sample morphological operation example
# applying by this order removes slat pepper noise
r = cv2.morphologyEx((cv2.morphologyEx((i * 255).astype(np.uint8), cv2.MORPH_OPEN, k)), cv2.MORPH_CLOSE, k)

# Save image
cv2.imwrite("images/test.pgm", (r * 255).astype(np.uint8))