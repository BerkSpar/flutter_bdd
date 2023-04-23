// ignore_for_file: avoid_print, depend_on_referenced_packages, avoid_relative_lib_imports, lines_longer_than_80_chars

import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

import '../lib/main.dart' as app;
import 'gherkin/steps/home/home_steps.dart';
import 'gherkin/steps/onboard/onboard_steps.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite()
void main() {
  executeTestSuite(
    configuration: FlutterTestConfiguration(
      stepDefinitions: [
        ...homeSteps(),
        ...onboardSteps(),
      ],
      order: ExecutionOrder.sequential,
      features: [RegExp('features/*.*.feature')],
      reporters: [
        StdoutReporter(MessageLevel.error)
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        ProgressReporter()
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        TestRunSummaryReporter()
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        JsonReporter(
          writeReport: (_, __) => Future<void>.value(),
        ),
      ],
    ),
    appMainFunction: (World world) async => app.main(),
  );
}
