import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderPartHome extends StatefulWidget {
  const SliderPartHome({super.key});

  @override
  State<StatefulWidget> createState() => SliderPartHomeState();
}

class SliderPartHomeState extends State<SliderPartHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.only(right: 15, left: 15),
            color: Colors.blue,
            child: Center(
              child: Text(
                'Item 1',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15),
            color: Colors.green,
            child: Center(
              child: Text(
                'Item 2',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15, left: 15),
            color: Colors.orange,
            child: Center(
              child: Text(
                'Item 3',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ],
        options: CarouselOptions(
          clipBehavior: Clip.hardEdge,
          height: 120,
          viewportFraction: 1.0, // Each item takes up the full width
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          pauseAutoPlayOnTouch: true,
          aspectRatio: 2.0,
          onPageChanged: (index, reason) {
            // Handle page change
          },
        ),
      ),
    );
  }
}
