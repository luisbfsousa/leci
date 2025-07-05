import cv2
import numpy as np

# Load image
i = cv2.imread("images/sample00.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0

# Output metadata
print("Image Metadata:")
print(f"Shape: {i.shape}")
print(f"Pixel range: [{i.min():.2f}, {i.max():.2f}]")

# Plot image
cv2.imshow("Image Display", i)
cv2.waitKey(0)
cv2.destroyAllWindows()

# Save image
cv2.imwrite("images/test_copy_sample00.pgm", (i * 255).astype(np.uint8))