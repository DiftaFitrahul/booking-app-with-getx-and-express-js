import 'package:booking_app/view/pages/home/header_sliver_custom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const double _appBarBottomBtnPosition = 24.0;
    return Scaffold(
      drawer: const Column(),
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          delegate: HomeSliverAppbar(),
          pinned: true,
        ),

        // SliverAppBar(
        //   elevation: 0,
        //   pinned: true,
        //   expandedHeight: 200,
        //   bottom: PreferredSize(
        //     preferredSize: const Size.fromHeight(30),
        //     child: Transform.translate(
        //       offset: const Offset(0, _appBarBottomBtnPosition),
        //       child: ElevatedButton(
        //         child: Text("Click Here"),
        //         onPressed: () {},
        //       ),
        //     ),
        //   ),
        // ),
        // SliverToBoxAdapter(
        //   child: Container(
        //     color: Colors.white,
        //     height: 15,
        //     child: Container(
        //       height: 15,
        //       decoration: BoxDecoration(
        //         border: Border.all(width: 0, color: Colors.blue),
        //         color: Colors.blue,
        //         borderRadius: const BorderRadius.only(
        //           bottomLeft: Radius.circular(20.0),
        //           bottomRight: Radius.circular(20.0),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 20,
          (context, index) => Container(
            height: 100,
            color: Colors.red,
            margin: const EdgeInsets.all(10),
          ),
        ))
      ]),
    );
  }
}
