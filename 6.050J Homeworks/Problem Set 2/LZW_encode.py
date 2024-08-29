def main():
    s = list("peter piper picked a peck of pickled peppers.")
    dictionary = {chr(i) : i for i in range(256)}
    idx = 258
    now = ''
    with open('dictionary.txt', 'w') as f:
        with open('code.txt', 'w') as g:
            g.write("256\n")
            for i, c in enumerate(s):
                if now + c not in dictionary:
                    g.write(str(dictionary[now]) + '\n')
                    dictionary[now + c] = idx
                    f.write(f"{idx}:|{now+c}|\n")
                    idx += 1
                    now = ''
                else: g.write('-\n')
                now += c
                if i == len(s) - 1:
                    g.write(str(dictionary[now]) + '\n')
            g.write("257\n")
    
    print("ENCODED SUCCESSFULLY")

if __name__ == '__main__':
    main()