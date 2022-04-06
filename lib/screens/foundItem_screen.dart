import 'package:flutter/material.dart';
import 'package:lost_and_found/components/custom_button.dart';
import 'package:lost_and_found/globals.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FoundItemScreen extends StatelessWidget {
  const FoundItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 200.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://m.media-amazon.com/images/I/315vj6oj-FL.jpg'),
                            fit: BoxFit.cover)),
                  );
                },
              );
            }).toList(),
          ),
          Text('boAt Headphones',style: kTextStyle1,),
          Text('Found 8 hours ago',style: kTextStyle2,)
        ],
      ),
    );
  }
}
