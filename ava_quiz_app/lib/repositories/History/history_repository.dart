import 'package:ava_quiz_app/application/models/result_model.dart';

abstract class HistoryRepository {
  Future<void> insertHistory(ResultModel result);
  Future<List<ResultModel>> getHistory(String userId);
}
