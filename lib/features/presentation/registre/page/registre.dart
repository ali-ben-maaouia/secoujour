import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../generated/l10n.dart';

class RegistreWidget extends StatelessWidget {
  const RegistreWidget({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE3E1D2),
      appBar: AppBar(
        backgroundColor: Color(0XFFFC082D),
        title: Text(S.of(context).registrePage),
      ),
      body: Container(
        color: Color(0XFFE3E1D2), // Définissez la couleur de fond désirée
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              _UsernameInput(),
              const Padding(padding: EdgeInsets.all(12)),
              _EmailInput(),
              const Padding(padding: EdgeInsets.all(12)),
              _PasswordInput(),
              const Padding(padding: EdgeInsets.all(12)),
              _ConfirmPasswordInput(),
              const Padding(padding: EdgeInsets.all(12)),
              _LoginButton(),
            ],
          ),
        ),
      ),

    );
  }
}
class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //buildWhen: (previous, current) => previous.password != current.password,

    return Center(
      child: Container(
          color: Colors.white,
          width: 250, // Définissez la largeur désirée
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200], // Couleur de l'arrière-plan
              hintText: "UserName",
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none, // Supprime la bordure
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0), // Espacement interne du texte
            ),
          )

      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //buildWhen: (previous, current) => previous.password != current.password,

    return Center(
      child: Container(
          color: Colors.white,
          width: 250, // Définissez la largeur désirée
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200], // Couleur de l'arrière-plan
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none, // Supprime la bordure
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0), // Espacement interne du texte
            ),
          )

      ),
    );
  }

}
class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //buildWhen: (previous, current) => previous.password != current.password,

    return Center(
      child: Container(
          color: Colors.white,
          width: 250, // Définissez la largeur désirée
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200], // Couleur de l'arrière-plan
              hintText: "Email",
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none, // Supprime la bordure
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0), // Espacement interne du texte
            ),
          )

      ),
    );
  }

}
class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //buildWhen: (previous, current) => previous.password != current.password,

    return Center(
      child: Container(
          color: Colors.white,
          width: 250, // Définissez la largeur désirée
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200], // Couleur de l'arrière-plan
              hintText: S.of(context).confirmPassword,
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none, // Supprime la bordure
              contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0), // Espacement interne du texte
            ),
          )

      ),
    );
  }

}
class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return BlocBuilder<LoginBloc, LoginState>(
    //builder: (context, state) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            key: const Key('loginForm_continue_raisedButton'),
            onPressed: () {
              //context.read<LoginBloc>().add(const LoginSubmitted());
            },
            child:  Text(S.of(context).inscrire,style: TextStyle(fontSize: 20.0),),
          ),
          SizedBox(height: 20), // Espace entre l'image et le premier TextField
          Text(S.of(context).haveAccount ,style: TextStyle(fontSize: 20.0),),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegistreWidget()),
              );
            },

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: S.of(context).login,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    //}

  }
}
