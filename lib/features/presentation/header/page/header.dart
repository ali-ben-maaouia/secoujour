import 'package:flutter/material.dart';


class headerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, // Couleur de l'app bar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'assets/icon/logo.svg',
                      width: 24.0, // Largeur de l'icône
                      height: 24.0, // Hauteur de l'icône
                    ),

                    onPressed: () {
                      // Action à effectuer lorsque l'icône est pressée
                    },
                  ),

                ],
              ),
              Text(
                'Apprendre',
                style: TextStyle(fontSize: 18.0,color: Colors.black),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Column 3',
                    style: TextStyle(fontSize: 16.0,color: Colors.black),
                  ),

                ],
              ),
            ],
          ),
        ),

      );

  }
}
