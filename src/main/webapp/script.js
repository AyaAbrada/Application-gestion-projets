function text(){
    if(document.getElementById("nom").value == "" ){
        alert("Entrer le nom");}
    }
function text1(){
    if(document.getElementById("description").value == "" ){
        alert("Entrer la description");}
    }
function text2(){
    if(document.getElementById("budget").value < "1" ){
        alert("Entrer un budjet positif");
    }
    }
function text3(){
    if(document.getElementById("dateDebut").value == "" ){
        alert("Entrer le nom du projet");}
    }
function text4(){
    if(document.getElementById("dateFin").value == "" ){
        alert("Entrer la description du projet");}
    }
function text5(){
    if(document.getElementById("ressource").value == "" ){
        alert("Entrer la rssource");
    }
}
    document.getElementById("buttonn").addEventListener("click", () => {
        text();
        text1();
        text2();
        text3();
        text4();
        text5();
    })

