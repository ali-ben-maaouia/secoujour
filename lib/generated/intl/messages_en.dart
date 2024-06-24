// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m1(role) => "${Intl.select(role, {
            'admin': 'Hi admin!',
            'manager': 'Hi manager!',
            'other': 'Hi visitor!',
          })}";

  static String m0(howMany) =>
      "${Intl.plural(howMany, one: '1 message', other: '${howMany} messages')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AbsenceReponse": MessageLookupByLibrary.simpleMessage(
            "Lack of response and breathing normally\n (for the infant)"),
        "Adult": MessageLookupByLibrary.simpleMessage("Adult/elderly"),
        "AllEmergencyDirections":
            MessageLookupByLibrary.simpleMessage("All emergency directions"),
        "Chokingchild":
            MessageLookupByLibrary.simpleMessage("Choking in a child"),
        "CircularDistress":
            MessageLookupByLibrary.simpleMessage("Circular distress"),
        "Complet": MessageLookupByLibrary.simpleMessage("Complete"),
        "ContactUs": MessageLookupByLibrary.simpleMessage("ContactUs\n"),
        "CriseAasthme": MessageLookupByLibrary.simpleMessage("Crise d\'asthme"),
        "CriseEpilepsie":
            MessageLookupByLibrary.simpleMessage("Crise d\'épilepsie"),
        "EmergencyCall": MessageLookupByLibrary.simpleMessage("Emergency call"),
        "Emergencycontent":
            MessageLookupByLibrary.simpleMessage("Emergency content?"),
        "Emergencycontentitem1": MessageLookupByLibrary.simpleMessage(
            "Choking in (adults and the elderly)"),
        "Etouffement": MessageLookupByLibrary.simpleMessage("Choking (infant)"),
        "Heatstroke": MessageLookupByLibrary.simpleMessage("Heatstroke"),
        "Heatwave": MessageLookupByLibrary.simpleMessage("Heat wave"),
        "Inemergency":
            MessageLookupByLibrary.simpleMessage("In an emergency?\n"),
        "Inemergency2": MessageLookupByLibrary.simpleMessage(
            "Start the assessment to find out what you need to do quickly.\n"),
        "InsensibiliteRespiration": MessageLookupByLibrary.simpleMessage(
            "Unresponsiveness and abnormal breathing\n (adolescent and adult)"),
        "InsensibiliteRespiration2": MessageLookupByLibrary.simpleMessage(
            "Unresponsiveness and abnormal breathing\n (for the infant)"),
        "LoginPage": MessageLookupByLibrary.simpleMessage("Login Page"),
        "OurEnterprise": MessageLookupByLibrary.simpleMessage("Our enterprise"),
        "Preparedness": MessageLookupByLibrary.simpleMessage("Preparedness"),
        "RecommendedDirections":
            MessageLookupByLibrary.simpleMessage("Recommended directions"),
        "RoadSafety": MessageLookupByLibrary.simpleMessage("Road Safety"),
        "SecuriteAquatique":
            MessageLookupByLibrary.simpleMessage("Water Safety"),
        "SevereBleeding":
            MessageLookupByLibrary.simpleMessage("Severe bleeding"),
        "Startrating": MessageLookupByLibrary.simpleMessage("Start rating"),
        "accident": MessageLookupByLibrary.simpleMessage("Stroke"),
        "age": MessageLookupByLibrary.simpleMessage(
            "What is the age of the child?"),
        "allergie": MessageLookupByLibrary.simpleMessage("allergy"),
        "apprendre": MessageLookupByLibrary.simpleMessage("Learn"),
        "breathingHeavily": MessageLookupByLibrary.simpleMessage(
            "Is the person breathing heavily?"),
        "breathingNormally": MessageLookupByLibrary.simpleMessage(
            "Is the person breathing normally?"),
        "burn": MessageLookupByLibrary.simpleMessage("burn"),
        "calandrier": MessageLookupByLibrary.simpleMessage("Offer help"),
        "child": MessageLookupByLibrary.simpleMessage("child"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirme Password"),
        "consultation": MessageLookupByLibrary.simpleMessage("View your plan"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emergencyFirstAid": MessageLookupByLibrary.simpleMessage(
            "The person may need emergency first aid in order to:"),
        "haveAccount":
            MessageLookupByLibrary.simpleMessage("you don\'t have an account?"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "inOrderTo": MessageLookupByLibrary.simpleMessage("in order to:"),
        "infant": MessageLookupByLibrary.simpleMessage("infant"),
        "inscrire": MessageLookupByLibrary.simpleMessage("Register"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginusername": MessageLookupByLibrary.simpleMessage("username"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "pageHomeWelcomeRole": m1,
        "pageNotificationsCount": m0,
        "password": MessageLookupByLibrary.simpleMessage("password"),
        "personRespond":
            MessageLookupByLibrary.simpleMessage("Does the person respond?"),
        "plan": MessageLookupByLibrary.simpleMessage("Your first aid plan"),
        "plan1":
            MessageLookupByLibrary.simpleMessage("Safety and Preparedness"),
        "plan1item1":
            MessageLookupByLibrary.simpleMessage("Safety and preparedness"),
        "plan2": MessageLookupByLibrary.simpleMessage("first aid"),
        "plan3": MessageLookupByLibrary.simpleMessage(
            "Skin lesions and trauma in\n athletes"),
        "profile": MessageLookupByLibrary.simpleMessage("About Us"),
        "registrePage": MessageLookupByLibrary.simpleMessage("Registre Page"),
        "safety": MessageLookupByLibrary.simpleMessage("safety"),
        "search": MessageLookupByLibrary.simpleMessage("Enter a search term"),
        "tunis": MessageLookupByLibrary.simpleMessage("Tunisia"),
        "yes": MessageLookupByLibrary.simpleMessage("yes")
      };
}
