function calcul_moyenne()
{
    var note1= prompt("donner la premiere note");
    var coeff1= prompt("donner le premier coefficient");
    var note2= prompt("donner la deuxieme note");
    var coeff2= prompt("donner le deuxieme coefficient");
    var note3= prompt("donner la troisieme note");
    var coeff3= prompt("donner le troisieme coefficient");

    var somme = Number((note1)*coeff1) + Number((note2)*coeff2)+ Number((note3)*coeff3);
    var coeff = Number(coeff1)+ Number(coeff2)+ Number(coeff3);

    document.write ("voici la somme:" + somme);

    var moyenne= (somme/coeff);
    document.write("voici la moyenne:" + moyenne); 
    
 if (moyenne<10)
 document.write ("Vous etes redoublant")
 else
 document.write("Vous etes admis");
}
function test_age()
    {
        var age= prompt("donnez votre age");
        if (age<18)
        {
        document.write("Vous etes mineur");
        document.bgColor="red";
        }
        else  {
        document.write("Vous etes majeur");
        document.bgColor="green";

        }
    }
function simple_affichage() 
{
 var nom= prompt ("donner votre nom");
 var prenom= prompt ("donner votre prenom");



 document.write("<div style= ' margin:auto; border:2px solid black; width:50%; color:pink'>");
 document.write("bonjour   "+ prenom + "   " + nom );
 document.write("</div>");

}
function test_color()
{
    var c = prompt("donnez une couleur");
    if (c== "rouge"|| c=="ROUGE")
    document.body.style.background="red";
    else if (c=="bleu" || c=="BLEU")
    document.body.style.background="blue";
    else if (c=="vert" || c=="VERT" )
    document.body.style.background="green";
    else
    document.write("couleur non comprise   ");
    

}
