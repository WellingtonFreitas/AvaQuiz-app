import 'package:ava_quiz_app/application/auth/auth_service.dart';
import 'package:ava_quiz_app/application/models/result_model.dart';
import 'package:ava_quiz_app/services/history/history_service.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  final HistoryService _historyService;
  final AuthService _authService;
  final resultList = <ResultModel>[].obs;

  HistoryController(
      {required HistoryService historyService,
      required AuthService authService})
      : _historyService = historyService,
        _authService = authService;

  @override
  Future<void> onInit() async {
    super.onInit();
    final user = _authService.user;
    var result = await _historyService.getHistory(user!.uid);
    resultList.assignAll(result);
  }
}
