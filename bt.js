function connexion()
{
 var id = prompt("Donnez votre nom d'utilisateur");
 var mdp = prompt("entrez votre mot de passe");
 if (id =="admin"&& mdp == "admin")
 {

    document.write("Bienvenue:    "   + id);

 }
else{
alert("Acces refuse");


}

}
function chaine_caractere()
{
var chaine=prompt("donnez un mot")
document.write(chaine.toUpperCase()+" <br>");
document.write(chaine.toLowerCase()+" <br>");
document.write("la chaine contient   " +chaine.length+"   caracteres   " + "<br>");
document.write("la premiere lettre est    "+chaine .substr(0,1)+"<br>");

}
function affichage_tableau()
{
 document.write("<table border=2 width=30%,>");
 for (i=0; i <=5; i++)
 {

   document.write("<tr><td>*</td></td>*</td></td>*</td></tr>")


 }
document.write("</table>");
}

function affichage_tableau2()
{
   var nombre=prompt("donnez un nombre")

 document.write("<table border=2 width=30%,>");
 for (i=0; i <=nombre; i++)
 {

   document.write("<tr><td>"+i+"</td></td>*</td></td>*</td></tr>")


 }
document.write("</table>");
}