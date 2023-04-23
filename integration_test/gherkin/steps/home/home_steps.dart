// ignore_for_file: depend_on_referenced_packages

import 'package:gherkin/gherkin.dart';

import 'given/the_user_is_on_the_page.dart';

Iterable<StepDefinitionGeneric> homeSteps() => [
      theUserIsOnThePage(),
    ];
