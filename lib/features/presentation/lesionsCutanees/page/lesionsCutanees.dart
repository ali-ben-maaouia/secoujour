import 'package:flutter/material.dart';
import 'package:project1/features/presentation/malaiseDiapedique/page/malaiseDipedique.dart';

import '../../../../generated/l10n.dart';
import '../../Hypoglycemie/page/Hypoglycemie.dart';
import '../../PlaiesGraveDetail/page/PlaieGraveDetail.dart';
import '../../PlaisSimpleDetail/page/PalaieSimpleDetail.dart';
import '../../hyperglycemie/page/hyperhglycemie.dart';
import '../../traumatismeMusculaireDetail/page/traumatismeMusculaireDetail.dart';

class LesionsCutanees extends StatefulWidget {
  const LesionsCutanees({Key? key}) : super(key: key);

  @override
  State<LesionsCutanees> createState() => _LesionsCutaneesState();
}

class _LesionsCutaneesState extends State<LesionsCutanees> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFE3E1D2),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Lesions Cutanées'),
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
                      builder: (context) => PlaieSimpleDetail(),
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
                          'assets/icon/palaieSimple.png',
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
                            "Les plaies simples",
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
                      builder: (context) => PlaieGraveDetail(),
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
                          'assets/icon/plaieGrave.png',
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
                           "Les plaies graves",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                           ),
                         ),
                         Icon(Icons.arrow_forward,color: Colors.white,), // Flèche vers la droite
                       ],
                     ),
                   ))   ,
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
                      builder: (context) => TraumatismeMusculaireDetail(),
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
                          'assets/icon/traumatismeMusculaire.png',
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
                           "Les traumatismes musculaires",
                           style: TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                           ),
                         ),
                         Icon(Icons.arrow_forward,color: Colors.white,), // Flèche vers la droite
                       ],
                     ),
                   ))   ,
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
                          'assets/icon/traumatismeArticulaire.png',
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
                            "Les traumatismes articulaires",
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
// Espacement entre les deux cartes
            ],
          ),
        ),
      ),
    );
  }
}
