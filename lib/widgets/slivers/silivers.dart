import 'package:flutter/material.dart';
import 'package:flutter_avenue/widgets/slivers/sliver_list.dart';
import 'package:flutter_avenue/widgets/slivers/slivers_appbar.dart';

class Slivers extends StatelessWidget {
  const Slivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliversAppBar(),
          const SliversList(),
          //
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("footer")),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purple,
                ),
                child: const Center(child: Text("footer")),
              ),
              const SizedBox(height: 20.0),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          )),
        ],
      ),
    );
  }
}
