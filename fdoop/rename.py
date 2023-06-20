import os
filenames = os.listdir(os.curdir)
for f in filenames:
	if f == 'rename.py': continue
	if f[-3:] != 'cpp': continue
	os.rename(f, f[:-16]+'.cpp')

