
		function onlypcwarning() {
	var onlypc=document.createElement("div");
		onlypc.className="only-pc";
		onlypc.id="onlypcwarning";
		onlypc.style.position="absolute";
	}
if(navigator.userAgent.match(/(iPhone|Android)/i)){
    alert('移动端');
} else {
    alert('PC端');
	onlypcwarning();
}