import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        children: [
          "All Creative Works.\n"
              .richText
              .withTextSpanChildren([
                "My Projects.".textSpan.yellow400.make(),
              ])
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
               ProjectWidget(title: "Assemble"),
               ProjectWidget(title: "Weather Wizard"),
               ProjectWidget(title: "Tin Dog"),
               ProjectWidget(title: "BMI Calc"),
               ProjectWidget(title: "ZappShop"),
              ],
              height: 170,
              enlargeCenterPage: true,
              viewportFraction: context.isMobile?0.75:0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
              
            ),
          ),
        ],
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}


class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  title
                    .text
                    .bold
                    .white
                    .xl
                    .center
                    .make()
                    .box
                    .p8
                    .roundedLg
                    .alignCenter
                    .square(200)
                    .neumorphic(
                        color: Vx.purple700,
                        elevation: 5.0,
                        curve: VxCurve.flat)
                    .make().p16();
  }
}