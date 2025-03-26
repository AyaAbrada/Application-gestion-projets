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
        alert("Entrer la ressource");
    }
}
 function validerDate() {
             var dateSaisie = document.getElementById("date").value;

             if (!dateSaisie) {
                 alert("Veuillez sélectionner une date.");
                 return;
             }

             var aujourdHui = new Date();
             aujourdHui.setHours(0, 0, 0, 0);

             var dateUtilisateur = new Date(dateSaisie);

             if (dateUtilisateur < aujourdHui) {
                 alert("La date doit être aujourd'hui ou dans le futur.");
             }
         }
         document.getElementById("buttonn").addEventListener("click", () => {
             validerDate();
             text();
             text1();
             text2();
             text3();
             text4();
             text5();
         });
