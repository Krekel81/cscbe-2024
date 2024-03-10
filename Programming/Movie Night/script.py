from PIL import Image
from pyzbar.pyzbar import decode

def extract_qr_codes(gif_path, output_file):
    with Image.open(gif_path) as img:
        img.seek(0)
        frame_index = 0
        while True:
            try:
                img.seek(frame_index)
                qr_codes = decode(img)
                if qr_codes:
                    with open(output_file, "a") as f:
                        for qr_code in qr_codes:
                            f.write(f"{qr_code.data.decode('utf-8')}")
                frame_index += 1
            except EOFError:
                break

gif_path = "Movie.gif"
output_file = "qr_codes.txt"

# Clear the content of output file if it exists
open(output_file, 'w').close()

extract_qr_codes(gif_path, output_file)
