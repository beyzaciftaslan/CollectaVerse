import 'package:collecta_verse_pt2/components/my_button.dart';
import 'package:collecta_verse_pt2/components/my_textfield.dart';
import 'package:collecta_verse_pt2/helper/helper_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {

  final void Function() onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //textcontrollers
  final TextEditingController email_controller = TextEditingController();

  final TextEditingController password_controller = TextEditingController();

  //log methos
  void login() async {
    //print(email_controller.text);
    //print(password_controller.text);

    //loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    //signin
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email_controller.text,
          password: password_controller.text);

          //circle
          if(context.mounted){
            Navigator.pop(context);
          }

    }
    //display errs
    on FirebaseAuthException catch (e) {
      //circle
      Navigator.pop(context);

      //show err mesaage
      displayMessageToUser(e.code, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(
                  Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(height: 25),

                //uyg adi
                Text(
                  'C O L L E C T A  V E R S E',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 50),

                //mail textfield
                MyTextField(
                    hintText: "E-mail",
                    obscureText: false,
                    controller: email_controller),

                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: password_controller,
                ),

                const SizedBox(height: 10),

                //forgot p
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                //log in button
                MyButton(
                  text: "Login",
                  onTap: login,
                ),

                const SizedBox(height: 10),

                //dont you have an account? sign up here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't you have an account?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        " Signup Here!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
