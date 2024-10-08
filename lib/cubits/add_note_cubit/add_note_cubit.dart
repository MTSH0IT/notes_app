import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try{
      var notesBox = Hive.box<NoteModel>('notesBox');
      notesBox.add(note);
      emit(AddNoteSuccess());
    } catch(e){
      emit(AddNoteFailer(
        e.toString()
      ));
    }
  }
}