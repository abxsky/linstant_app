import 'package:linstant_app/models/picture.dart';
import 'package:uuid/uuid.dart';

const kUuid = Uuid();

class Event {
  Event(
      {required this.title,
      required this.pictureList,
      required this.attendants,
      this.description,
      required this.duration})
      : id = kUuid.v1();

  final String id;
  final String title;
  final List<Picture> pictureList;
  final int attendants;
  final String? description;
  final Duration duration;
}
