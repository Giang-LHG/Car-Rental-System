function fillAccount() {
    let username = document.getElementById('loginEmail');
    username.innerText = "user1";
    let password = document.getElementById('loginPassword');
    password.innerText = "123456";
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