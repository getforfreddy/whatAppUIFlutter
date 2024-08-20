import 'package:flutter/material.dart';
import 'package:studying/whatsappUI/view/statusListView.dart';
import 'call_screen.dart';
import 'contact_list_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Clone'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Chat', icon: Icon(Icons.chat)),
            Tab(text: 'Image', icon: Icon(Icons.image)),
            Tab(text: 'Call', icon: Icon(Icons.call)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ContactListScreen(),  // Display ContactListScreen in the Chat tab
          StatusListView(),        // Display ImageScreen in the Image tab
          CallScreen(),         // Display CallScreen in the Call tab
        ],
      ),
    );
  }
}
