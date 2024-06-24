import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../aideHypoglycemie/page/aideHypoglycemie.dart';

class Chaleur extends StatefulWidget {
  const Chaleur({super.key});

  @override
  State<Chaleur> createState() => _ChaleurState();
}

class _ChaleurState extends State<Chaleur> {
  int? _selectedIndex;

  List<String> _contenus = [
    "Transpiration","Excessive Peau pale","Sensation de fatigue,de faiblesse","Très grande soif","Anxiété","Etourdissements","Tachycardie","Température interne de 37.5 à 40 °C","Respiration rapide","Céphalées","Nausées et vomissements"
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFFE3E1D2),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Effets de la chaleur'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
            "assets/icon/EffetChaleure.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width, // Ajuste la largeur à celle de l'écran
            height: 200, // Ajuste la hauteur selon vos besoins
          ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Description:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
"Lors d’une vague de chaleur, le corps a plus de difficulté à se refroidir et à maintenir sa température dans les limites de la normale. Dans de telles périodes, une exposition prolongée à la chaleur, un effort physique excessif ou une très forte transpiration peuvent avoir certains effets sur la santé.",                style: TextStyle(
                  fontSize: 16
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start of the cross axis (left in LTR languages)
                children: [
                  Text(
                    'Les symptomes peuvent etre:', // Replace with your desired title
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10), // Adjust spacing between title and list if needed
                  Column(
                    children: List.generate(_contenus.length, (index) {
                      return Card(
                        color: Colors.white,
                        child: ListTile(
                          title: Text(_contenus[index]),
                        ),
                      );
                    }),
                  ),


                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, // Align children to the start of the cross axis (left in LTR languages)
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => aideHypoglycemie(),
                        ),
                      );
                      // Action à effectuer lorsque le texte est cliqué
                      // Par exemple, navigation vers une autre page, affichage d'une boîte de dialogue, etc.
                      // Insérez ici le code correspondant à votre action souhaitée
                    },
                    child: Text(
                      'La conduit a tenir >>', // Remplacez par le titre désiré
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        decoration: TextDecoration.underline, // Ajoutez un soulignement pour indiquer que c'est cliquable
                      ),
                    ),
                  ),
                  SizedBox(height: 40), // Adjust spacing between title and list if needed



                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
