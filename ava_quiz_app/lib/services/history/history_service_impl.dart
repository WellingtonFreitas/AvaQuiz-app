import 'package:ava_quiz_app/application/models/result_model.dart';
import 'package:ava_quiz_app/repositories/History/history_repository.dart';

import './history_service.dart';

class HistoryServiceImpl implements HistoryService {
  final HistoryRepository _historyRepository;

  HistoryServiceImpl({
    required HistoryRepository historyRepository,
  }) : _historyRepository = historyRepository;

  @override
  Future<void> insertHistory(ResultModel result) async =>
      await _historyRepository.insertHistory(result);

  @override
  Future<List<ResultModel>> getHistory(String userId) async =>
      await _historyRepository.getHistory(userId);
}
