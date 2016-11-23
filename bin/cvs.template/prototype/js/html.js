function htmlToggleVisible(eid){
	var node = document.getElementById(eid);
	if(!node){
		alert("Internal error: the " + eid + " element not found");
		return;
	}
	if (node.style.display == "none") node.style.display = "";
	else node.style.display = "none";
}

var mnuReveal = false;
function htmlToggleMenu(nmframeset) {
	if (parent && parent.document && parent.frames
	&& parent.frames.length >= 2) {
		var n = parent.document.getElementById(nmframeset);
		if (n) {
			if (mnuReveal) {
				n.cols = "200,*";
			} else {
				n.cols = "24,*";
			}
			mnuReveal = !mnuReveal;
		}
	}
}

function htmClearAllChecked(target, id) {
	var es = target.form.elements[id];
	for (var j = 0; j < es.length; ++j)
		es[j].checked = false;
}