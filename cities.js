var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

function findCity (data){
  for (var prop in data) {
       console.log(prop + " has " +data[prop].length.toString()+ " cities");
     }
}

findCity(majorCities);
