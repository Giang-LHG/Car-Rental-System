
function fillAccountRenter(){
		let username = document.getElementById('loginEmail');
		username.value = "vietthu002@gmail.com";
		let password = document.getElementById('loginPassword');
		password.value = "Phanminhcuong2k3@";
}
function fillAccountOwner(){
		let username = document.getElementById('loginEmail');
		username.value = "mineluciferlol@gmail.com";
		let password = document.getElementById('loginPassword');
		password.value = "1";
}

function check() {
    let check = document.getElementById("agree");
    console.log(check)
    if (check.checked === false) {
        console.log('sdsds');
        document.getElementById("notif").innerHTML = 'Please agree with Terms and Conditions to continue !';
        return false;
    }
    return true;

}