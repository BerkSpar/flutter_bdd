// write a test to this: Given the user is on the "onboard" page

import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric theUserIsOnThePage() {
  return given1<String, FlutterWidgetTesterWorld>(
    'the user is on the {String} page',
    (key, context) async {
      await context.world.appDriver.waitForAppToSettle();

      await context.world.appDriver.isPresent(
        context.world.appDriver.findBy(key, FindType.key),
        timeout: const Duration(seconds: 5),
      );
    },
  );
}
