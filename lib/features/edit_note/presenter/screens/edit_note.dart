import 'package:app/features/Home/data/models/note_model.dart';
import 'package:app/features/auth/presenter/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EditNote extends StatelessWidget {
  EditNote({super.key, required this.note});
  final _formKey = GlobalKey<FormState>();

  NoteModel note;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Note", style: theme.textTheme.displaySmall),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: note.title,
                        decoration: InputDecoration(
                          hintText: "Title",
                          prefixIcon: Icon(Icons.note_outlined),
                        ),
                      ),
                      Gap(20),
                      Stack(
                        children: [
                          TextFormField(
                            initialValue: note.body,
                            maxLines: 5,
                            maxLength: 500,
                            decoration: InputDecoration(
                              hintText: "Description",
                              prefix: SizedBox(width: 30, height: 20),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Icon(
                              Icons.notes_rounded,
                              color: theme.inputDecorationTheme.prefixIconColor,
                            ),
                          ),
                        ],
                      ),
                      Gap(MediaQuery.heightOf(context) / 2.5),
                      customPrimaryButton(
                        context: context,
                        formKey: _formKey,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: "Save",
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
