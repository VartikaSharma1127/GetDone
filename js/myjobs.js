

function startMenu(){
	var arr = document.getElementsByClassName('menuop');
	

	for(i=0;i<arr.length;i++){
		var elm = arr[i];
		elm.onmouseover = function(){ this.style.backgroundColor='#750000';
									  this.style.color = 'white';	
									};

								
		elm.onmouseout = function(){ this.style.backgroundColor = 'white';
									 this.style.color = '#750000'; 	
									};	
	}
}