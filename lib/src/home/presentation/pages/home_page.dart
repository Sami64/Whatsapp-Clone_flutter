import 'package:flutter/material.dart';
import 'package:whatsapp_cl/src/call_history/presentation/pages/call_history_page.dart';
import 'package:whatsapp_cl/src/camera/presentation/pages/camera_page.dart';
import 'package:whatsapp_cl/src/chats/presentation/pages/chats_page.dart';
import 'package:whatsapp_cl/src/status/presentation/pages/status_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatsPage(),
          StatusPage(),
          CallHistoryPage(),
        ],
      ),
    );
  }
}
