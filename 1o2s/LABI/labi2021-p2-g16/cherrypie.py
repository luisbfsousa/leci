import cherrypy
import os.path
import json
import sqlite3 as sql
import musicmaker
import basededados

cherrypy.config.update({'server.socket_port': 10016,})

baseDir = os.path.dirname(os.path.abspath(__file__))

config = {
  "/":     { "tools.staticdir.root": baseDir },
  "/js":   { "tools.staticdir.on": True,
             "tools.staticdir.dir": "js" },
  "/css":  { "tools.staticdir.on": True,
             "tools.staticdir.dir": "css" },
  "/html": { "tools.staticdir.on": True,
             "tools.staticdir.dir": "html" },
  "/img":  { "tools.staticdir.on": True,
			 "tools.staticdir.dir": "img"  },
  "/music":  { "tools.staticdir.on": True,
			 "tools.staticdir.dir": "music"  },
  "/samples":  { "tools.staticdir.on": True,
			 "tools.staticdir.dir": "samples"  }
}


class Root(object):
	@cherrypy.expose
	def index(self):
		path = "html/index.html"
		return (open(path, "rb").read())
	
	@cherrypy.expose
	def samples(self):
		
		db = sql.connect("database.db")
		
		samplelist = db.execute("SELECT * FROM samples")
			
		html = """<html>
			<head>
			<title>Samples list</title>
			<link rel="stylesheet" type="text/css" href="css/lists.css">
			<link rel="stylesheet" type="text/css" href="css/main.css">
			<link rel="stylesheet" type="text/css" href="css/color-blind.css">
			</head>
			<body style="background-image:none;">
			<h2>Samples</h2>
			<table>
			<tr><td> Data de criação </td><td> Nome </td><td> Id </td><td> Duração(s) </td></tr>"""
			
		for row in samplelist:
			html = html + """<tr><td>""" + str(row[0]) + """</td><td>""" + str(row[1]) + """</td><td>""" + str(row[2]) + """</td><td>""" + str(row[3]) + """</td>
				<td>  <audio controls><source src='""" + row[4] + """' type="audio/wav"></audio> </td></tr>"""
			
		html = html + """</table>
			</body>
			</html>
			"""
			
		db.close();
			
		return html
	
	
	@cherrypy.expose
	def criar(self):
		path = "html/criar.html"
		return (open(path, "rb").read())
	
	@cherrypy.expose
	def biblioteca(self, type=None):
		
		db = sql.connect("database.db")
			
		songlist = db.execute("SELECT * FROM songs")
			
		html = """<html>
			<head>
			<title>Song list</title>
			<link rel="stylesheet" type="text/css" href="css/lists.css">
			<link rel="stylesheet" type="text/css" href="css/main.css">
			<link rel="stylesheet" type="text/css" href="css/color-blind.css">
			</head>
			<body style="background-image:none;">
			<h2>Songs</h2>
			<table>
			<tr><td> Data de criação </td><td> Nome </td><td> Id </td><td> Duração(s) </td><td> Votos </td></tr>"""
			
		for row in songlist:
			html = html + """<tr><td>""" + str(row[0]) + """</td><td>""" + str(row[1]) + """</td><td>""" + str(row[2]) + """</td><td>""" + str(row[3]) + """</td>
				<td>""" + str(row[4]) + """</td><td> <form action="/vote"> <input type="hidden" name="points" value="1"> <input type="hidden" name="id" value='"""+ str(row[2]) +"""'> <input type="submit" value="Like" class="likebuttons"></form> </td>
				<td> <form action="/vote"> <input type="hidden" name="points" value="-1"> <input type="hidden" name="id" value='"""+ str(row[2]) +"""'> <input type="submit" value="Dislike" class="likebuttons"></form>
				</td><td>  <audio controls><source src='""" + row[5] + """' type="audio/wav"></audio> </td></tr>"""
			
		html = html + """</table>
			<form action="/get">
			<br>
			<input type="text" name="id" value="id">
			<input type="submit" value="Pesquisa">
			</form>
			</html>
			"""
			
		db.close()
			
		return html
	
	@cherrypy.expose
	def vote(self, id="0", points=0):
		
		basededados.votesong(id,points)
		
		db = sql.connect("database.db")
			
		songlist = db.execute("SELECT * FROM songs")
			
		html = """<html>
			<head>
			<title>Song list</title>
			<link rel="stylesheet" type="text/css" href="css/lists.css">
			<link rel="stylesheet" type="text/css" href="css/main.css">
			<link rel="stylesheet" type="text/css" href="css/color-blind.css">
			</head>
			<body style="background-image:none;">
			<h2>Songs</h2>
			<table>
			<tr><td> Data de criação </td><td> Nome </td><td> Id </td><td> Duração(s) </td><td> Votos </td></tr>"""
			
		for row in songlist:
			html = html + """<tr><td>""" + str(row[0]) + """</td><td>""" + str(row[1]) + """</td><td>""" + str(row[2]) + """</td><td>""" + str(row[3]) + """</td>
				<td>""" + str(row[4]) + """</td><td> <form action="/vote"> <input type="hidden" name="points" value="1"> <input type="hidden" name="id" value='"""+ str(row[2]) +"""'> <input type="submit" value="Like" class="likebuttons"></form> </td>
				<td> <form action="/vote"> <input type="hidden" name="points" value="-1"> <input type="hidden" name="id" value='"""+ str(row[2]) +"""'> <input type="submit" value="Dislike" class="likebuttons"></form>
				</td><td>  <audio controls><source src='""" + row[5] + """' type="audio/wav"></audio> </td></tr>"""
			
		html = html + """</table>
			<form action="/get">
			<br>
			<input type="text" name="id" value="id">
			<input type="submit" value="Pesquisa">
			</form>
			</html>
			"""
			
		db.close()
			
		return html
	
	@cherrypy.expose
	def get(self, id):
		
		db = sql.connect("database.db")
			
		songlist = db.execute("SELECT * FROM songs WHERE Id = ?", (id,))
		samplelist = db.execute("SELECT * FROM samples WHERE Id = ?", (id,))
			
		html = """<html>
			<head>
			<title>Pesquisa por Id</title>
			<link rel="stylesheet" type="text/css" href="css/lists.css">
			<link rel="stylesheet" type="text/css" href="css/main.css">
			<link rel="stylesheet" type="text/css" href="css/color-blind.css">
			</head>
			<body style="background-image:none;">
			<h2>Resultados</h2>
			<table>
			<tr><td> Data de criação </td><td> Nome </td><td> Id </td><td> Duração(s) </td><td> Votos </td></tr>"""
			
		for row in songlist:
			html = html + """<tr><td>""" + str(row[0]) + """</td><td>""" + str(row[1]) + """</td><td>""" + str(row[2]) + """</td><td>""" + str(row[3]) + """</td>
				<td>""" + str(row[4]) + """</td><td>  <audio controls><source src='""" + row[5] + """' type="audio/wav"></audio> </td><td><a href='""" + row[5] + """' download>Download</a></td></tr>"""
			
		html = html + """</table>
			<form action="/get">
			<br>
			<input type="text" name="id" value="id">
			<input type="submit" value="Pesquisa">
			</form>
			</body>
			</html>
			"""
			
		db.close()
			
		return html
	
	@cherrypy.expose
	def list(self, type=None):
		db = sql.connect("database.db")
		l = []
		
		if type == "songs":
			
			songlist = db.execute("SELECT * FROM songs")
			
			for row in songlist:
				l.append(json.dumps({"name": str(row[1]), "id": str(row[2]), "length": str(row[3]), "date": str(row[0]), "votes": str(row[4])}))
			
			return l
		elif type == "samples":
			
			samplelist = db.execute("SELECT * FROM samples")
			
			for row in samplelist:
				l.append(json.dumps({"name": str(row[1]), "id": str(row[2]), "length": str(row[3]), "date": str(row[0])}))
			
			return l
		else:
			return l
	
	@cherrypy.expose
	def put(self, s0, s1, s2, s3, s4, s5, s6, s7, e0, e1, e2, e3, e4, e5, e6, e7, vol0, vol1, vol2, vol3, vol4, vol5, vol6, vol7, name='untitled',
	 c0000='off', c0001='off', c0002='off', c0003='off', c0004='off', c0005='off', c0006='off', c0007='off', c0008='off', c0009='off', c0010='off', c0011='off', c0012='off', c0013='off', c0014='off', c0015='off',
	 c0100='off', c0101='off', c0102='off', c0103='off', c0104='off', c0105='off', c0106='off', c0107='off', c0108='off', c0109='off', c0110='off', c0111='off', c0112='off', c0113='off', c0114='off', c0115='off',
	 c0200='off', c0201='off', c0202='off', c0203='off', c0204='off', c0205='off', c0206='off', c0207='off', c0208='off', c0209='off', c0210='off', c0211='off', c0212='off', c0213='off', c0214='off', c0215='off',
	 c0300='off', c0301='off', c0302='off', c0303='off', c0304='off', c0305='off', c0306='off', c0307='off', c0308='off', c0309='off', c0310='off', c0311='off', c0312='off', c0313='off', c0314='off', c0315='off',
	 c0400='off', c0401='off', c0402='off', c0403='off', c0404='off', c0405='off', c0406='off', c0407='off', c0408='off', c0409='off', c0410='off', c0411='off', c0412='off', c0413='off', c0414='off', c0415='off',
	 c0500='off', c0501='off', c0502='off', c0503='off', c0504='off', c0505='off', c0506='off', c0507='off', c0508='off', c0509='off', c0510='off', c0511='off', c0512='off', c0513='off', c0514='off', c0515='off',
	 c0600='off', c0601='off', c0602='off', c0603='off', c0604='off', c0605='off', c0606='off', c0607='off', c0608='off', c0609='off', c0610='off', c0611='off', c0612='off', c0613='off', c0614='off', c0615='off',
	 c0700='off', c0701='off', c0702='off', c0703='off', c0704='off', c0705='off', c0706='off', c0707='off', c0708='off', c0709='off', c0710='off', c0711='off', c0712='off', c0713='off', c0714='off', c0715='off'):
		
		fator = [float(vol0)/10, float(vol1)/10, float(vol2)/10, float(vol3)/10, float(vol4)/10, float(vol5)/10, float(vol6)/10, float(vol7)/10]
		
		pauta = {}
		
		pauta["samples"] = [s0, s1, s2, s3, s4, s5, s6, s7]
		
		pauta["effects"] = {"0": e0, "1": e1, "2": e2, "3": e3, "4": e4, "5": e5, "6": e6, "7": e7}
		
		pauta["music"] = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]]
		
		sample0 = [c0000, c0001, c0002, c0003, c0004, c0005, c0006, c0007, c0008, c0009, c0010, c0011, c0012, c0013, c0014, c0015, 0]
		sample1 = [c0100, c0101, c0102, c0103, c0104, c0105, c0106, c0107, c0108, c0109, c0110, c0111, c0112, c0113, c0114, c0115, 1]
		sample2 = [c0200, c0201, c0202, c0203, c0204, c0205, c0206, c0207, c0208, c0209, c0210, c0211, c0212, c0213, c0214, c0215, 2]
		sample3 = [c0300, c0301, c0302, c0303, c0304, c0305, c0306, c0307, c0308, c0309, c0310, c0311, c0312, c0313, c0314, c0315, 3]
		sample4 = [c0400, c0401, c0402, c0403, c0404, c0405, c0406, c0407, c0408, c0409, c0410, c0411, c0412, c0413, c0414, c0415, 4]
		sample5 = [c0500, c0501, c0502, c0503, c0504, c0505, c0506, c0507, c0508, c0509, c0510, c0511, c0512, c0513, c0514, c0515, 5]
		sample6 = [c0600, c0601, c0602, c0603, c0604, c0605, c0606, c0607, c0608, c0609, c0610, c0611, c0612, c0613, c0614, c0615, 6]
		sample7 = [c0700, c0701, c0702, c0703, c0704, c0705, c0706, c0707, c0708, c0709, c0710, c0711, c0712, c0713, c0714, c0715, 7]
		
		for i in range(0,15):
			for sample in(sample0, sample1, sample2, sample3, sample4, sample5, sample6, sample7):
				if (sample[i] == "on"):
					pauta["music"][i].append(sample[16])
		
		musicmaker.makemusic(pauta, str(name), fator)
		
		basededados.newsong(str(name))
		
		return pauta

	
if __name__ == "__main__":	
	cherrypy.quickstart(Root(), "/", config)

