import 'package:flutter/material.dart';

Widget myTextField({
  required String hint,
  required String label,
  required IconData preIcon,
  required TextEditingController key,
  required String? Function(String?)? validator,
  required BuildContext context
}) {
  return TextFormField(
    controller: key,
    decoration: InputDecoration(
      prefixIcon: Icon(preIcon),
      label: Text(label),
      hint: Text(hint),
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
    validator: validator,
  );
}
