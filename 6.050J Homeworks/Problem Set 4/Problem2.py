from math import log2
import heapq
my_string = "peter piper picked a peck of pickled peppers"

ans1 = 4 * len(my_string)
print(f'a. {ans1} bits are needed by using fixed length code.')


print('\nb.')
dic = {}
elist = []
sum = 0

for i in my_string:
    if not i in dic:
        dic[i] = 0
    dic[i] += 1

for key, value in dic.items():
    P = float(value) / len(my_string)
    entropy = P * log2(1 / P)
    newdict = {key: ''}
    elist.append((P, int(-ord(key) + ord('a')), newdict))
    print(f'{key}: P = {P} entropy = {entropy}')
    sum += entropy

aver = sum / len(dic)
print(f'\nc. Average entropy = {aver}')

elist.sort(key=lambda x: x[0])
heapq.heapify(elist)

while len(elist) > 1:
    a = heapq.heappop(elist)
    b = heapq.heappop(elist)
    # print(f'{a[2].keys()} {b[2].keys()} {a[0]} {b[0]}')
    newdict = {}
    for key in a[2].keys():
        newdict[key] = '0' + a[2][key]
    for key in b[2].keys():
        newdict[key] = '1' + b[2][key]
    heapq.heappush(elist, (a[0] + b[0], a[1], newdict))

code_dict = {}
print('\nd. Haffman code:')
for key, value in sorted(elist.pop()[2].items(), key=lambda x: len(x[1])):
    print(f'{key}: {value}')
    code_dict[key] = value

code_sum = 0
for c in my_string:
    code_sum += len(code_dict[c])
print(f'\ne.')
print(f'i. {code_sum} bits are needed.')
print(f'ii. Huffman code use fewer bits is {code_sum < ans1}.')
print(f'iii. average usage is {len(my_string) / code_sum} bits per character.')