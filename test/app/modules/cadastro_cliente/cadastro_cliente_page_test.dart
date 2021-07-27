import 'package:delvetro_erp/app/modules/cadastro-cliente/cadastro_cliente_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';

void main() {
  group('CadastroClientePage', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(CadastroClientePage()));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}
