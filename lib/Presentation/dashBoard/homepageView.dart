import 'package:flutter/material.dart';
import 'package:yujdesingssample/Presentation/dashBoard/slideShowView.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SideOffer(),
          ],
        ),
      ),
    );
  }
}
