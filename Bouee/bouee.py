import threading
import random
import urllib.request
import urllib.parse
import socket as s


class modeleBouee:
    def __init__(self, idBouee, dimension):
        self.idBouee = idBouee
        self.latitude = random.randint(-90, 90)
        self.longitude = random.randint(-180, 180)
        self.temperatureEau = random.randint(-50, 50)
        self.temperatureAir = random.randint(-50, 50)
        self.salinite = random.uniform(0, 1000)
        self.vitesseVent = random.uniform(0, 300)
        self.dimension = dimension
        self.pressionAtmospherique = random.uniform(0, 10000)

    def toString(self):
        return str(self.idBouee) + "|" + \
               str(self.latitude) + "|" + \
               str(self.longitude) + "|" + \
               str(self.temperatureEau) + "|" + \
               str(self.temperatureAir) + "|" + \
               str(self.salinite) + "|" + \
               str(self.vitesseVent) + "|" + \
               str(self.dimension) + "|" + \
               str(self.pressionAtmospherique)


def envoyerDonneesGET():
    bouee = modeleBouee(10, 5)
    url = "http://127.0.0.1/Bouee/index.php?idBouee=" + str(bouee.idBouee) + \
          "&latitude=" + str(bouee.latitude) + \
          "&longitude=" + str(bouee.longitude) + \
          "&temperatureEau=" + str(bouee.temperatureEau) + \
          "&temperatureAir=" + str(bouee.temperatureAir) + \
          "&salinite=" + str(bouee.salinite) + \
          "&vitesseVent=" + str(bouee.vitesseVent) + \
          "&dimension=" + str(bouee.dimension) + \
          "&pressionAtmospherique=" + str(bouee.pressionAtmospherique)
    req = urllib.request.Request(url)
    urllib.request.urlopen(req)
    threading.Timer(1.0, envoyerDonneesGET).start()


def envoyerDonneesSocket():
    socket = s.socket(s.AF_INET, s.SOCK_STREAM)

    bouee = modeleBouee(10, 5)

    socket.connect(("localhost", 3000))
    socket.sendall(bytes(bouee.toString(), "utf8"))
    socket.close()
    threading.Timer(1.0, envoyerDonneesSocket).start()
