import 'package:flutter/material.dart';
import 'package:whatsappclone/src/models/call_models.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  static const String routeName = '/callpage';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) {
        final data = callData[index];
        return ListTile(
          leading: CircleAvatar(
            foregroundImage: NetworkImage(data.imageUrl),
          ),
          title: Text(data.name),
          subtitle: Row(
            children: [
              data.callType,
              const SizedBox(width: 5.0),
              Text(data.time)
            ],
          ),
          trailing: data.calledIcon,
        );
      },
    );
  }
}
