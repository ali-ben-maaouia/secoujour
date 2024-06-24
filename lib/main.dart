import 'package:flutter/material.dart';
import 'package:project1/features/presentation/my_bloc/Home/Home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('en', 'US'),
    localeResolutionCallback: (locale, supportedLocales) {
      // Check if the current device locale is supported
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale?.languageCode &&
            supportedLocale.countryCode == locale?.countryCode) {
          return supportedLocale;
        }
      }
      return supportedLocales.first;

    },
      theme: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        // Définir les autres couleurs du schéma si nécessaire
        background: Colors.green, // Couleur de fond personnalisé//
          // , // Couleur primaire
        onPrimary: Colors.red, // Couleur pour le texte sur la couleur primaire
        secondary: Colors.red, // Couleur secondaire
        surface: Colors.red, // Couleur de surface
        onSurface: Colors.red, // Couleur pour le texte sur la surface
        error: Colors.red, // Couleur d'erreur
        onError: Colors.red, brightness: Brightness.dark, onSecondary: Colors.red, onBackground: Colors.red,
        primary: Colors.red
      ),
    ),

      home:  Home(),
    );
  }
}
