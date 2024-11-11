import cv2
import sys
import os

def detect_and_save_ships(image_path):
    # Lade das Bild
    image = cv2.imread(image_path)
    if image is None:
        print("Bild konnte nicht geladen werden.")
        return

    # Konvertiere das Bild in Graustufen
    gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

    # Wende Schwellenwert an, um Konturen zu erkennen
    _, thresh = cv2.threshold(gray, 240, 255, cv2.THRESH_BINARY_INV)

    # Finde Konturen
    contours, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

    # Speichere jedes erkannte Schiff als separates Bild
    for i, contour in enumerate(contours):
        x, y, w, h = cv2.boundingRect(contour)
        ship_image = image[y:y+h, x:x+w]
        
        # Speicherpfad für das einzelne Schiff
        ship_filename = f"ship_{i+1}.png"
        cv2.imwrite(ship_filename, ship_image)
        print(f"Schiff {i+1} gespeichert als {ship_filename}")

    print("Alle erkannten Schiffe wurden als separate Bilder gespeichert.")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Verwendung: detect_ships.py <image_path>")
        sys.exit(1)

    image_path = sys.argv[1]
    detect_and_save_ships(image_path)