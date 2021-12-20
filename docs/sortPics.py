#!/bin/python3
import os

fileext = ".png"

def searchPNG(curdir):
	global fileext
	for entry in os.listdir(curdir):
		print("Traversing '{}'...".format(os.path.join(curdir, entry)))
		if entry.endswith(fileext):
			print("  creating new screenshot storage structure...")
			dirname = os.path.join(curdir, entry.replace(fileext, ""))
			if not os.path.exists(dirname):
				os.mkdir(dirname)
			os.rename(os.path.join(curdir, entry), os.path.join(dirname, "out.png"))
		elif entry.endswith(".md"):
			print("  altering links...")
			mdfile = os.path.join(curdir, entry)
			
			sfile = open(mdfile, "r")
			filebuffer = sfile.read()
			sfile.close()
			
			filebuffer = filebuffer.replace(".png", "/out.png")
			
			sfile = open(mdfile, "w")
			sfile.write(filebuffer)
			sfile.close()
		elif os.path.isdir(os.path.join(curdir, entry)):
			print("  traversing it...")
			searchPNG(os.path.join(curdir, entry))

searchPNG("./")
