import 'package:tp2_dart/tp2_dart.dart' as tp2_dart;

// void main() {
//   // TODO 1 : déclarer nom (String), age (int), moyenne (double), inscrit (bool)
//   String nom = 'Ahmed';
//   int age = 21;
//   double moyenne = 15.5;
//   bool inscrit = true;

//   // TODO 2 : déclarer const tva = 0.19 et final anneeCourante = DateTime.now().year
//   const tva = 0.19;
//   final anneeCourante = DateTime.now().year;

//   // TODO 3 : afficher avec l'interpolation
//   // print('Je m'appelle $nom, j'ai $age ans.');
//   print('Je m\'appelle $nom, j\'ai $age ans.');

//   // TODO 4 : afficher la moyenne arrondie à 2 décimales
//   // indice : moyenne.toStringAsFixed(2)
//   print('Moyenne: ${moyenne.toStringAsFixed(2)}');

//   // Afficher l'année courante
//   print('Année : $anneeCourante');

//   // TODO 5 : décommenter la ligne suivante, lire l'erreur, puis la commenter
//   // tva = 0.20;

//   // final prend une valeur une seule fois, alors que const est une valeur fixe qui ne change pas.
// }

// void main() {
//   String? surnom; // aucune valeur pour l'instant
//   String? email = 'ahmed@iset.tn';

//   // TODO 1 : afficher le surnom, ou 'Aucun surnom' s'il est null (opérateur ??)
//   print(surnom ?? 'Aucun surnom');

//   // TODO 2 : afficher la longueur de email sans planter si email est null (?.)
//   print(email?.length);

//   // TODO 3 : donner une valeur à surnom, puis réafficher le TODO 1
//   surnom = 'Hama';
//   print(surnom ?? 'Aucun surnom');

//   // TODO 4 : décommenter, lire l'erreur, puis commenter à nouveau
//   // String? vide;
//   // print(vide!.length);

//   print(decrire(null));
//   print(decrire('Ahmed'));
// }

// // TODO 5 : compléter cette fonction
// // elle renvoie 'Bonjour X' si nom n'est pas null, sinon 'Bonjour visiteur'
// String decrire(String? nom) {
//   return 'Bonjour ${nom ?? 'visiteur'}';
// }

// // Dart interdit null par défaut pour éviter les erreurs quand on utilise une variable.

// void main() {
//   print(carre(5));
//   print(moyenne(12, 16));

//   afficherFiche(nom: 'Ahmed');
//   afficherFiche(nom: 'Sarra', classe: 'DSI3', moyenne: 15.5);
// }

// // TODO 1 : fonction fléchée qui renvoie le carré d'un entier
// int carre(int n) => n * n;

// // TODO 2 : renvoie la moyenne de deux notes (double)
// double moyenne(double n1, double n2) {
//   return (n1 + n2) / 2;
// }

// // TODO 3 : compléter la signature
// // nom : nommé et obligatoire
// // classe : nommé, valeur par défaut 'Non précisée'
// // moyenne : nommé, peut être null
// void afficherFiche({ required String nom, String classe = 'Non précisée', double? moyenne})
//   // TODO 4 : afficher
//   // Nom : Ahmed | Classe : Non précisée | Moyenne : non renseignée
//   {
//     print('Nom : $nom | Classe : $classe | Moyenne : ${moyenne ?? 'non renseignée'}');
// }

// // Flutter utilise les paramètres nommés car ils rendent le code plus clair et
// // permettent de savoir a quoi correspond chaque valuer

// void main() {
//   List<int> notes = [12, 8, 15, 17, 9];

//   // TODO 1 : ajouter la note 11 à la liste
//   notes.add(11);

//   // TODO 2 : afficher le nombre de notes (propriété length)
//   print('${notes.length} notes');

//   // TODO 3 : afficher chaque note, une par ligne, avec une boucle for
//   for (var note in notes) {
//     print(note);
//   }

//   // TODO 4 : créer une liste des notes >= 10 avec where, puis l'afficher
//   // indice : notes.where((n) => ...).toList()
//   List<int> notesSup10 = notes.where((n) => n >= 10).toList();
//   print('Notes >= 10 : $notesSup10');

//   // TODO 5 : calculer et afficher la moyenne
//   // indice : une boucle et une variable somme
//   int somme = 0;
//   for (var note in notes) {
//     somme += note;
//   }
//   double moyenne = somme / notes.length;
//   print('Moyenne : ${moyenne.toStringAsFixed(2)}');

//   Map<String, int> ages = {'Ahmed': 22, 'Sarra': 21};

//   // TODO 6 : ajouter 'Youssef' avec l'âge 23
//   ages ['Youssef'] = 23;

//   // TODO 7 : parcourir la map et afficher 'Ahmed a 22 ans'
//   // indice : ages.forEach((cle, valeur) { ... });
//   ages.forEach((cle, valeur) {
//     print('$cle a $valeur ans');
//   });
// }

// // Une List contient des valeurs dans un ordre,une Map contient des paires cle-valuer

void main() {
  final etudiants = [
    Etudiant(nom: 'Ahmed', moyenne: 14.5),
    Etudiant(nom: 'Sarra', moyenne: 9.0),
    Etudiant(nom: 'Youssef', moyenne: 12.0),
  ];

  // TODO 4 : afficher chaque étudiant (une boucle for)
  for (var etudiant in etudiants) {
    print(etudiant);
  }

  // TODO 5 : afficher uniquement les admis (moyenne >= 10)
  // indice : etudiants.where((e) => e.estAdmis)
  final admis = etudiants.where((e) => e.estAdmis);
  print('Admis :${admis.map((e) => e.nom).join(', ')}');
}

class Etudiant {
  // TODO 1 : déclarer final nom (String) et final moyenne (double)
  final String nom;
  final double moyenne;

  // TODO 2 : constructeur avec paramètres nommés obligatoires
  Etudiant({required this.nom, required this.moyenne});

  // TODO 3 : getter estAdmis qui renvoie true si moyenne >= 10
  bool get estAdmis => moyenne >= 10;

  // TODO 3 bis : redéfinir toString() pour renvoyer
  // 'Ahmed - 14.5 (admis)' ou 'Sarra - 9.0 (non admis)'
  @override
  String toString() {
    return '$nom - $moyenne (${estAdmis ? 'admis' : 'non admis'})';
  }
}

// On utilise final car les valeurs sont définies une fois et ne changent plus.
