

function headMenu(){
	var arr = document.getElementsByClassName('headop');
	

	for(i=0;i<arr.length;i++){
		var elm = arr[i];
		elm.onmouseout = function(){ this.style.backgroundColor='#3e3e3e';
									  this.style.color = 'white';	
									};

								
		elm.onmouseover = function(){ this.style.backgroundColor = 'white';
									 this.style.color = '#3e3e3e'; 	
									};	
	}
}