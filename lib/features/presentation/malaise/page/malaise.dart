import 'package:flutter/material.dart';
import 'package:project1/features/presentation/malaiseDiapedique/page/malaiseDipedique.dart';

import '../../../../generated/l10n.dart';
import '../../Hypoglycemie/page/Hypoglycemie.dart';
import '../../hyperglycemie/page/hyperhglycemie.dart';

class Malaise extends StatefulWidget {
  const Malaise({Key? key}) : super(key: key);

  @override
  State<Malaise> createState() => _MalaiseState();
}

class _MalaiseState extends State<Malaise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE3E1D2), // Set your desired background color here
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Malaise'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MalaiseDiapedique(),
                  ),
                );
                // Action à effectuer lors du clic sur la Card 1
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        'assets/icon/malaiseDiapedique.png',
                        width: double.infinity,
                        height: 168.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  Container(
                      color: Color(0XFF4B4848),
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Malaise diabétique",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Icon(Icons.arrow_forward,color: Colors.white,), // Flèche vers la droite
                      ],
                    ),
                  ))  ,
                  ],
                ),
              ),
            ),
            SizedBox(height: 16), // Espacement entre les deux cartes
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Hypoglycemie(),
                  ),
                );
                // Action à effectuer lors du clic sur la Card 2
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        'assets/icon/Hypoglycémie.png',
                        width: double.infinity,
                        height: 170.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                   Container(
                     color: Color(0XFF4B4848),
                       child: Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text(
                           "Hypoglycémie",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                           ),
                         ),
                         Icon(Icons.arrow_forward,color: Colors.white,), // Flèche vers la droite
                       ],
                     ),
                   )) ,
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => hyperglycemie(),
                  ),
                );
                // Action à effectuer lors du clic sur la Card 3
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        'assets/icon/hyperglycemie2.png',
                        width: double.infinity,
                        height: 170.0,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                   Container(
                     color: Color(0XFF4B4848),
                       child: Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text(
                           "Hyperglycémie",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                           ),
                         ),
                         Icon(Icons.arrow_forward,color: Colors.white,), // Flèche vers la droite
                       ],
                     ),
                   )) ,
                  ],
                ),
              ),
            ),
            SizedBox(height: 16), // Espacement entre les deux cartes
          ],
        ),
      ),
    );
  }
}
