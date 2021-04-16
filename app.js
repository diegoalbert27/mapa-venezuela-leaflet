$(document).ready(function () {
  $.get("estados.php")
    .done((res) => {
      let estados = JSON.parse(res);
      estados.forEach((datos) => {
        let marker = L.marker([datos.latitud, datos.longitud], {
          icon: new L.DivIcon({
            className: "my-div-icon",
            html: `
              <span class="my-div-span">${datos.estadis}</span>
            `,
          }),
        }).addTo(map);
      });
    })
    .fail((err) => console.error("Error de peticion" + err));

  var map = L.map("mymap");
  map.createPane("labels");
  map.getPane("labels").style.zIndex = 650;
  map.getPane("labels").style.pointerEvents = "none";

  var positron = L.tileLayer(
    "https://{s}.basemaps.cartocdn.com/light_nolabels/{z}/{x}/{y}.png",
    {
      attribution: "©OpenStreetMap, ©CartoDB",
    }
  ).addTo(map);

  var positronLabels = L.tileLayer(
    "https://{s}.basemaps.cartocdn.com/light_only_labels/{z}/{x}/{y}.png",
    {
      attribution: "©OpenStreetMap, ©CartoDB",
      pane: "labels",
    }
  ).addTo(map);

  var geojson = L.geoJson(euCountries).addTo(map);

  map.fitBounds(geojson.getBounds());
  map.setView({ lat: 6.42375, lng: -66.58973 }, 6);
});
