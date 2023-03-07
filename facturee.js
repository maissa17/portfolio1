var listeprix = document.getElementsByClassName("prix");
var listeqte = document.getElementsByClassName("qte");
var listeTtl = document.getElementsByClassName("totalLigne");



function calculate() {
    var total = 0;

    var listeprix = document.getElementsByClassName("prix");
    var listeqte = document.getElementsByClassName("qte");
    var listeTtl = document.getElementsByClassName("totalLigne");

for (var i=0; i< listeprix.length;i++){
    listeTtl[i].value = parseInt(listeqte[i].value)*parseInt(listeprix[i].value);
   total= total + parseInt(listeTtl[i].value);
                                    }

/*var soustotal = document.getElementsByClassName("totalLigne")

var total = Number(soustotal)*4*/
     

 }



function calculeSousTotale(){
    
    var soustotal = document.getElementsByClassName("totalLigne");
    soustotal= 5;
     
    /*for (var i=0; i< total.length;i++){
            soustotal[i].value = parseInt(total[i].value);
        

    }*/
    
   /* var  Ttl =0
    var soustotal = document.getElementById("soustotal");

for (var i=0; i< listeTotal.length;i++){
    Ttl= Ttl + listeTotal[i].value;
soustotal = Ttl;

}*/
}

/*var myLength = soustotal.length,
total = 0;

for (var i = 0; i < myLength; ++i) {
  total += soustotal[i].value;

}*/










                               
                                    
                                
                   
                                


function remplir(){ 
    var listeprix = document.getElementsByClassName("prix");
    var listeqte = document.getElementsByClassName("qte");
    var listedesc = document.getElementsByClassName("desc");
   
    
    const tabDESC = new Array("portable", "bureau" , "ram 8go", "clef usb 16go", "souris", "ecran 17 pouces");
  

for (var i=0; i< listedesc.length;i++){
   var idesc = Math.floor(tabDESC.length *Math.random());  // Nb entre 0 et le nb d'élément -1 de tabdesc
   listedesc[i].value = tabDESC[idesc];


   var qte = Math.floor(10 *Math.random()+1);
   var prix= Math.floor(10 *Math.random()+1);
    listeqte[i].value = qte;
    listeprix[i].value = prix;
                            }

                                        }
                    
                    
                    
function ajouterLigne(){
    var newLi = document.getElementById("modeleLigne").cloneNode(true);
    var lastLi = document.getElementById("lastLigne");
    var pere = document.getElementById("table_inv").firstChild.nextSibling;
    pere.insertBefore(newLi, lastLi);
}                                     

