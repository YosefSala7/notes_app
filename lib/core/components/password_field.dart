import 'package:flutter/material.dart';

class MyPasswordField extends StatefulWidget {
  MyPasswordField({super.key, required TextEditingController this.myKey});

  final TextEditingController myKey;
  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
    bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.myKey,
      obscureText: isObsecure,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObsecure = !isObsecure;
            });
          },
          icon: Icon(Icons.visibility),
        ),
        label: Text("password"),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 1, color: Theme.of(context).colorScheme.primary),
        ),
        filled: true,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "This Field Is Required";
        }
      },
    );
  }
}
