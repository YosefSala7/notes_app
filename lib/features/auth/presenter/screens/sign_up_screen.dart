import 'package:app/core/components/my_textfield.dart';
import 'package:app/core/components/password_field.dart';
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
                const Gap(10),
                header(data: "Create Your Account", theme: theme),
                const Gap(40),
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
                          if (value == null || value.isEmpty) {
                            return "This Field Is Required";
                          }
                          if (!value.contains("@")) {
                            return "must contain @";
                          }
                          return null;
                        },
                      ),
                      const Gap(20),
                      myTextField(
                        context: context,
                        hint: "John Doe",
                        label: "Name",
                        preIcon: Icons.person,
                        key: _nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "This Field Is Required";
                          }
                          return null;
                        },
                      ),
                      const Gap(20),
                      MyPasswordField(myKey: _passwordController),
                      const Gap(40),
                      customPrimaryButton(
                        context: context,
                        formKey: _formKey,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Placeholder();
                                },
                              ),
                            );
                          }
                        },
                        title: "Sign Up",
                      ),
                      const Gap(10),
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