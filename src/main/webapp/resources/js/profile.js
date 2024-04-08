const xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function () {
    if (this.readyState === 4 && this.status === 200) {
        // Typical action to be performed when the document is ready:
        var data = xhttp.response;
        data = JSON.parse(data);
        var citySel = document.getElementById("province"),
            districtSel = document.getElementById("district"),
            communeSel = document.getElementById("ward");
        for (let i = 0; i < data.province.length; i++) {
            const options = document.createElement("option");
            options.value = data.province[i].name;
            options.innerHTML = data.province[i].name;
            options.setAttribute("data-id", data.province[i].idProvince)
            citySel.append(options);
        }

        citySel.onchange = function () {
            districtSel.length = 1; // remove all options bar first
            communeSel.length = 1; // remove all options bar first
            if (this.selectedIndex < 1) return; // done
            var optionProvince = citySel.getElementsByTagName("option");
            var currentProvince;
            for (let i = 0; i < optionProvince.length; i++) {
                if (optionProvince[i].selected) {
                    currentProvince = optionProvince[i];
                    break;
                }
            }
            for (let j = 0; j < data.district.length; j++) {
                if (data.district[j].idProvince === currentProvince.dataset.id) {
                    const options = document.createElement("option");
                    options.value = data.district[j].name;
                    options.innerHTML = data.district[j].name;
                    options.setAttribute("data-id2", data.district[j].idDistrict);
                    districtSel.append(options)
                }
            }
        }

        districtSel.onchange = function () {
            communeSel.length = 1; // remove all options bar first
            if (this.selectedIndex < 1) return; // done
            var optionDistrict = districtSel.getElementsByTagName("option");
            var currentDistrict;
            for (let i = 0; i < optionDistrict.length; i++) {
                if (optionDistrict[i].selected) {
                    currentDistrict = optionDistrict[i];
                    break;
                }
            }
            for (let j = 0; j < data.commune.length; j++) {
                if (data.commune[j].idDistrict === currentDistrict.dataset.id2) {
                    const options = document.createElement("option");
                    options.value = data.commune[j].name;
                    options.innerHTML = data.commune[j].name;
                    options.setAttribute("data-id3", data.commune[j].idCommune);
                    communeSel.append(options)
                }
            }

        }
    }
};
xhttp.open("GET", "resources/db.json", true);
xhttp.send();

function resetVar() {
    var citySel = document.getElementById("province"),
        districtSel = document.getElementById("district"),
        communeSel = document.getElementById("ward");

    var optionDistrict = districtSel.getElementsByTagName("option");

    for (let i = 0; i < optionDistrict.length; i++) {
        console.log(optionDistrict[i].dataset.id2 != null);
        if (optionDistrict[i].dataset.id2 != null) {
            console.log(optionDistrict[i].dataset.id2 != null)
            optionDistrict[i].parentNode.removeChild(optionDistrict[i]);
        }
    }
    console.log(optionDistrict);

    for (let i = 0; i < optionDistrict.length; i++) {
        if (optionDistrict[i].dataset.id2 != null) {
            optionDistrict[i].remove();
        }
    }
}