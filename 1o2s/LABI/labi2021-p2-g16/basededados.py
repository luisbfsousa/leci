import os.path
import json
import sqlite3 as sql
import wave
import time
import hashlib

def newsong(name):
	stream = wave.open("music/"+str(name)+".wav","rb")
	rate = stream.getframerate()
	frames = stream.getnframes()
	duration = int(frames/rate)
	stream.close()
	
	t = time.localtime()
	
	datestr = str(t[0])+"-"+str(t[1])+"-"+str(t[2])+" "+str(t[3])+":"+str(t[4])+":"+str(t[5])
	
	h = hashlib.md5()
	h.update(datestr.encode('utf-8') )
	h.update(name.encode('utf-8') )
	songid = h.hexdigest()
	
	db = sql.connect("database.db")
	c = db.cursor()
	
	result = db.execute("SELECT * FROM songs WHERE Nome = ?", (str(name),))
	
	row = result.fetchone()
	
	if row is None:
	
		c.execute("INSERT INTO songs values(?, ?, ?, ?, 0, ?);", (datestr, name, songid, duration, "music/"+str(name)+".wav"))
	
	else:
	
		c.execute("UPDATE songs SET DataC = ? , Id = ? , Duracao = ? WHERE Nome = ?", (datestr, songid, duration, name))
	
	db.commit()
	
	db.close()
	
def newsample(name):
	stream = wave.open("samples/"+str(name),"rb")
	rate = stream.getframerate()
	frames = stream.getnframes()
	duration = int(frames/rate)
	stream.close()
	
	t = time.localtime()
	
	datestr = str(t[0])+"-"+str(t[1])+"-"+str(t[2])+" "+str(t[3])+":"+str(t[4])+":"+str(t[5])
	
	h = hashlib.md5()
	h.update(datestr.encode('utf-8') )
	h.update(name.encode('utf-8') )
	sampleid = h.hexdigest()
	
	print(datestr)
	print(sampleid)
	print(duration)
	
	db = sql.connect("database.db")
	c = db.cursor()
	
	c.execute("INSERT INTO samples VALUES(?, ?, ?, ?, ?)", (datestr, name, sampleid, duration, "samples/"+str(name)))
	
	db.commit()
	
	db.close()
	
def votesong(songid,points):
	
	db = sql.connect("database.db")
	c = db.cursor()
	
	p = db.execute("SELECT Votos FROM songs WHERE id = ?", (songid,))
	
	
	
	oldpoints = p.fetchone()[0]
	
	newpoints = oldpoints + int(points)
	
	c.execute("UPDATE songs SET Votos = ? WHERE id = ?", (newpoints, songid))
	
	db.commit()
	
	db.close()

