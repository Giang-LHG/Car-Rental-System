
$(document).ready(function(){
		$.ajax({
			method: 'GET',
			url: 'add-a-car?step=1',
			success: function(response){
				$('#form-container').html(response);
				submitForm1();
			}
		});
});
let formvalue = "";
function selectBrand(){
	$.ajax({
		method: 'GET',
		url: 'add-a-car?step=1',
		data:$('#form-add-car-1').serialize(),
		success: function(response){
			$('#form-container').html(response);
			submitForm1();
		}
	});
	
}
function submitForm1(){
	formvalue="";
	$('#form-add-car-1').submit(function(event){
		event.preventDefault();
		formvalue=formvalue+$('#form-add-car-1').serialize();
		$.ajax({
			method: 'GET',
			url: 'add-a-car?step=2',
			success: function(response){
				$('#form-container').html(response);
				currentActive(1);
				submitForm2();
			}
		});
	});
}

function submitForm2(){
	$('#form-add-car-2').submit(function(event){
		event.preventDefault();
		getCarImage();
		
		formvalue=formvalue+'&'+$('#form-add-car-2').serialize();
		$.ajax({
			method: 'GET',
			url: 'add-a-car?step=3',
			success: function(response){
				$('#form-container').html(response);
				currentActive(2);
				submitForm3();
			}
		});
	});
}

function submitForm3(){
	$('#form-add-car-3').submit(function(event){
		event.preventDefault();
		formvalue=formvalue+'&'+$('#form-add-car-3').serialize();
		$.ajax({
			method: 'GET',
			url: 'add-a-car?step=4',
			success: function(response){
				$('#form-container').html(response);
				currentActive(4);
				submitForm4();
			}
		});
	});
}

function submitForm4(){
	let value = new URLSearchParams(formvalue);
	$('#car-price').html(value.get("base-price"));
	$('#car-location').html(value.get("location1")+' '+value.get("location2")+' '+value.get("location3")+' '+value.get("detailLocation"));
	$('#btn-add-a-car').click(function(){
//		$.ajax({
//			method: 'POST',
//			url: 'add-a-car',
//			data:formvalue,
//			success: function(){
//				console.log('add successfully');
//			}
//		});
	    let xhr = new XMLHttpRequest();
	    xhr.open("POST" ,"add-a-car" ,true);
	    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
    	xhr.send(encodeURI(formvalue));
	    let xhr2 = new XMLHttpRequest();
		let value = new URLSearchParams(formvalue);
    	data.append('licensePlate',value.get('licensePlate'));
	    xhr2.open("POST" ,"add-a-car?action=addImage" ,true);
	    xhr2.send(data);
	});
}

function currentActive(current){
	let cancel = document.getElementById('btn-cancel');
	cancel.addEventListener('click',function(){
		$.ajax({
			method: 'GET',
			url: 'car-owner'
		});
	});
	let list = document.getElementsByClassName('progress-link');
	for (let i = 0; i<list.length;i++){
		list[i].className="content progress-link";
		if (i===current){
			list[i].className="content current progress-link";
		}
	}
}
let data = new FormData();
function getCarImage(){
	
		console.log(document.getElementById('file-upload-front'));
    data.append("fileFront",document.getElementById('file-upload-front').files[0]);
//    data.append("fileBack",document.getElementById('file-upload-back').files[0]);
//    data.append("fileLeft",document.getElementById('file-upload-left').files[0]);
//    data.append("fileRight",document.getElementById('file-upload-right').files[0]);
    
}
function random(){
	let form = document.getElementById('form-add-car-1');
	if (form!==null){
		document.getElementById('licensePlate').value=
		(Math.floor(Math.random() * 100) + 1)
		+generateRandomLetter()
		+'-'
		+(Math.floor(Math.random() * 10000));
		document.getElementById('productionYear').value=Math.floor(Math.random() * (2030 - 1990 + 1) ) + 1990;
	}else{
		form = document.getElementById('form-add-car-2');
		if (form!==null){
			document.getElementById('mileage').value= Math.floor(Math.random() * 1000);
			document.getElementById('fuel-consumption').value= Math.floor(Math.random() * 1000);
			document.getElementById('description').value= generateRandomLetter()+generateRandomLetter()+generateRandomLetter();
			let functions = document.getElementsByClassName('functions');
			functions[Math.floor(Math.random() * functions.length)].checked = true;
			functions[Math.floor(Math.random() * functions.length)].checked = true;
		}else{
			form = document.getElementById('form-add-car-3');
			if (form!==null){
				document.getElementById('base-price').value= Math.floor(Math.random() * 1000);
				document.getElementById('deposit').value= Math.floor(Math.random() * 1000);
				let tous = document.getElementsByClassName('tou');
				tous[Math.floor(Math.random() * tous.length)].checked = true;
				tous[Math.floor(Math.random() * tous.length)].checked = true;
			}
		}
	}
}
function generateRandomLetter() {
  const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  return alphabet[Math.floor(Math.random() * alphabet.length)]
}
