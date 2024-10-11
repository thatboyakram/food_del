import 'package:flutter/material.dart';
import 'package:food_del/components/my_button.dart';
import 'package:food_del/components/my_textfield.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  void Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
// editing controllers
  final TextEditingController pwController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  //login function
  void login(){
    /*

    authentication here later on in this section
     */
    // navigate to the home page
    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_outlined,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //message, app slogan
            const Text(
              "Foodie Delivery",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            //email textfield
            MyTextField(
                controller: emailController,
                hintText: 'Enter email',
                obscureText: false),
            //password textfield
            MyTextField(
                controller: pwController,
                hintText: 'Enter your password',
                obscureText: true),
            const SizedBox(
              height: 10.0,
            ),
            //sign in button
            MyButton(onTap:login,
                text: 'Sign In'),
            const SizedBox(
              height: 25,
            ),

            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                    onTap: widget.onTap,
                    child: Text('Register now.',
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
