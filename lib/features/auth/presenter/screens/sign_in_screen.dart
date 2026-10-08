import 'package:app/core/components/my_textfield.dart';
import 'package:app/core/components/password_field.dart';
import 'package:app/features/Home/presenter/screens/home.dart';
import 'package:app/features/auth/presenter/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.heightOf(context);
    double width = MediaQuery.widthOf(context);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CheckedNoteImg(height: height, width: width),
                Gap(10),
                header(data: "Login", theme: theme),
                Gap(40),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      myTextField(
                        context: context,
                        hint: "example@gmail.com..",
                        label: "Email",
                        preIcon: Icons.email,
                        key: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This Field Is Required";
                          }
                          if (!value.contains("@")) {
                            return "must contain @";
                          }
                        },
                      ),
                      Gap(20),
                      MyPasswordField(myKey: _passwordController),
                      Gap(25),
                      Text(
                        "Forgot Your Password?",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gap(15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                          fixedSize: Size(width, 40),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Home();
                                },
                              ),
                            );
                          }
                        },
                        child: Text("Sign In", style: TextStyle(fontSize: 18)),
                      ),
                      Gap(10),
                      AuthSwitchPrompt(
                        theme:theme,
                        context: context,
                        text: "Do Not Have Account?",
                        actionText: "Sign Up",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUp();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}