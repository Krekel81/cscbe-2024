letters = "abcdefghijklmnopqrstuvwxyz"
letters_upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
numbers = "0123456789"


def main():
    # E = S
    # K = C
    text = "CEK{KWGF4HMLG4YMDLRCHRFWUVXMAUGUCE1EVYXGCJR4F}"
    text = text.replace("E", "S")
    text = text.replace("K", "C")
    print(text)

main()