import 'package:tp2_dart/tp2_dart.dart' as tp2_dart;

void main() {
  // TODO 1 : déclarer nom (String), age (int), moyenne (double), inscrit (bool)
  String nom = 'Ahmed';
  int age = 21;
  double moyenne = 15.5;
  bool inscrit = true;

  // TODO 2 : déclarer const tva = 0.19 et final anneeCourante = DateTime.now().year
  const tva = 0.19;
  final anneeCourante = DateTime.now().year;

  // TODO 3 : afficher avec l'interpolation
  // print('Je m'appelle $nom, j'ai $age ans.');
  print('Je m\'appelle $nom, j\'ai $age ans.');

  // TODO 4 : afficher la moyenne arrondie à 2 décimales
  // indice : moyenne.toStringAsFixed(2)
  print('Moyenne: ${moyenne.toStringAsFixed(2)}');

  // Afficher l'année courante
  print('Année : $anneeCourante');

  // TODO 5 : décommenter la ligne suivante, lire l'erreur, puis la commenter
  // tva = 0.20;

  // final prend une valeur une seule fois, alors que const est une valeur fixe qui ne change pas.
}
