import 'package:app/features/auth/presenter/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddNote extends StatelessWidget {
  AddNote({super.key});
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Note", style: theme.textTheme.displaySmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Title",
                      prefixIcon: Icon(Icons.note_outlined),
                    ),
                  ),
                  Gap(20),
                  Stack(
                    children: [
                      TextFormField(
                        maxLines: 5,
                        maxLength: 500,
                        controller: _descriptionController,
                        decoration: InputDecoration(
                          hintText: "Description",
                          prefix: SizedBox(
                            width: 30,
                            height:
                                20, // Providing height prevents the layout error
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Icon(Icons.notes_rounded,color: theme.inputDecorationTheme.prefixIconColor,)),
                    ],
                  ),
                  Gap(MediaQuery.heightOf(context)/2.5),
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
    );
  }
}
