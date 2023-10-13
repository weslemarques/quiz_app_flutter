import 'package:quiz_app/model/quiz_question.dart';

var questions = [
  QuizQuestion(
    1,
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
      'Widgets'
  ),
  QuizQuestion(
      2,
      'How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ],"By combining widgets in code." ),
  QuizQuestion(
    3,
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
    'Update UI as data changes'
  ),
  QuizQuestion(
    4,
    'Which widget should you try to use more often:',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
      'StatelessWidget'
  ),
  QuizQuestion(
    5,
      'What happens if you change data in a StatelessWidget?',
      [
        'The UI is not updated',
        'The UI is updated',
        'The closest StatefulWidget is updated',
        'Any nested StatefulWidgets are updated',
    ],
      'The UI is not updated'
  ),
  QuizQuestion(
    6,
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
      'By calling setState()'
  ),
];
