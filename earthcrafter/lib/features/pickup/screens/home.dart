import 'package:earthcrafter/utils/constants/colors.dart';
import 'package:earthcrafter/utils/constants/images.dart';
import 'package:earthcrafter/utils/constants/textstrings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EarthCrafter'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Your Gateway to ',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'Green',
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(
                      text: ' Living',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Text(
                ETextStrings.HomePageSubTitle,
                style: TextStyle(
                    fontSize: 18, color: EColors.light.withOpacity(0.7)),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: Text('Book a Pickup'),
              ),
              SizedBox(height: 20),
              Text(
                'How We Work',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: _buildHowWeWorkSection(
                      'Schedule PickUp',
                      'Early Schedule Doorstep Collection from our user Friendly Platform',
                      EImages.pickup, // replace with your image asset
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: _buildHowWeWorkSection(
                      'EffortLess Contribution',
                      'Donate right from your Doorstep.Make a positive impact on the environment without hassle',
                      EImages.donation, // replace with your image asset
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                'Our Marketplace',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: _buildHowWeWorkSection(
                      'Natural Dairy Products',
                      'Early Schedule Doorstep Collection from our user Friendly Platform',
                      EImages.cow, // replace with your image asset
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: _buildHowWeWorkSection(
                      'Nature`s Sacred Alchemy',
                      'Donate right from your Doorstep.Make a positive impact on the environment without hassle',
                      EImages.nature, // replace with your image asset
                    ),
                  ),
                ],
              ),
              // Add more sections as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHowWeWorkSection(
      String title, String description, String imageAsset) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 9, color: EColors.light.withOpacity(0.5)),
        ),
        SizedBox(height: 10),
        Image.asset(
          imageAsset,
          height: 80, // adjust the height as needed
          fit: BoxFit.fitHeight,
        ),
      ],
    );
  }
}
