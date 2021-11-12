import 'package:flutter/material.dart';
import 'package:whatsappclone/constant.dart';
import 'package:whatsappclone/src/app.dart';
import 'package:whatsappclone/src/models/all_users_models.dart';
import 'package:whatsappclone/src/models/status_models.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListTile(
          leading: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(statusData[1].imageUrl),
              ),
              const CircleAvatar(
                radius: 12,
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                child: Icon(Icons.add),
              ),
            ],
          ),
          title: const Text('My Status', style: kUserNameStyle),
          subtitle: const Text(
            'Tap to add status update',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Recent updates",
                style:
                    kUserMessageStyle.copyWith(fontWeight: FontWeight.bold))),
        Expanded(
          child: ListView.builder(
              itemCount: statusData.length,
              itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(statusData[index].imageUrl),
                    ),
                    title: Text(statusData[index].name),
                    subtitle: Text(statusData[index].time),
                  )),
        )
      ],
    );
  }
}
