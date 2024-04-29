import 'package:collecta_verse_pt2/components/my_button.dart';
import 'package:collecta_verse_pt2/components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  //textcontrollers
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();

  LoginPage({super.key});

  //log methos
  void login() {
    //print(email_controller.text);
    //print(password_controller.text);
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
                      onTap: () {
                        //Navigator.pushNamed(context, "/signup");
                      },
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
