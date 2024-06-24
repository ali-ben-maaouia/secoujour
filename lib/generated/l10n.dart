// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Learn`
  String get apprendre {
    return Intl.message(
      'Learn',
      name: 'apprendre',
      desc: '',
      args: [],
    );
  }

  /// `Enter a search term`
  String get search {
    return Intl.message(
      'Enter a search term',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Offer help`
  String get calandrier {
    return Intl.message(
      'Offer help',
      name: 'calandrier',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `View your plan`
  String get consultation {
    return Intl.message(
      'View your plan',
      name: 'consultation',
      desc: '',
      args: [],
    );
  }

  /// `allergy`
  String get allergie {
    return Intl.message(
      'allergy',
      name: 'allergie',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get profile {
    return Intl.message(
      'About Us',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Stroke`
  String get accident {
    return Intl.message(
      'Stroke',
      name: 'accident',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Your first aid plan`
  String get plan {
    return Intl.message(
      'Your first aid plan',
      name: 'plan',
      desc: '',
      args: [],
    );
  }

  /// `Safety and Preparedness`
  String get plan1 {
    return Intl.message(
      'Safety and Preparedness',
      name: 'plan1',
      desc: '',
      args: [],
    );
  }

  /// `first aid`
  String get plan2 {
    return Intl.message(
      'first aid',
      name: 'plan2',
      desc: '',
      args: [],
    );
  }

  /// `Skin lesions and trauma in\n athletes`
  String get plan3 {
    return Intl.message(
      'Skin lesions and trauma in\n athletes',
      name: 'plan3',
      desc: '',
      args: [],
    );
  }

  /// `Safety and preparedness`
  String get plan1item1 {
    return Intl.message(
      'Safety and preparedness',
      name: 'plan1item1',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get Complet {
    return Intl.message(
      'Complete',
      name: 'Complet',
      desc: '',
      args: [],
    );
  }

  /// `safety`
  String get safety {
    return Intl.message(
      'safety',
      name: 'safety',
      desc: '',
      args: [],
    );
  }

  /// `Water Safety`
  String get SecuriteAquatique {
    return Intl.message(
      'Water Safety',
      name: 'SecuriteAquatique',
      desc: '',
      args: [],
    );
  }

  /// `Road Safety`
  String get RoadSafety {
    return Intl.message(
      'Road Safety',
      name: 'RoadSafety',
      desc: '',
      args: [],
    );
  }

  /// `Crise d'asthme`
  String get CriseAasthme {
    return Intl.message(
      'Crise d\'asthme',
      name: 'CriseAasthme',
      desc: '',
      args: [],
    );
  }

  /// `Crise d'épilepsie`
  String get CriseEpilepsie {
    return Intl.message(
      'Crise d\'épilepsie',
      name: 'CriseEpilepsie',
      desc: '',
      args: [],
    );
  }

  /// `Circular distress`
  String get CircularDistress {
    return Intl.message(
      'Circular distress',
      name: 'CircularDistress',
      desc: '',
      args: [],
    );
  }

  /// `Preparedness`
  String get Preparedness {
    return Intl.message(
      'Preparedness',
      name: 'Preparedness',
      desc: '',
      args: [],
    );
  }

  /// `Heat wave`
  String get Heatwave {
    return Intl.message(
      'Heat wave',
      name: 'Heatwave',
      desc: '',
      args: [],
    );
  }

  /// `Login Page`
  String get LoginPage {
    return Intl.message(
      'Login Page',
      name: 'LoginPage',
      desc: '',
      args: [],
    );
  }

  /// `username`
  String get loginusername {
    return Intl.message(
      'username',
      name: 'loginusername',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirme Password`
  String get confirmPassword {
    return Intl.message(
      'Confirme Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `you don't have an account?`
  String get haveAccount {
    return Intl.message(
      'you don\'t have an account?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get inscrire {
    return Intl.message(
      'Register',
      name: 'inscrire',
      desc: '',
      args: [],
    );
  }

  /// `Registre Page`
  String get registrePage {
    return Intl.message(
      'Registre Page',
      name: 'registrePage',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Emergency call`
  String get EmergencyCall {
    return Intl.message(
      'Emergency call',
      name: 'EmergencyCall',
      desc: '',
      args: [],
    );
  }

  /// `Tunisia`
  String get tunis {
    return Intl.message(
      'Tunisia',
      name: 'tunis',
      desc: '',
      args: [],
    );
  }

  /// `In an emergency?\n`
  String get Inemergency {
    return Intl.message(
      'In an emergency?\n',
      name: 'Inemergency',
      desc: '',
      args: [],
    );
  }

  /// `Start the assessment to find out what you need to do quickly.\n`
  String get Inemergency2 {
    return Intl.message(
      'Start the assessment to find out what you need to do quickly.\n',
      name: 'Inemergency2',
      desc: '',
      args: [],
    );
  }

  /// `Start rating`
  String get Startrating {
    return Intl.message(
      'Start rating',
      name: 'Startrating',
      desc: '',
      args: [],
    );
  }

  /// `Emergency content?`
  String get Emergencycontent {
    return Intl.message(
      'Emergency content?',
      name: 'Emergencycontent',
      desc: '',
      args: [],
    );
  }

  /// `Choking in (adults and the elderly)`
  String get Emergencycontentitem1 {
    return Intl.message(
      'Choking in (adults and the elderly)',
      name: 'Emergencycontentitem1',
      desc: '',
      args: [],
    );
  }

  /// `Choking in a child`
  String get Chokingchild {
    return Intl.message(
      'Choking in a child',
      name: 'Chokingchild',
      desc: '',
      args: [],
    );
  }

  /// `Choking (infant)`
  String get Etouffement {
    return Intl.message(
      'Choking (infant)',
      name: 'Etouffement',
      desc: '',
      args: [],
    );
  }

  /// `yes`
  String get yes {
    return Intl.message(
      'yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Does the person respond?`
  String get personRespond {
    return Intl.message(
      'Does the person respond?',
      name: 'personRespond',
      desc: '',
      args: [],
    );
  }

  /// `Is the person breathing normally?`
  String get breathingNormally {
    return Intl.message(
      'Is the person breathing normally?',
      name: 'breathingNormally',
      desc: '',
      args: [],
    );
  }

  /// `Is the person breathing heavily?`
  String get breathingHeavily {
    return Intl.message(
      'Is the person breathing heavily?',
      name: 'breathingHeavily',
      desc: '',
      args: [],
    );
  }

  /// `What is the age of the child?`
  String get age {
    return Intl.message(
      'What is the age of the child?',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `infant`
  String get infant {
    return Intl.message(
      'infant',
      name: 'infant',
      desc: '',
      args: [],
    );
  }

  /// `child`
  String get child {
    return Intl.message(
      'child',
      name: 'child',
      desc: '',
      args: [],
    );
  }

  /// `Adult/elderly`
  String get Adult {
    return Intl.message(
      'Adult/elderly',
      name: 'Adult',
      desc: '',
      args: [],
    );
  }

  /// `The person may need emergency first aid in order to:`
  String get emergencyFirstAid {
    return Intl.message(
      'The person may need emergency first aid in order to:',
      name: 'emergencyFirstAid',
      desc: '',
      args: [],
    );
  }

  /// `in order to:`
  String get inOrderTo {
    return Intl.message(
      'in order to:',
      name: 'inOrderTo',
      desc: '',
      args: [],
    );
  }

  /// `Recommended directions`
  String get RecommendedDirections {
    return Intl.message(
      'Recommended directions',
      name: 'RecommendedDirections',
      desc: '',
      args: [],
    );
  }

  /// `Severe bleeding`
  String get SevereBleeding {
    return Intl.message(
      'Severe bleeding',
      name: 'SevereBleeding',
      desc: '',
      args: [],
    );
  }

  /// `Lack of response and breathing normally\n (for the infant)`
  String get AbsenceReponse {
    return Intl.message(
      'Lack of response and breathing normally\n (for the infant)',
      name: 'AbsenceReponse',
      desc: '',
      args: [],
    );
  }

  /// `Unresponsiveness and abnormal breathing\n (adolescent and adult)`
  String get InsensibiliteRespiration {
    return Intl.message(
      'Unresponsiveness and abnormal breathing\n (adolescent and adult)',
      name: 'InsensibiliteRespiration',
      desc: '',
      args: [],
    );
  }

  /// `Unresponsiveness and abnormal breathing\n (for the infant)`
  String get InsensibiliteRespiration2 {
    return Intl.message(
      'Unresponsiveness and abnormal breathing\n (for the infant)',
      name: 'InsensibiliteRespiration2',
      desc: '',
      args: [],
    );
  }

  /// `All emergency directions`
  String get AllEmergencyDirections {
    return Intl.message(
      'All emergency directions',
      name: 'AllEmergencyDirections',
      desc: '',
      args: [],
    );
  }

  /// `burn`
  String get burn {
    return Intl.message(
      'burn',
      name: 'burn',
      desc: '',
      args: [],
    );
  }

  /// `Heatstroke`
  String get Heatstroke {
    return Intl.message(
      'Heatstroke',
      name: 'Heatstroke',
      desc: '',
      args: [],
    );
  }

  /// `Our enterprise`
  String get OurEnterprise {
    return Intl.message(
      'Our enterprise',
      name: 'OurEnterprise',
      desc: '',
      args: [],
    );
  }

  /// `ContactUs\n`
  String get ContactUs {
    return Intl.message(
      'ContactUs\n',
      name: 'ContactUs',
      desc: '',
      args: [],
    );
  }

  /// `{role, select, admin {Hi admin!} manager {Hi manager!} other {Hi visitor!}}`
  String pageHomeWelcomeRole(Object role) {
    return Intl.select(
      role,
      {
        'admin': 'Hi admin!',
        'manager': 'Hi manager!',
        'other': 'Hi visitor!',
      },
      name: 'pageHomeWelcomeRole',
      desc: '',
      args: [role],
    );
  }

  /// `{howMany, plural, one{1 message} other{{howMany} messages}}`
  String pageNotificationsCount(num howMany) {
    return Intl.plural(
      howMany,
      one: '1 message',
      other: '$howMany messages',
      name: 'pageNotificationsCount',
      desc: '',
      args: [howMany],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
