import 'package:flutter/cupertino.dart';

class BottomHomePadding extends StatelessWidget {
  const BottomHomePadding({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(padding: EdgeInsets.only(bottom: 20)),
    );
  }
}
