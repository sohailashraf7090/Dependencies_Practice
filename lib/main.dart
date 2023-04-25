import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Badge(
                  badgeAnimation: BadgeAnimation.scale(
                      animationDuration: Duration(seconds: 3)),
                  badgeStyle: BadgeStyle(badgeColor: Colors.teal),
                  badgeContent: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Icon(Icons.shopping_cart),
                ),
              )
            ],
            title: const Text("Sohail"),
            bottom: const TabBar(tabs: [
              Tab(
                child: Text("chat"),
              ),
              Tab(
                child: Text("chat"),
              ),
              Tab(
                child: Text("chat"),
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Column(
                children: const [
                  ReadMoreText(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean faucibus euismod leo quis rutrum. Aenean a sapien rhoncus, ultrices elit ut, maximus risus. Nulla vel hendrerit ligula, ut sagittis nulla. Morbi vitae magna hendrerit dolor mattis hendrerit. Nullam blandit iaculis leo, eu porttitor nisi placerat at. Vivamus ultricies felis velit, ac aliquam erat mattis ut. Quisque convallis, lacus sit amet egestas sollicitudin, est lectus condimentum quam, sit amet sagittis libero velit sit amet lacus. Cras imperdiet sapien non malesuada ornare. Aliquam condimentum dignissim mi, et hendrerit enim aliquam a. Aliquam erat volutpat. Fusce mattis, felis ac dictum porta, tellus justo consectetur arcu, non blandit lacus eros quis tortor. Praesent euismod, magna sit amet suscipit auctor, magna dui ultrices dolor, in bibendum risus nisi id purus. Praesent dolor nisl, pellentesque sit amet pellentesque in, vehicula quis odio. Curabitur sed lectus felis.",
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    style: TextStyle(color: Colors.green),
                    moreStyle: TextStyle(color: Colors.yellow),
                    lessStyle: TextStyle(color: Colors.grey),
                    trimExpandedText: 'Show Less',
                    trimCollapsedText: 'Show More',
                  )
                ],
              ),
              AnimatedTextKit(animatedTexts: [
                RotateAnimatedText("Sohail"),
                RotateAnimatedText('Design first, then code'),
                RotateAnimatedText('Do not patch bugs out, rewrite them'),
                RotateAnimatedText('Do not test bugs out, design them out'),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PinCodeTextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black12,
                    pinTheme: PinTheme(
                      activeColor: Colors.green,
                      inactiveColor: Colors.yellow,
                      selectedColor: Colors.black45,
                      fieldHeight: 50,
                      fieldWidth: 50,
                      shape: PinCodeFieldShape.circle,
                      borderRadius: BorderRadius.circular(23),
                    ),
                    obscureText: true,
                    appContext: context,
                    length: 6,
                    onChanged: (value) {}),
              )
            ],
          ),
        ));
  }
}
