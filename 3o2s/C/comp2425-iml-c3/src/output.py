import cv2
import imageio
import numpy as np
from IIml.IImlVisitor import load_iiml

def morphologyfunction(i, k, operation):
    if isinstance(i, list):
        i = np.array(i, dtype=np.uint8)
    elif isinstance(k, list):
        k = np.array(k, dtype=np.uint8)
    elif i.dtype != np.uint8:
        i = (i * 255).astype(np.uint8)
    elif k.dtype != np.uint8:
        k = (k * 255).astype(np.uint8)

    if operation == "erode":
        return cv2.erode(i, k, iterations=1)
    elif operation == "dilate":
        return cv2.dilate(i, k, iterations=1)
    else:
        return cv2.morphologyEx(i, operation, k)

def flipfuntion(i, flip_code):
    if i.dtype != np.uint8:
        i = (i * 255).astype(np.uint8)
    return cv2.flip(i, flip_code)

def save_image(i, filename):
    if filename.lower().endswith('.gif'):
        # Verifica se é uma lista de imagens
        if isinstance(i, list):
            frames = []
            for img in i:
                if img.dtype != np.uint8:
                    img = (img * 255).clip(0, 255).astype(np.uint8)
                frames.append(img)
            imageio.mimsave(filename, frames, duration=0.2)
            return True
        else:
            raise TypeError("Para salvar como .gif, 'i' deve ser uma lista de imagens.")
    else:
        # Guardar imagem única
        if i.dtype != np.uint8:
            return cv2.imwrite(filename, (i * 255).clip(0, 255).astype(np.uint8))
        else:
            return cv2.imwrite(filename, i)

def showimage(i, title):
    if i.dtype != np.uint8:
        cv2.imshow(title, (i * 255).astype(np.uint8))
    else:
        cv2.imshow(title, i)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

def main():
    i = cv2.imread("images/sample00.pgm", cv2.IMREAD_GRAYSCALE).astype(np.float32) / 255.0

    # Output metadata
    print("Image Metadata:")
    print(f"Shape: {i.shape}")
    print(f"Pixel range: [{i.min():.2f}, {i.max():.2f}]")

    showimage(i, "Image Display")

    save_image(i, "images/copy_sample00.pgm")


if __name__ == "__main__":
    main()
