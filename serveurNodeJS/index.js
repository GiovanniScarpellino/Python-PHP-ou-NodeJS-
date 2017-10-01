var net = require('net');

var lireJSON = require("read-json");
var ecrireJSON = require("write-json-file");

var port_tcp = 3000;

net.createServer( function(socket){

	console.log('Client connected !');

	socket.on("data", function (data) {
		var boueesExistante = [];
		var nouvelleBouee = data.toString().split("|");
		
		lireJSON("bouees.json", function (error, donnees) {
			boueesExistante = donnees.boueesExistante;
			for (var i = 0; i < boueesExistante.length; i++) {
				if (boueesExistante[i].idBouee === nouvelleBouee[0]) {
					boueesExistante[i].latitude = nouvelleBouee[1];
					boueesExistante[i].longitude = nouvelleBouee[2];
					boueesExistante[i].temperatureEau = nouvelleBouee[3];
					boueesExistante[i].temperatureAir = nouvelleBouee[4];
					boueesExistante[i].salinite = nouvelleBouee[5];
					boueesExistante[i].vitesseVent = nouvelleBouee[6];
					boueesExistante[i].dimension = nouvelleBouee[7]; 
					boueesExistante[i].pressionAtmospherique = nouvelleBouee[8];
					break;
				}
			}
			ecrireJSON("bouees.json", {boueesExistante});
		});
	});

}).listen(port_tcp);

console.log('Serveur écoute sur le port ' + port_tcp);