console.log('main.console 작동')

$(function(){
	
		
})

window.onload = function(){
	getTime();
	setInterval(getTime,1000);
}

function getTime(){
	var time = new Date();
	document.getElementById("h5-clock").innerHTML = time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();
}