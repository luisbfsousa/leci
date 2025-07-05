import cv2
import numpy as np

def secundary_language():
    # read image size from input
    l = int(input("Size: "))

    # create a new image
    image = np.full((l, l), 0, dtype=np.uint8)
    # image = np.full((l, l), 1, dtype=np.float32)

    # read circle radius from input
    r = int(input("Radius: "))

    # place a circle in the image
    cv2.circle(image, (l // 2, l // 2), r, 1, -1)
    # cv2.circle(image, (l // 2, l // 2), r, 0, -1)

    return image
    return (image * 255).astype(np.uint8)