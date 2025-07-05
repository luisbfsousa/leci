import cv2
import numpy as np

# Load image
i = cv2.imread("/home/michael/Pictures/comp2425-iml-c3/examples-python/images/enhanced.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0

# List of fade percentages
percentages = [1.0, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1]

# Apply fading and save each version
for p in percentages:
    r = np.clip(i * p, 0, 1)
    filename = f"images/fade_{int(p * 100)}.pgm"
    cv2.imwrite(filename, (r * 255).astype(np.uint8))