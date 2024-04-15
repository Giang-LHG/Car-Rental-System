let step1;
let licensePlate = document.getElementById('licensePlate');
$(document).ready(function() {
	/*$.ajax({
			method: 'GET',
			url: 'booking-information',
			success: function(response) {
				$("#step-info").html(response);
				currentActive(0);
				$('#btn-next').click(function(){
					console.log('btn-next');
					$.ajax({
						method: 'GET',
						url: 'payment-booking',
						success: function(response) {
							$("#step-info").html(response);
							currentActive(1);
							$('#btn-payment').click(function(){
								$.ajax({
									method: 'GET',
									url: 'finish-booking',
									success: function(response) {
										$("#step-info").html(response);
										currentActive(2);
										$('#btn-view').click(function(){
											$.ajax({
												method: 'GET',
												url: '',
												success: function(response) {
													$("#step-info").html(response);
												}
											});
										});
									}
								});
							});
						}
					});
				});
			}
		});*/
		$.ajax({
			method: 'POST',
			url: 'booking-information',
			success: function(response) {
				step1 = response;
				$("#step-info").html(response);
				currentActive(0);
				$('.btn-next').click(function(event){
					event.preventDefault();
					$.ajax({
						method: 'POST',
						url: 'payment-booking',
						success: function(response) {
							$("#step-info").html(response);
							currentActive(1);
							let licensePlate2 = document.createElement('input');
							licensePlate2.type = 'hidden';
							licensePlate2.name = 'licensePlate';
							licensePlate2.id = 'licensePlate';
							licensePlate2.value = licensePlate.value;
							let form = document.getElementById('payment-booking-form');
							form.append(licensePlate2);
							$('#btn-payment').click(function(){
								$.ajax({
									method: 'POST',
									url: 'finish-booking',
									success: function(response) {
										$("#step-info").html(response);
										currentActive(2);
										$('#btn-view').click(function(){
											$.ajax({
												method: 'POST',
												url: '',
												success: function(response) {
													$("#step-info").html(response);
												}
											});
										});
									}
								});
							});
						}
					});
				});
			}
		});
});
function currentActive(current){
	let list = document.getElementsByClassName('progress-link');
	for (let i = 0; i<list.length;i++){
		list[i].className="content progress-link";
		if (i===current){
			list[i].className="content current progress-link";
		}
	}
}

function backToStep1(){
	let formContent = document.getElementById('step-info');
	formContent.innerHTML = step1;
	$.ajax({
		method: 'POST',
		url: 'booking-information',
		success: function(response) {
			step1 = response;
			$("#step-info").html(response);
			currentActive(0);
			$('.btn-next').click(function(event){
				event.preventDefault();
				$.ajax({
					method: 'POST',
					url: 'payment-booking',
					success: function(response) {
						$("#step-info").html(response);
						currentActive(1);
						let licensePlate2 = document.createElement('input');
						licensePlate2.type = 'hidden';
						licensePlate2.name = 'licensePlate';
						licensePlate2.id = 'licensePlate';
						licensePlate2.value = licensePlate.value;
						let form = document.getElementById('payment-booking-form');
						form.append(licensePlate2);
						$('#btn-payment').click(function(){
							$.ajax({
								method: 'POST',
								url: 'finish-booking',
								success: function(response) {
									$("#step-info").html(response);
									currentActive(2);
									$('#btn-view').click(function(){
										$.ajax({
											method: 'POST',
											url: '',
											success: function(response) {
												$("#step-info").html(response);
											}
										});
									});
								}
							});
						});
					}
				});
			});
		}
	});
}
function confirmRent(){
	let text = 'Are your sure to rent this car ?';
	if(confirm(text) === true){
		let startDate = document.getElementById('startDate');
		let endDate = document.getElementById('endDate');
		let paymentMethod = document.querySelectorAll('.paymentMethod');
		console.log(paymentMethod);
		let checked;
		for(let i = 0;i < paymentMethod.length;i++){
			if (paymentMethod[i].checked){
				checked = paymentMethod[i];
				break;
			}
		}
		console.log(checked);
		let customerId = document.getElementById('customerId');
		let licensePlate = document.getElementById('licensePlate');

		let xhr = new XMLHttpRequest();
		xhr.open("POST" ,"rent-a-car" ,true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
		xhr.send(`action=confirmBook&startDate=${startDate.value.trim()}&endDate=${endDate.value.trim()}&paymentMethod=${checked.value.trim()}&customerId=${customerId.value.trim()}&licensePlate=${licensePlate.value.trim()}`);

		xhr.onreadystatechange = function () {
			if (this.readyState === 4 && this.status === 200) {
				// window.location.href = "/Car_Rental_System/";
				$('#btn-payment').click(function(){
					$.ajax({
						method: 'POST',
						url: 'finish-booking',
						success: function(response) {
							$("#step-info").html(response);
							currentActive(2);
							$('#btn-view').click(function(){
								$.ajax({
									method: 'POST',
									url: '',
									success: function(response) {
										$("#step-info").html(response);
									}
								});
							});
						}
					});
				});
			} else if (this.readyState === 3 && this.status === 500) {
				console.log("error")
			}
		};
	}
}