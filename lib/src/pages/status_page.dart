import 'package:flutter/material.dart';
import 'package:whatsappclone/constant.dart';
import 'package:whatsappclone/src/app.dart';

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
            children: const [
              CircleAvatar(),
              CircleAvatar(
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
        ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const ListTile(
                  leading: CircleAvatar(),
                  title: Text('Ayush'),
                  subtitle: Text("asfh"),
                ))
      ],
    );
  }
}
