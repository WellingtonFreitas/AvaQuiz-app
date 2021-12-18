import 'package:ava_quiz_app/application/models/result_model.dart';
import 'package:ava_quiz_app/application/modules/history/history_page.dart';
import 'package:ava_quiz_app/services/history/history_service.dart';
import 'package:get/get.dart';

class ResultController extends GetxController {
  late ResultModel resultModel;
  final HistoryService _historyService;

  ResultController({
    required HistoryService historyService,
  }) : _historyService = historyService;

  @override
  void onInit() {
    super.onInit();
    resultModel = Get.arguments;
    insertHistory(resultModel);
  }

  void insertHistory(ResultModel result) {
    _historyService.insertHistory(result);
  }
}
