import 'package:flutter/material.dart';

class SliversList extends StatelessWidget {
  const SliversList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xff243A73).withOpacity(0.3),
              ),
              height: 110,
              width: MediaQuery.of(context).size.width,
            ),
          );
        },
      ),
    );
  }
}
