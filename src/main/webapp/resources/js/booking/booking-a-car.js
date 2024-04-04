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