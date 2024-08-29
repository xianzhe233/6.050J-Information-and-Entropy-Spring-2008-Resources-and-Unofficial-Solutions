def main():
    plaintext = ''
    dictionary = {i: chr(i) for i in range(256)}
    idx = 258
    with open("code.txt", "r") as f, open("plaintext.txt", "w") as g:
        codes = iter(f.read().split())
        s = ''
        for code in iter(codes):
            if code == '257': break
            if code == '-': continue
            code = int(code)
            if code == 256:
                code = next(codes, None)
                while code == '-': code = next(codes, None)
                code = int(code)
                if code == 257:
                    break
                s = dictionary[code]
            elif code == 257:
                pass
            else:
                s = dictionary[code]
                dictionary[idx-1] += dictionary[ord(s[0])]
            dictionary[idx] = s
            idx += 1
            g.write(f"{s}")
            plaintext += s
    print(f"DECODED TEXT: \n{plaintext}")


if __name__ == '__main__':
    main()
