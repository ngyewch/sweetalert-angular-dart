import 'package:angular2/platform/browser_static.dart';import 'main.template.dart' as ngStaticInit;

import 'AppComponent.dart';

main() {
  bootstrapStatic(AppComponent, null, () { ngStaticInit.initReflector(); });
}
