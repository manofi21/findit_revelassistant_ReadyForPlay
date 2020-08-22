import 'package:flutter/material.dart';
import 'view/home.dart';
import 'view/notification.dart';
import 'view/profile.dart';
import 'view/widget/image_assets.dart';

class BottomTabbar extends StatefulWidget {
  const BottomTabbar({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomTabbarState();
}

class _BottomTabbarState extends State<BottomTabbar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<Widget> _kTabPages = [Notification_View(), Home(), Profile_View()];

  List<Tab> _kTabs = <Tab>[
    Tab(
      icon: notif_icon,
      // child: Text("Notification"),
    ),
    Tab(
      icon: home_icon,
      // child: Text("Beranda"),
    ),
    Tab(
      icon: notif_icon,
      // child: Text("Akun"),
    ),
  ];

  static const _kText = <String>["Notification", "Home", "Profile"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.transparent.withOpacity(0.2),
                    blurRadius: 9.0,
                    spreadRadius: 3.0,
                    offset: Offset(
                      0.0,
                      1.0,
                    ))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
          child: TabBar(
            tabs: _kTabs,
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          children: _kTabPages,
          controller: _tabController,
        ));
  }
}
