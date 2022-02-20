import 'package:flutter/material.dart';

import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              //color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /////
                  Text('Sign in to continue'),
                  Text(
                    'Vegi',
                    style:
                        TextStyle(fontSize: 50, color: Colors.white, shadows: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.green,
                      ),
                    ]),
                  ),
                  //////////////////////
                  SignInButton(
                    Buttons.Apple,
                    text: "Sign in with Apple",
                    onPressed: () {},
                  ),

                  SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: () {},
                  ),

                  Text(
                    'Signing in your are agreeing to our',
                    style: TextStyle(color: Colors.green),
                  ),

                  Text('Terms and pricacy Policy'),
                ],
              ),
            ),
          ],
        ),

        ///
      ),
    );
  }
}
