import 'package:hive_ce/hive.dart';
import 'package:effective_test_app/src/features/characters/list/domain/models/origin.dart';

class OriginAdapter extends TypeAdapter<Origin> {
  @override
  final int typeId = 1;

  @override
  Origin read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return Origin(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Origin obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }
}