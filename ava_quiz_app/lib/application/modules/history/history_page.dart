// ignore_for_file: prefer_const_constructors

import 'package:ava_quiz_app/application/modules/history/history_controller.dart';
import 'package:ava_quiz_app/application/modules/history/widgets/history_card.dart';
import 'package:ava_quiz_app/layout/app_colors.dart';
import 'package:ava_quiz_app/layout/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Historico'),
        ),
        body: Obx(() {
          return ListView(
            scrollDirection: Axis.vertical,
            children: controller.resultList
                .map((result) => HistoryCard(result: result))
                .toList(),
          );
        }));
  }
}
