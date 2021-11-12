import 'package:flutter/material.dart';
import 'package:whatsappclone/src/models/all_users_models.dart';

class ChatDetailsPage extends StatelessWidget {
  const ChatDetailsPage({
    Key? key,
  }) : super(key: key);

  static const String routeName = '/chatDetails';
  @override
  Widget build(BuildContext context) {
    final userData = ModalRoute.of(context)!.settings.arguments as Users;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => print("Profile Image Tapped"),
            child:   CircleAvatar(
              foregroundImage: NetworkImage(userData.imageUrl),
            ),
          ),
        ),
        title:  Text(userData.name),
        actions: [
          IconButton(
              icon: const Icon(Icons.videocam),
              onPressed: () => print("Video Call Implementation")),
          IconButton(
              icon: const Icon(Icons.call),
              onPressed: () => print("Audio Call Implementation")),
          IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () => print("Three Dot Implementation")),
        ],
      ),
    );
  }
}
