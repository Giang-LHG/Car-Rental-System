$(document).ready(function(){
		$.ajax({
			method: 'GET',
			url: 'car-basic-infomation-tab',
			data:{licensePlate: document.getElementById('licensePlate').value},
			success: function(response){
				$('#tab-content').html(response);
				disableActive();
				currentActive(document.getElementById('basic-info-tab'));
			}
		});
	$('#basic-info-tab').click(function(){
		$.ajax({
			method: 'GET',
			url: 'car-basic-infomation-tab',
			data:{licensePlate: document.getElementById('licensePlate').value},
			success: function(response){
				$('#tab-content').html(response);
				disableActive();
				currentActive(document.getElementById('basic-info-tab'));
			}
		});
	});
	$('#detail-tab').click(function(){
		$.ajax({
			method: 'GET',
			url: 'car-detail-tab',
			data:{licensePlate: document.getElementById('licensePlate').value},
			success: function(response){
				$('#tab-content').html(response);
				disableActive();
				currentActive(document.getElementById('detail-tab'));
			}
		});
	});
	$('#tou-tab').click(function(){
		$.ajax({
			method: 'GET',
			url: 'car-terms-of-use-tab',
			data:{licensePlate: document.getElementById('licensePlate').value},
			success: function(response){
				$('#tab-content').html(response);
				disableActive();
				currentActive(document.getElementById('tou-tab'));
			}
		});
	});
});
function disableActive(){
	document.getElementById('basic-info-tab').className = "tab";
	document.getElementById('detail-tab').className = "tab";
	document.getElementById('tou-tab').className = "tab";
}
function currentActive(current){
	current.className=current.className + ' active ';
}