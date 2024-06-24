import 'package:flutter/material.dart';

class gestion extends StatelessWidget {
  final int number=1;

  gestion();

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 100.0, // Définir la largeur du cercle
      height: 100.0, // Définir la hauteur du cercle
      decoration: BoxDecoration(
        color: Colors.green, // Couleur du cercle
        shape: BoxShape.circle, // Forme du cercle
      ),
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(
            fontSize: 24.0, // Taille du texte
            color: Colors.white, // Couleur du texte
            fontWeight: FontWeight.bold, // Poids du texte
          ),
        ),
      ),
    );
  }
}
