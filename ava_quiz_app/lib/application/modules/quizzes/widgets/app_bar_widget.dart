// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ava_quiz_app/layout/app_gradients.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final User user;
  AppBarWidget({Key? key, required this.user})
      : super(
          key: key,
          preferredSize: Size.fromHeight(250),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                decoration: BoxDecoration(gradient: AppGradients.linear),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: 'Olá, ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: user.displayName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ])),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            image: DecorationImage(
                              image: NetworkImage(
                                user.photoURL!,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
}
