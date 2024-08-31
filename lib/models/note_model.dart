import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}

// class NoteModelAdapter extends TypeAdapter<NoteModel> {
//   @override
//   final int typeId = 0;
//   @override
//   NoteModel read(BinaryReader reader) {
//     return NoteModel(
//       title: reader.read(),
//       subTitle: reader.read(),
//       date: reader.read(),
//       color: reader.read(),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, NoteModel obj) {
//     writer.write(obj.title);
//     writer.write(obj.subTitle);
//     writer.write(obj.date);
//     writer.write(obj.color);
//   }
// }
