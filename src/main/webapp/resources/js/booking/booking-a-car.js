$(document).ready(function() {
	$('#step-1').click(function(){
		/*$.ajax({
			method: 'POST',
			url: '',
			success: function(response) {
				$("#container").html(response);
			}
		});*/
		let divContent = document.getElementById('step-info');
		divContent.innerHTML = "step 1";
		currentActive(0);
	});
	$('#step-2').click(function(){
		/*$.ajax({
			method: 'POST',
			url: '',
			success: function(response) {
				$("#container").html(response);
			}
		});*/
		let divContent = document.getElementById('step-info');
		divContent.innerHTML = "step 2";
		currentActive(1);
	});
	$('#step-3').click(function(){
		/*$.ajax({
			method: 'POST',
			url: '',
			success: function(response) {
				$("#container").html(response);
			}
		});*/
		let divContent = document.getElementById('step-info');
		divContent.innerHTML = "step 3";
		currentActive(2);
	});
});
function currentActive(current){
	let list = document.getElementsByClassName('progress-link');
		console.log(list.length);
	for (let i = 0; i<list.length;i++){
		list[i].className="content progress-link";
		if (i===current){
			list[i].className="content current progress-link";
		}
		console.log(i+' '+list[i].textContent);
	}
}