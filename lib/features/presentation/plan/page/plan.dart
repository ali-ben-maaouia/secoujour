import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project1/features/presentation/Navigation_bar/pages/navigation.dart';
import 'package:project1/features/presentation/detail/page/detail.dart';
import '../../../../generated/l10n.dart';
import '../../login/page/login.dart';
import '../../my_bloc/Home/Home.dart';

class Plan extends StatefulWidget {
  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  Locale _selectedLocale = Locale('en', 'US');
  Locale _locale = Locale('fr', 'FR');

  @override
  Widget build(BuildContext context) {
    final titles = [
      S.current.allergie, S.current.accident, S.of(context).burn,S.of(context).Heatstroke,
      S.of(context).CriseAasthme, S.of(context).CriseEpilepsie, S.of(context).CircularDistress
    ];

    final icons = [
      MyIcons.allergieIcon,
      MyIcons.accident,
      MyIcons.brulure,
      MyIcons.chaleur,
      MyIcons.criseAthme,
      MyIcons.criseEpilepsie,
      MyIcons.detresse,
    ];

    return MaterialApp(
      locale: _locale,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,

      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.ltr, // Forcer la direction LTR
          child: child!,
        );
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false, // Désactive l'icône de retour par défaut
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    icon: Image.asset('assets/icon/cifr.png'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ],
              ),
              Text(
                'Plan',
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: [
                      DropdownButton<Locale>(
                        value: _selectedLocale,
                        items: [
                          DropdownMenuItem(
                            value: Locale('en', 'US'),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icon/en.png',
                                  width: 24,
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('fr', 'FR'),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icon/fr.png',
                                  width: 24,
                                ),
                                SizedBox(width: 8)
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: Locale('ar', 'AR'),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/icon/tunisie.png',
                                  width: 24,
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                        ],
                        onChanged: (Locale? locale) {
                          if (locale != null) {
                            setState(() {
                              NavigationWidget(changeLanguage: (Locale ) { locale; },);
                              _selectedLocale = locale;
                              _locale = locale;
                            });


                          }
                        },
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const loginWidget()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'login',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const loginWidget()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image.asset("assets/icon/contact.png", width: 24),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
              child: Container(
                height: 120,
                child: Image.asset("assets/icon/chaine2.jpg"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => detail()),
                        );
                      },
                      child: ListTile(
                        leading: _buildIcon(icons[index]),
                        title: Text(titles[index]),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(dynamic icon) {
    if (icon is IconData) {
      return Icon(icon);
    } else if (icon is String) {
      return Image.asset(icon, width: 24, height: 24);
    } else {
      return Container(); // Fallback for unknown types
    }
  }
}

class MyIcons {
  static const String allergieIcon = 'assets/icon/Allergieicon.png';
  static const String brulure = 'assets/icon/brulure.png';
  static const String chaleur = 'assets/icon/chaleur.png';
  static const String criseAthme = 'assets/icon/criseAthme.png';
  static const String criseEpilepsie = 'assets/icon/criseEpilepsie.png';
  static const String detresse = 'assets/icon/detresse2.png';
  static const String accident = 'assets/icon/accident2.png';
}
