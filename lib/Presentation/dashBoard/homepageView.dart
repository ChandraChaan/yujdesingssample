import 'package:flutter/material.dart';
import 'package:yujdesingssample/Presentation/dashBoard/slideShowView.dart';
import 'package:yujdesingssample/Utils/constant.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SideOffer(),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext ctx, int index) {
                  return Container(
                      width: getWidth(context),
                      child: Center(child: SizedBox(height:100,child: Text('$index'))));
                },
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}
