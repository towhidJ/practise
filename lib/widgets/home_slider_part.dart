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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: CarouselSlider(
        items: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'GERP',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'ICT',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                'T Pay',
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
          autoPlayInterval: Duration(seconds: 3),
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
