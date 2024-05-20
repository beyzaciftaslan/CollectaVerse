import 'dart:typed_data';

import 'package:collecta_verse_pt2/components/my_button.dart';
import 'package:collecta_verse_pt2/components/my_textfield.dart';
//import 'package:collecta_verse_pt2/helper/helper_functions.dart';
import 'package:collecta_verse_pt2/mobile_layout.dart';
import 'package:collecta_verse_pt2/pages/login_page.dart';
import 'package:collecta_verse_pt2/services/auth/auth_methods.dart';
import 'package:collecta_verse_pt2/utils/colors.dart';
//import 'package:collecta_verse_pt2/services/auth/login_or_signup.dart';
import 'package:collecta_verse_pt2/utils/utils.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class SignupPage extends StatefulWidget {
  //final void Function() onTap;

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //textcontrollers
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _pwController = TextEditingController();

  final TextEditingController _confirmPwController = TextEditingController();

  final TextEditingController _usernameController = TextEditingController();
  bool _isLoading = false;
  Uint8List? _image;
  final TextEditingController _bioController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _pwController.dispose();
    _confirmPwController.dispose();
    _usernameController.dispose();
  }

  void selectImage() async {
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  //log methos
  // void signup() async {
  //   //loading circle
  //   showDialog(
  //     context: context,
  //     builder: (context) => const Center(
  //       child: CircularProgressIndicator(),
  //     ),
  //   );

  //   //sifre eslesiyo mu
  //   if (_pwController.text != _confirmPwController.text) {
  //     //circle
  //     Navigator.pop(context);

  //     //show err mesaage
  //     displayMessageToUser("Passwords do not match!", context);
  //   }
  //   //if passwords match
  //   else {
  //     //creat the user
  //     try {
  //       //create user
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(
  //               email:  _emailController.text,
  //               password: _pwController.text);

  //       //circle
  //       Navigator.pop(context);
  //     } on FirebaseAuthException catch (e) {
  //       //circle
  //       Navigator.pop(context);

  //       //show err mesaage
  //       displayMessageToUser(e.code, context);
  //     }
  //   }
  // }

  void signUpUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().signUpUser(
      email: _emailController.text,
      password: _pwController.text,
      username: _usernameController.text,
      file: _image!,
      bio: _bioController.text,
    );
    setState(() {
      _isLoading = false;
    });
    if (res != 'success') {
      showSnackBar(context, res);
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MobileScreenLayout(),
        ),
      );
    }
  }

  void navigateToLogin() async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
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
                // Icon(
                //   Icons.favorite_border_outlined,
                //   size: 80,
                //   color: Colors.black,
                // ),
                //Flexible(child: Container(), flex: 2),
                const SizedBox(height: 20),
                Stack(children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 64,
                          backgroundImage: MemoryImage(_image!),
                          backgroundColor: color4,
                        )
                      : const CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Default_pfp.svg/340px-Default_pfp.svg.png'),
                          backgroundColor: color4,
                        ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: selectImage,
                      icon:  const Icon(
                        LineIcons.camera,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 20),
                //uyg adi
                Text(
                  'C O L L E C T A  V E R S E',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),

                //mail textfield
                MyTextField(
                    hintText: "Username",
                    obscureText: false,
                    controller: _usernameController),

                const SizedBox(height: 10),

                //mail textfield
                MyTextField(
                    hintText: "E-mail",
                    obscureText: false,
                    controller: _emailController),

                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: _pwController,
                ),

                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: _confirmPwController,
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
                  onTap: signUpUser,
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
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
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
