import json
import struct
from struct import pack
from math import sin, pi
import wave
import sys

def opensample(sample):

		stream = wave.open("samples/"+str(sample),"rb")
		sample_rate = stream.getframerate()
		frames = stream.getnframes()
		raw_data = stream.readframes(frames)
		stream.close()
	
		data = struct.unpack("%dh" % frames, raw_data)
			
		return data, sample_rate, frames

def savesample(fich, nome):
	
	stream = wave.open(fich,"rb")
	sample_rate = stream.getframerate()
	frames = stream.getnframes()
	raw_data = stream.readframes(frames)
	stream.close()
	
	data = struct.unpack("%dh" % frames, raw_data)
	
	wvData = b""
	for v in data:
		wvData += pack("h", int(v))
	
	stream = wave.open("samples/"+str(nome), "w")
	stream.setnchannels(1)
	stream.setsampwidth(2)
	stream.setframerate(44100)
	stream.setnframes(len(wvData))
	stream.writeframes(bytearray(wvData))
	stream.close()
	

def applyeffects(ogdata,effect,fator, sample_rate, frames):
	
	data = ogdata
	
	if effect == "normalize":
		data = normalize(data)
	elif effect == "volume":
		data = volume(data, fator)
	elif effect == "fadein":
		data = fadein(data, frames)
	elif effect == "fadeout":
		data = fadeout(data, frames)
	elif effect == "modulation":
		data = modulation(data, sample_rate)
	else:
		output = []
		for index,value in enumerate(data):
			output.append(value)
		data = output
	
	return data

def makemusic(pauta, nome, fator):
	music = []
	for i in range(0,16):
		sample = tupletolist(opensample("none.wav"))
		for s in pauta["music"][i]:
			ogdata, rate, frames = opensample(pauta["samples"][int(s)])
			data = applyeffects(ogdata, pauta["effects"][str(s)],fator[int(s)],rate,frames)
			sample = joinsamples(sample, data)
		
		for v in sample:	
			music.append(v)
	
	wvData = b""
	for v in music:
		wvData += pack("i", int(v))
	
	stream = wave.open("music/"+str(nome)+".wav", "wb")
	stream.setnchannels(1)
	stream.setsampwidth(2)
	stream.setframerate(44100)
	stream.setnframes(len(wvData))
	stream.writeframes(bytearray(wvData))
	stream.close()
	return
	


def joinsamples(sample1, sample2):
	output = []
	
	if len (sample1) >= len(sample2):
		for i in range(0, len(sample2)-1):
			output.append(sample1[i] + sample2[i])
		output += sample1[len(sample2):]
	else:
		for i in range(0, len(sample1)-1):
			output.append(sample1[i] + sample2[i])
		output += sample2[len(sample1):]
		
	return output
	

def tupletolist(data):
	output = []
	for index,value in enumerate(data[0]):
		output.append(value)
	return output
		

def normalize(data):
	max = 0
	fator = 1
	for index,value in enumerate(data):
		if value > max or value < (-1 * max):
			max = value
	
	output = []
	
	if max < 0:
		fator = -32768/max
	elif max > 0:
		fator = 32767/max

	for index,value in enumerate(data):
		output.append(value * fator)
	
	return output

def volume(data,fator):
	output = []
	for index,value in enumerate(data):
		output.append(value * fator)
	
	return output
	
def fadein(data, frames):
	output = []
	step = 1.0/frames
	for index,value in enumerate(data):
		output.append(value * index * step)
	
	return output

def fadeout(data, frames):
	output = []
	step = 1.0/frames
	for index,value in enumerate(data):
		output.append(value * (frames - index) * step)
	
	return output

def modulation(data, rate):
	output = []
	for index,value in enumerate(data):
		output.append(value * sin(2*pi*440*index/rate))
		
	return output
