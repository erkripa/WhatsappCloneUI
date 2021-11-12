import 'package:flutter/material.dart';
import 'package:whatsappclone/constant.dart';
import 'package:whatsappclone/src/pages/call_page.dart';
import 'package:whatsappclone/src/pages/chat_page.dart';
import 'package:whatsappclone/src/pages/status_page.dart';
import '../settings/settings_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> tabs = [
    const Tab(child: Icon(Icons.camera_alt)),
    const Tab(child: Text("CHATS", style: kTabStyle)),
    const Tab(child: Text("STATUS", style: kTabStyle)),
    const Tab(child: Text("CALLS", style: kTabStyle)),
  ];

  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      elevation: 1,
      title: const Text('Whatsapp'),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.restorablePushNamed(context, SettingsView.routeName);
          },
        ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        controller: tabController,
        tabs: tabs,
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: TabBarView(controller: tabController, children: const <Widget>[
        Center(child: Text("Camera")),
        ChatPage(),
        StatusPage(),
        CallPage(),
      ]),
    );
  }
}
