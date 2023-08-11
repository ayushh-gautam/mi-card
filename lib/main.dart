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
    final contactBook = ContactBook();

    return Scaffold(
      appBar: AppBar(
        title: Text('Haha '),
      ),
      body: Scaffold(
        body: ListView.builder(
          itemCount: contactBook.length,
          itemBuilder: (context, index) {
            final contact = contactBook.contact(atIndex: index)!;
            return ListTile(
              title: Text(contact.name),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ContactPage();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late final TextEditingController _contactController;

  @override
  void initState() {
    super.initState();
    _contactController = TextEditingController();
  }

  @override
  void dispose() {
    _contactController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new contact'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _contactController,
            decoration: InputDecoration(hintText: 'Enter your contact'),
          )
        ],
      ),
    );
  }
}
