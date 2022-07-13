import 'package:exchange/ui/ProfilePage.dart';
import 'package:exchange/ui/home_page.dart';
import 'package:exchange/ui/market_view_page.dart';
import 'package:exchange/ui/ui_helper/bottom_nav.dart';
import 'package:flutter/material.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.compare_arrows_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNav(
        controller: _myPage,
      ),
      body: PageView(
        controller: _myPage,
        children: [
          HomePage(),
          MarketViewPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
