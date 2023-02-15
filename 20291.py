import sys # 시간 단축

N = int(sys.stdin.readline())

dict = {}
files = []
for i in range(N):
    file = sys.stdin.readline().strip().split(".")
    dict[file[1]] = 0
    files.append(file[1])

for i in files:
    dict[i] += 1

for i in sorted(list(set(files))):
    sys.stdout.write("{} {}{}".format(i, dict[i], "\n"))