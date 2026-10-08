import 'package:app/core/components/my_textfield.dart';
import 'package:app/core/components/password_field.dart';
import 'package:app/features/Home/presenter/screens/home.dart';
import 'package:app/features/auth/presenter/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

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
                header(data: "Create Your Account", theme: theme),
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
                      myTextField(
                        context: context,
                        hint: "John Doe",
                        label: "Name",
                        preIcon: Icons.person,
                        key: _nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This Field Is Required";
                          }
                        },
                      ),
                      Gap(20),
                      MyPasswordField(myKey: _passwordController),
                      Gap(40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.primary,
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
                        child: Text("Sign Up", style: TextStyle(fontSize: 18)),
                      ),
                      Gap(10),
                      AuthSwitchPrompt(
                        context: context,
                        theme: theme,
                        text: "Already Have Account?",
                        actionText: "Sign In",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignIn();
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

Widget CheckedNoteImg({required double height, required double width}) {
  return Image.asset("assets/imgs/notesAuthImg.png", height: height / 6);
}

Widget header({required String data, required ThemeData theme}) {
  return Text(
    data,
    style: theme.textTheme.displayLarge!.copyWith(
      fontFamily: GoogleFonts.poppins().fontFamily,
    ),
  );
}

Widget AuthSwitchPrompt({
  required String text,
  required String actionText,
  required Function()? onTap,
  required BuildContext context,
  required ThemeData theme,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: theme.textTheme.bodyMedium!.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
      GestureDetector(
        onTap: onTap,
        child: Text(
          actionText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
