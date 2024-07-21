import 'package:bill/adaptor.dart';
import 'package:bill/event.dart';
import 'package:bill/iconfont.dart';
import 'package:bill/pages/tab/analysis/analysis.dart';
import 'package:bill/pages/tab/index.dart';
import 'package:bill/pages/tab/mine.dart';
import 'package:bill/pages/tab/wealth.dart';
import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  List<Widget> list = [];

  @override
  void initState() {
    list
      ..add(IndexPage())
      ..add(AnalysisPage())
      ..add(WealthPage())
      ..add(MinePage());

    bus.on('switchIndex', (dynamic index) {
      setState(() {
        _currentIndex = index;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconFont.iconIndex, size: 22.0),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconFont.iconAnalysis, size: 22.0),
            label: '分析',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconFont.iconWealth, size: 22.0),
            label: '资产',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconFont.iconMine, size: 22.0),
            label: '我的',
          )
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedFontSize: Adaptor.px(28.0),
        unselectedFontSize: Adaptor.px(28.0),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFFBEBEBE),
        selectedItemColor: const Color(0xFFF6C431),
      ),
    );
  }
}
