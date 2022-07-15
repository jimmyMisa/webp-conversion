var fs = require("fs");
var sharp = require("sharp");


var folder = "/var/www/application"
var filenames = fs.readdirSync(folder);

var files = []
filenames.forEach((file) => {
	files.push(file)
});

files.map((file) =>{
	var rpath = `${folder}/${file}`

	sharp(rpath)
		.webp()
		.toFile(`${rpath}.webp`)
		.then(function (info) {
			console.log(info);
		})
		.catch(function (err) {
			console.log(err);
		});
})


