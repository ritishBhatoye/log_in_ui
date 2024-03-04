import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HI"),
        ),
        body: MasonryGridView.count(
          itemCount: 10,
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.amber,
            ),
          ),
        )
        // MasonryGridView.builder(
        //   mainAxisSpacing: 6,
        //   crossAxisSpacing: 10,
        //   itemCount: 6,
        //   gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 4,
        //   ),
        //   itemBuilder: (context, index) => Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Container(
        //         padding: EdgeInsets.all(20.0),
        //         color: Colors.blue,
        //       )
        //       //  Image.asset('assets/wall/img-${index + 1}.jpg'),
        //       ),
        // )
        );
  }
}
