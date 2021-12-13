import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin MesssagesMixin {
  void messageListener(Rxn<MessageModel> message) {
    ever<MessageModel?>(message, (model) {
      if (model != null) {
        Get.snackbar(model.title, model.message, backgroundColor: model.type.color());
      }
    });
  }
}

class MessageModel {
  final String title;
  final String message;
  final MessageType type;
  MessageModel({
    required this.title,
    required this.message,
    required this.type,
  });

  MessageModel.error({
    required this.title,
    required this.message,
  }) : type = MessageType.error;

  MessageModel.info({
    required this.title,
    required this.message,
  }) : type = MessageType.info;
  MessageModel.sucess({
    required this.title,
    required this.message,
  }) : type = MessageType.sucess;
}

enum MessageType { error, info, sucess }

extension MessageTypeExtension on MessageType {
  Color color() {
    switch (this) {
      case MessageType.error:
        return Colors.red[300] ?? Colors.red;
      case MessageType.info:
        return Colors.blue[200] ?? Colors.blue;
      case MessageType.sucess:
        return Colors.green[200] ?? Colors.green;
    }
  }
}
