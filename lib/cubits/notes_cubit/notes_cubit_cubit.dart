import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/model/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  
}
