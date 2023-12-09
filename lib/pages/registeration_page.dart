import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterationPage extends StatelessWidget {
  RegisterationPage({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  void signin() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.message,
              color: Colors.lightBlue[300],
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "create your account",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obsecure: false),
            const SizedBox(
              height: 10,
            ),
            MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obsecure: true),
            const SizedBox(
              height: 10,
            ),
            MyTextfield(
                controller: confirmPasswordController,
                hintText: "confirm Password",
                obsecure: true),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              text: "Sign in",
              onTap: signin,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Text("already a user"),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 16),
                  ),
                )
              ],
            )
          ]),
        )),
      ),
    );
  }
}
