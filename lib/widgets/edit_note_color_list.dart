import 'package:flutter/material.dart';
import 'package:notes_app/helper/app_color.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  List<Color> appColors = AppColors.pastelColors;
  @override
  void initState() {
    currentIndex = appColors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: appColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.noteModel.color = appColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: appColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}