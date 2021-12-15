import 'package:ava_quiz_app/application/models/quizz_model.dart';
import 'package:ava_quiz_app/repositories/quizz/quizz_repository.dart';

import './quizz_service.dart';

class QuizzServiceImpl implements QuizzService {
  final QuizzRepository _quizzRepository;

  QuizzServiceImpl({
    required QuizzRepository quizzRepository,
  }) : _quizzRepository = quizzRepository;
  @override
  Future<void> createQuizzzes() => _quizzRepository.createQuizzes();

  @override
  Future<List<QuizzModel>> getQuizzes() => _quizzRepository.getQuizzes();
}
