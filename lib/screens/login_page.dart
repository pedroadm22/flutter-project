import 'package:flutter/material.dart';
import 'package:flutter_custom_icons/flutter_custom_icons.dart';
import '../widgets/login/button_widget.dart';
import '../widgets/login/forgot_password_widget.dart';
import '../widgets/login/main_title.dart';
import '../widgets/login/widget_remember_me.dart';
import '../widgets/login/input_area.dart';

class LoginPage extends StatelessWidget {
  
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.outline,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            SizedBox(height: 80),
            Column(
              spacing: 5.0,
              children: [
                MainTitle(mainText: "LOGIN TO"),
                MainTitle(mainText: "YOUR ACCOUNT"),
              ],
            ),
            SizedBox(height: 100),
            Container(
              height: 200,
              width: 450,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Form(
                child: Column(
                  spacing: 5.0,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputArea(icon: Icons.email, hintText: "Email"),
                    SizedBox(height: 20),
                    InputArea(
                      icon: Icons.lock,
                      hintText: "Password",
                      obscureText: true,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 50.0,
              children: [RememberMeCheckbox(), ForgotPassWordLink()],
            ),
            SizedBox(height: 20),
            ButtonWidget(buttonText: "LOGIN"),
            ButtonWidget(buttonText: "CRIAR CONTA"),

            SizedBox(height: 20),

            Row(
              spacing: 8.0,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FeatherIcons.facebook,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 30,
                ),
                Icon(
                  FluentIcons.google,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 30,
                ),
                Icon(
                  FeatherIcons.instagram,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// @Preview(name: "Login Page")
// Widget previewLoginPage() {
//   return const LoginPage();
// }
