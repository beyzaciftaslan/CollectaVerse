import 'package:collecta_verse_pt2/components/my_button.dart';
import 'package:collecta_verse_pt2/components/my_textfield.dart';
import 'package:collecta_verse_pt2/helper/helper_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  final void Function() onTap;

  const SignupPage({super.key, required this.onTap});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //textcontrollers
  final TextEditingController email_controller = TextEditingController();

  final TextEditingController password_controller = TextEditingController();

  final TextEditingController confirm_pw_controller = TextEditingController();

  final TextEditingController username_controller = TextEditingController();

  //log methos
  void signup() async {
    //print(email_controller.text);
    //print(password_controller.text);

    //loading circle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    //sifre eslesiyo mu
    if (password_controller.text != confirm_pw_controller.text) {
      //circle
      Navigator.pop(context);

      //show err mesaage
      displayMessageToUser("Passwords do not match!", context);
    }
    //if passwords match
    else {
      //creat the user
      try {
        //create user
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email_controller.text,
                password: password_controller.text);

        //circle
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        //circle
        Navigator.pop(context);

        //show err mesaage
        displayMessageToUser(e.code, context);
      }
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
                  Icons.favorite_border_outlined,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                const SizedBox(height: 20),

                //uyg adi
                Text(
                  'C O L L E C T A  V E R S E',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 40),

                //mail textfield
                MyTextField(
                    hintText: "Username",
                    obscureText: false,
                    controller: username_controller),

                const SizedBox(height: 10),

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

                //password textfield
                MyTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: confirm_pw_controller,
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
                  text: "Signup",
                  onTap: signup,
                ),

                const SizedBox(height: 10),

                //dont you have an account? sign up here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        " Login Here!",
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
