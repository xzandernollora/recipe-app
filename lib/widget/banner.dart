import 'package:flutter/material.dart';
import 'package:recipe_app/utils/constants.dart';

class BannerToExplore extends StatelessWidget {
  const BannerToExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: bannercolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 32,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cook the best\nrecipes at home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 33),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: -20,
            child: Image.network("https://pngimg.com/d/chef_PNG190.png"),
          ),
        ],
      ),
    );
  }
}
