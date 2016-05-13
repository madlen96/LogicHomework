import sys

counter = 0
for i in sys.argv[1:]:
    if (i == "--info"):
        print("Example: \n python program.py arg1 arg2 arg3 arg4 arg5 arg6")
        sys.exit()   
    counter += 1
if counter < 6:
    print(" Too few arguments. \n' --info 'to get more information")
    sys.exit()
elif counter > 6:
    print(" Too much arguments. \n' --info ' to get more information")
    sys.exit()
arg = [ int(x) for x in sys.argv[1:] ]
if (arg[0] < 20 and
    arg[1] > 10 and
    arg[2] % 2 == 0 and
    arg[3] % 5 == 0 and
    arg[4] % arg[5] == 0 and
    arg[5] > 0):
    print("1")    
else:
    print("0")
