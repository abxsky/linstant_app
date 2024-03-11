import 'package:linstant_app/models/event.dart';
import 'package:uuid/uuid.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

const kUuid = Uuid();

class User {
  User({
    required this.email,
    required this.username,
    required String password,
    this.friends = const [],
    this.events = const [],
  }) : id = kUuid.v1(), _password = password;

  final String id;
  final String email;
  final String username;
  final List<User> friends;
  final List<Event> events;

  final String _password;

  String get securePassword {
    final encodedPassword = utf8.encode(_password);
    final hash = sha256.convert(encodedPassword);
    return hash.toString();
  }
}