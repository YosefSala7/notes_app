import 'package:app/features/Home/data/models/note_model.dart';
import 'package:app/core/components/card.dart';
import 'package:app/features/Home/presenter/manager/getNote_states.dart';
import 'package:app/features/Home/presenter/manager/getNotes_cubit.dart';
import 'package:app/features/add_note/presenter/add_note.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddNote()),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "My Notes",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "search notes...",
                  prefixIconConstraints: BoxConstraints(
                    minHeight: 0,
                    minWidth: 40,
                  ),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            BlocProvider<NoteCubit>(
              create: (context) => NoteCubit()..getNotes(),
              child: BlocBuilder<NoteCubit, NoteState>(
                builder: (context, state) {
                  if (state is LoadingNote) {
                    return CircularProgressIndicator();
                  } else if (state is NoteFailure) {
                    return Text(state.e);
                  } else if (state is NoteSuccess) {
                    return Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 12),
                        itemCount: state.notes.length,
                        itemBuilder: (context, index) {
                          return myCard(
                            note: state.notes[index],
                            context: context,
                          );
                        },
                      ),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
