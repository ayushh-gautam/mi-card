// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class Contacts {
  final String name;
  Contacts({
    required this.name,
  });
}

//11:39
class ContactBook {
  ContactBook._sharedInstance();
  static final ContactBook _shared = ContactBook._sharedInstance();
  factory ContactBook() => _shared;

  final List<Contacts> _contacts = [];
  int get length => _contacts.length;

  void addContact({required Contacts contact}) {
    _contacts.add(contact);
  }

  void removeContact({required Contacts contact}) {
    _contacts.remove(contact);
  }

  Contacts? contact({required int atIndex}) =>
      _contacts.length > atIndex ? _contacts[atIndex] : null;
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
