import 'package:app/core/themes/app_colors.dart';
import 'package:app/features/Home/data/models/note_model.dart';
import 'package:app/features/edit_note/presenter/screens/edit_note.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget myCard({
  required NoteModel note,
  required BuildContext context,
}) {
  ThemeData theme = Theme.of(context);
  return Container(
    height: 100,
    padding: EdgeInsets.only(left: 15, top: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: theme.cardTheme.color,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.colorScheme.primary.withAlpha(40),
          ),
          child: Icon(
            Icons.note_alt_rounded,
            size: 30,
            color: theme.colorScheme.primary,
          ),
        ),
        Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Text(
                note.title,
                style: theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Gap(5),
            SizedBox(
              width: 200,
              child: Text(
                note.body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: AppColors.textHint,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              constraints: BoxConstraints(maxHeight: 400),
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: theme.colorScheme.primary.withAlpha(40),
                              ),
                              child: Icon(
                                Icons.note_alt_rounded,
                                size: 30,
                                color: theme.colorScheme.primary,
                              ),
                            ),
                            Gap(15),
                            Column( 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Text(
                                    note.title,
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Gap(5),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    note.body,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                      color: AppColors.textHint,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Gap(5),
                      clickAbleRow(
                        theme: theme,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditNote(note: note,)));
                        },
                        prefexIcon: Icons.edit,
                        title: "Edit Note",
                      ),
                      Gap(5),
                      Divider(),
                      Gap(5),
                      clickAbleRow(
                        theme: theme,
                        onTap: () {},
                        prefexIcon: Icons.delete,
                        title: "Delete Note",
                      ),
                      Gap(20),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.widthOf(context), 50),
                          foregroundColor: theme.primaryColor,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancle",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Gap(30),
                    ],
                  ),
                );
              },
            );
          },
          icon: Icon(Icons.more_vert),
        ),
      ],
    ),
  );
}

Widget clickAbleRow({
  required ThemeData theme,
  required Function()? onTap,
  required IconData prefexIcon,
  required String title,
}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(prefexIcon, size: 30, color: theme.iconTheme.color),
          Gap(20),
          Text(
            title,
            style: theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios_rounded, color: theme.iconTheme.color),
        ],
      ),
    ),
  );
}
