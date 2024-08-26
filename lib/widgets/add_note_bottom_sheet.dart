import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hintText: 'Title',
            top: 16,
            bottom: 16,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Content',
            top: 60,
            bottom: 60,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
