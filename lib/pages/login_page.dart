import 'package:flutter/material.dart';
import 'package:resto/components/my_button.dart';
import 'package:resto/components/my_text.dart';
import 'package:resto/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //login method
  void login(){

    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage() ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
                Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            Text(
              "Duhane Twese App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(

            ),
            MyText(controller: emailController, hintText: "Email", obscureText: false),
            const SizedBox(
              height: 10,
            ),
            MyText(controller: passwordController, hintText: "Password", obscureText: true),
            //message, app slogan

            // password textfield

            // sign in button
            MyButton(onTap: login, text: "Sign In"),

            //not a member
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary
                  ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
