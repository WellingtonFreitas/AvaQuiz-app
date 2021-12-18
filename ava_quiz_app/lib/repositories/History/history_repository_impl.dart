import 'package:ava_quiz_app/application/models/result_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import './history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  @override
  Future<void> insertHistory(ResultModel result) async {
    try {
      final history = await FirebaseFirestore.instance.collection('history');
      history.add(result.toMap());
    } catch (e) {
      print('Erro ao gravar historico ${e.toString()}');
    }
  }

  @override
  Future<List<ResultModel>> getHistory(String userId) async {
    try {
      final historyResult = await FirebaseFirestore.instance
          .collection('history')
          .where('userId', isEqualTo: userId)
          .get();
      final listHistory = <ResultModel>[];
      for (var result in historyResult.docs) {
        listHistory.add(ResultModel.fromMap(result.data()));
      }

      return listHistory;
    } catch (e) {
      print('erro ao buscar historico do usuario ${e.toString()}');
      rethrow;
    }
  }
}
