import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
              height: 250,
              child: Container(
                // color: Colors.amber,
                child: Stack(
                  children: [
                    Container(
                      height: 161,
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(gradient: AppGradients.linear),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                                text: "Olá,",
                                style: AppTextStyles.title,
                                children: [
                                  TextSpan(
                                    text: " Lucas dev",
                                    style: AppTextStyles.titleBold,
                                  ),
                                ]),
                          ),
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://instagram.fplu23-1.fna.fbcdn.net/v/t51.2885-19/s320x320/173118628_146345014018208_9058170731115516802_n.jpg?tp=1&_nc_ht=instagram.fplu23-1.fna.fbcdn.net&_nc_ohc=0dkwWQk9i94AX-PZzaU&edm=ABfd0MgBAAAA&ccb=7-4&oh=e19fb26190252c9ed6982fd57d28c223&oe=60A8AB11&_nc_sid=7bff83"))),
                          ),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment(0.0, 1.0),
                        child: ScoreCardWidget()),
                  ],
                ),
              )),
        );
}
