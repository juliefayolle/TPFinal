Création du CRUD :

J'ai rencontré un problème lors de l'update car il ne prenais pas en compte les modifications du genre de la musique, en m'aidant de la doc et en relisant plusieurs fois mon code j'ai pu me rendre compte que c’était simplement du à une faute de frappe...
J'ai donc résolue ce problème, mais malheureusement je n'ai pas réussi à faire en sorte que lors de l'update, le genre initial de la chanson soit sélectionné par défaut.

Mise en place de la pagination :
Grâce à la méthode paginate de Laravel, j'ai choisi de faire apparaitre 5 titres par pages.
J'ai eu du mal à modifier le CSS de cette pagination mais avec la doc j'ai réussi à faire quelque chose de plus sympa qu'au début.
Suite à ca, j'ai réalisé que ma page create ne fonctionnais plus. Après recherches, je me suis aperçu que j'avais mis le render dans le mauvais fichier.

Ranger les musiques par ordre alphabétique :
Grâce à la méthode orderBy, j'ai crée un input select qui permet de choisir si l'on préfère afficher les chansons par ordre alphabétique des titres ou des artistes.

Mise en place d'un search :
En m’aidant d’un script trouvé sur internet j’ai pu mettre en place un système de recherche par titres ou par artistes.

Je voulais mettre en place un validator pour éviter les erreurs lorsque l'on créer une nouvelle musique sans rentrer de titre ni de chanteur, mais par manque de temps je n'ai pas réussi. Ducoup pour éviter les pages d'erreurs j'ai enlevé le non null dans le DB. 

Je me suis amusé à mettre un petit konami code histoire de faire un truc plus fun.


Ps : Je ne voulais pas générer une fausse base de données c'est pour ça qu'il y a peu de chansons.
