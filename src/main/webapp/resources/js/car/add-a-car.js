
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
	$('#btn-add-a-car').click(function(){
		$.ajax({
			method: 'POST',
			url: 'add-a-car',
			data:formvalue,
			success: function(){
				console.log('add successfully');
			}
		});
	});
}

function currentActive(current){
	let list = document.getElementsByClassName('progress-link');
	for (let i = 0; i<list.length;i++){
		list[i].className="content progress-link";
		if (i===current){
			list[i].className="content current progress-link";
		}
	}
}
function getCarImage(){
	let data = new FormData();
    data.append("fileFront",document.getElementById('file-upload-front').files[0]);
    data.append("fileBack",document.getElementById('file-upload-back').files[0]);
    data.append("fileLeft",document.getElementById('file-upload-left').files[0]);
    data.append("fileRight",document.getElementById('file-upload-right').files[0]);
    
    let xhr2 = new XMLHttpRequest();
    xhr2.open("POST" ,"add-a-car" ,true);
    xhr2.send(data);
}