import 'package:flutter/material.dart';
import 'package:geopulse/Component/my_button.dart';
import 'package:geopulse/Component/my_textfield.dart';
import 'package:geopulse/Pages/my_home_page.dart';

class MySignIn extends StatefulWidget {
  const MySignIn({super.key});

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(
              height: 50,
            ),
            // Email Textfield
            MyTextfield( 
              controller: idController,
              hintText: "Enter Email", 
              obscureText: false,
            ),

            const SizedBox(
              height: 20,
            ),
            // Password Textfield
            MyTextfield(
              controller: passwordController,
              hintText: 'Enter Password', 
              obscureText: true,
            ),

            const SizedBox(
              height: 20,
            ),
            // button
            MyButton(
              text: 'Sign In', 
              ontap: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  )
                );
              },
            ),

            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}