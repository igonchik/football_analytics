function showSearchHint() {
	var obj = document.getElementById('searchfield');
	var hint = document.getElementById('search-hint');
	var req;
	if (window.XMLHttpRequest) req = new XMLHttpRequest();
	else if(window.ActiveXObject) {
		try {
			req = new ActiveXObject('Msxml2.XMLHTTP');
		}
		catch (e){}

		try {
			req = new ActiveXObject('Microsoft.XMLHTTP');
		}
	catch (e){}
	}
	if (req) {
		if (obj.value=='') {
					hint.style.display = "none";
		}
		else{
			req.onreadystatechange = function() {
			if (req.readyState == 4 && req.status == 200){
				hint.style.display = "block";
				hint.innerHTML = req.responseText;
			}
		};
		req.open("POST", '/search/ajax/', true);
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		req.send('ajax=1&searchfield='+obj.value);
		}
	}
	else alert("AJAX is not supported");
}