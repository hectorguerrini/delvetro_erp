import 'package:delvetro_erp/app/app_module.dart';
import 'package:delvetro_erp/app/app_widget.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    initModule(AppModule(), initialModule: true);
  });
  testWidgets('[TEST] - App Widget', (tester) async {
    await tester.pumpWidget(AppWidget());
  });
}
