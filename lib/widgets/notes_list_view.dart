import 'package:flutter/material.dart';
import 'package:notes_app/helper/app_color.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: CustomNotesItem(
            color: AppColors.pastelColors[index],
          ),
        );
      },
    );
  }
}
