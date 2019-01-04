import sys
import subprocess

if len(sys.argv) < 2:
	print("Missing argument\nremindme [time] [instruction]")
elif str(sys.argv[1]) == "update":
	subprocess.call("touch /home/westornd/.config/remind/remind.swap", shell=True)
	with open('/home/westornd/.config/remind/remind','r+') as f:
		with open('/home/westornd/.config/remind/remind.swap','r+') as fswap:
			for line in f:
				data =line.split(" ",1)
				if int(data[0]) - 1 == 0:
					subprocess.Popen("i3-nagbar -t warning -m \""+data[1].split("\n")[0] + "\"", shell=True, stdout=subprocess.PIPE)
				else:
					fswap.write(str(int(data[0]) - 1) + " " + data[1])
		fswap.closed
	f.closed
	subprocess.call("rm /home/westornd/.config/remind/remind", shell=True)
	subprocess.call("mv /home/westornd/.config/remind/remind.swap /home/westornd/.config/remind/remind", shell=True)
elif len(sys.argv) < 3:
	print("Missing argument\nremindme [time] [instruction]")
else:
	with open('/home/westornd/.config/remind/remind','r+') as f:
		if int(sys.argv[1]) > 0:
			for i in range(len(sys.argv)-1):
				f.seek(0, 2)
				f.write(sys.argv[i+1] +' ')
			f.write('\n')
		else:
			print("Not the good one")
	f.closed
