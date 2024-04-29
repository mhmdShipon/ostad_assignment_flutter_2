import 'package:flutter/material.dart';

import '../module/dummy_data.dart';
import '../untils/custom_color.dart';
import '../untils/routes.dart';


class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if(orientation == Orientation.portrait) {
        return GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          padding: const EdgeInsets.all(5.0),
          children: List.generate(DummyData.getImages().length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.detail.route,
                    arguments: DummyData.getImages()[index]);
              },
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                shadowColor: Color(CustomColor.charcoalGrey.value),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        DummyData.getImages()[index].img,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // for title text
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            DummyData.getImages()[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            );
          }),
        );
      }else {
        return GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          padding: const EdgeInsets.all(5.0),
          children: List.generate(DummyData.getImages().length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.detail.route,
                    arguments: DummyData.getImages()[index]);
              },
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                shadowColor: Color(CustomColor.charcoalGrey.value),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        DummyData.getImages()[index].img,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // for title text
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            DummyData.getImages()[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            );
          }),
        );
      }
    },);
  }
}
