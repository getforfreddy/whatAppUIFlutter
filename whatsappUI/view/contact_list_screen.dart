import 'package:flutter/material.dart';
import 'package:studying/whatsappUI/view/whatsapp_chat_ui.dart';
import '../model/contact.dart';

class ContactListScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'John Doe', lastMessage: 'Hey, how are you?'),
    Contact(name: 'Jane Smith', lastMessage: 'Let\'s meet tomorrow.'),
    Contact(name: 'Mike Johnson', lastMessage: 'Got the files?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(contacts[index].name[0].toUpperCase()),
              ),
              title: Text(contacts[index].name),
              subtitle: Text(contacts[index].lastMessage),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WhatsAppUI(contact: contacts[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
