import 'package:amazon_clone/Common/widgets/custom_btn.dart';
import 'package:amazon_clone/Common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  // ignore: unused_field
  final _signUpFormKey = GlobalKey<FormState>();
  // ignore: unused_field
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),

            // ignore: prefer_const_constructors
            ListTile(

               tileColor: _auth == Auth.signup ? GlobalVariables.backgroundColor : GlobalVariables.greyBackgroundCOlor,
              title: const Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),

            if (_auth == Auth.signup)
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signUpFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomTextFiled(
                          controller: _nameController,
                          hintext: "Name",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFiled(
                          controller: _emailController,
                          hintext: "Email",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFiled(
                          controller: _passwordController,
                          hintext: "Password",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(text: 'Sign UP', onTap: () {}),
                      ],
                    ),
                  ),
                ),
              ),

            ListTile(
              tileColor: _auth == Auth.signin ? GlobalVariables.backgroundColor : GlobalVariables.greyBackgroundCOlor,
              title: const Text(
                'Sign-In Account',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                },
              ),
            ),

            
            if (_auth == Auth.signin)
      
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                child: Form(
                  key: _signInFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFiled(
                          controller: _emailController,
                          hintext: "Email",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextFiled(
                          controller: _passwordController,
                          hintext: "Password",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(text: 'Sign in', onTap: () {}),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      )),
    );
  }
}
