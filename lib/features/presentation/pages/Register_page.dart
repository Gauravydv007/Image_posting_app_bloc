import 'package:flutter/material.dart';
import 'package:social_media_app_bloc_001/features/presentation/widgets/my_button.dart';
import 'package:social_media_app_bloc_001/features/presentation/widgets/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController =  TextEditingController();
  final emailController =  TextEditingController();
  final pwController =  TextEditingController();
  final confirmPwController =  TextEditingController();



  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [

              Icon(
                Icons.lock_open_rounded, 
                size: 80,
                color: Theme.of(context).colorScheme.primary,
                ),
          
                const SizedBox(height: 20,),

                const Text('Create Your Account'),
                   const SizedBox(height: 20,),
          
                MyTextfield(
                  controller: nameController,
                  obscureText: false,
                  hinttext: 'Name',
                ),

                const SizedBox(height: 20,),
          
                MyTextfield(
                  controller: emailController,
                  obscureText: false,
                  hinttext: 'Email',
                ),

                const SizedBox(height: 20,),
          
                MyTextfield(
                  controller: pwController,
                  obscureText: false,
                  hinttext: 'Name',
                ),


                const SizedBox(height: 20,),
          
                MyTextfield(
                  controller: confirmPwController,
                  obscureText: false,
                  hinttext: 'Confirm Pw',
                ),

                const SizedBox(height: 20,),

                MyButton(
                  onTap: () {

                  }, 
                  tXt: 'Register', 
                  H: h*0.05, 
                  W: w*0.9
                  ),

                  Text("Login here")
          

          
            ],
          ),
        )
      ),
    );
  }
}