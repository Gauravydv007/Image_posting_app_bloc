import 'package:flutter/material.dart';
import 'package:social_media_app_bloc_001/features/presentation/widgets/my_button.dart';
import 'package:social_media_app_bloc_001/features/presentation/widgets/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailContoller = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_rounded, 
                size: 80,
                color: Theme.of(context).colorScheme.primary,
                ),
          
                const SizedBox(height: 20,),
          
                MyTextfield(
                  controller: emailContoller,
                  obscureText: false,
                  hinttext: 'Email',
                ),
          
                const SizedBox(height: 20,),
                MyTextfield(
                  controller: passwordController,
                  obscureText: false,
                  hinttext: 'Password',
                ),

                SizedBox(height: 20,),

                MyButton(
                  onTap: () {

                  }, 
                  tXt: 'Login', 
                  H: h*0.052, 
                  W:w*0.85,
                  ),

                  SizedBox(height: 30,),

                  Text("Register here")


          
            ],
          ),
        )
      ),
    );
  }
}