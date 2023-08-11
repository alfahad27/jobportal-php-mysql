


let container = document.getElementById('container')


const homepage =()=>{
	window.location.href="index.html";
}

toggle = () => {
	container.classList.toggle('sign-in')
	container.classList.toggle('sign-up')
}

setTimeout(() => {
	container.classList.add('sign-in')
}, 200)



function opendashboard(){
	var rec=document.getElementById('recruiter');
	var job=document.getElementById('jobseeker');
    
    if(job.checked && rec.checked){
		alert("choose any one option")}
	else if(job.checked){
		window.location.href="dashboard.html";
	}
	else if(rec.checked){
		window.location.href="recruiter.html";
	}else
	{
		alert("choose any one option"); 
	}
}
function backbutton(){
	window.location.href="dashboard-job.php";
}