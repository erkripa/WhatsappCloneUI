import 'package:flutter/material.dart';
import 'package:whatsappclone/constant.dart';
import 'package:whatsappclone/src/models/all_users_models.dart';
import 'package:whatsappclone/src/pages/chat_details.page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userData.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            foregroundImage: NetworkImage(userData[index].imageUrl),
          ),
          title: Text(userData[index].name, style: kUserNameStyle),
          subtitle: Text(
            userData[index].message,
            style: kUserMessageStyle,
          ),
          trailing: Text(userData[index].time, style: kTimeStyle),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatDetailsPage(),
              settings: RouteSettings(arguments: userData[index]),
            ),
          ),
        );
      },
    );
  }
}
