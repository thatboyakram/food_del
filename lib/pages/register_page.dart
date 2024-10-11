import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
class RegisterPage extends StatelessWidget {
  void Function()? onTap;
   RegisterPage({super.key, required this.onTap});

  final TextEditingController pwController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              "Let's create an account for you.",
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

            //confirm password textfield
            MyTextField(
                controller: confirmPwController,
                hintText: 'Confirm password',
                obscureText: true),
            const SizedBox(
              height: 10.0,
            ),
            //sign in button
            MyButton(onTap: () {}, text: 'Sign Up'),
            const SizedBox(
              height: 25,
            ),

            //already have an account? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                    onTap: onTap,
                    child: Text('Login here',
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
