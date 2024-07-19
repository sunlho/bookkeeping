import 'package:bill/adaptor.dart';
import 'package:flutter/material.dart';
import 'package:positioned_tap_detector_2/positioned_tap_detector_2.dart';

class PopupMenu extends StatefulWidget {
  final Widget child;
  final List<PopupMenuEntry> menus;
  final Function? callback;

  PopupMenu({required this.child, required this.menus, this.callback});

  @override
  State<StatefulWidget> createState() => _PopupMenu();
}

class _PopupMenu extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
    return PositionedTapDetector2(
      child: widget.child,
      onLongPress: (TapPosition position) {
        _showMenu(context, position);
      },
    );
  }

  PopupMenuButton _popMenu() {
    return PopupMenuButton(
      itemBuilder: (context) => widget.menus,
      onSelected: (dynamic value) {
        widget.callback?.call(value);
      },
    );
  }

  _showMenu(BuildContext context, TapPosition position) {
    double lPos = position.relative?.dx ?? 0 - 50;

    double tPos = position.global.dy + 20;

    if (tPos >= Adaptor.screenH() - 200) {
      tPos = tPos - 140;
    }

    PopupMenuButton pop = _popMenu();

    showMenu(
      context: context,
      items: pop.itemBuilder(context),
      // captureInheritedThemes: false,
      elevation: 2.0,
      position: RelativeRect.fromLTRB(lPos, tPos, 15, 0),
    ).then<void>((dynamic newValue) {
      if (!mounted) return null;
      if (newValue == null) {
        if (pop.onCanceled != null) pop.onCanceled!();
        return null;
      }
      if (pop.onSelected != null) pop.onSelected!(newValue);
    });
  }
}
