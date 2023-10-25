import 'package:booking_app/getx/home/drawer_controller.dart';
import 'package:booking_app/view/constants/fonts/air_bnb_cereal.dart';
import 'package:booking_app/view/pages/home/bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    super.key,
    required this.items,
    this.centerItemText = 'Add',
    this.height = 70.0,
    this.iconSize = 27.0,
    this.notchedShape = const CircularNotchedRectangle(),
    required this.backgroundColor,
    required this.color,
    required this.selectedColor,
    required this.onTabSelected,
  }) {
    assert(items.length == 2 || items.length == 4);
  }
  final List<FABBottomAppBarItem> items;
  final String? centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final NotchedShape? notchedShape;
  final Color selectedColor;

  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;
  final drawerController = Get.find<DrawerControllerGetx>();

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    items.insert(items.length >> 1, _buildMiddleTabItem());

    return Obx(() {
      return ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft:
              Radius.circular(drawerController.isDrawerOpen.value ? 33.0 : 0),
          bottomRight:
              Radius.circular(drawerController.isDrawerOpen.value ? 33.0 : 0),
        ),
        child: BottomAppBar(
          elevation: 0,
          shape: widget.notchedShape,
          color: widget.backgroundColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items,
          ),
        ),
      );
    });
  }

  Widget _buildMiddleTabItem() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
    );
  }

  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    required int index,
    required ValueChanged<int> onPressed,
  }) {
    Color color = _selectedIndex == index ? widget.selectedColor : widget.color;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: InkWell(
          splashColor: Colors.transparent,
          onTap: () => onPressed(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Icon(item.iconData, color: color, size: widget.iconSize),
              const SizedBox(
                height: 5,
              ),
              Text(
                item.text,
                style: TextStyle(
                    color: color, fontFamily: airBnbCereal, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
