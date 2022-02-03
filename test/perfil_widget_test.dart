import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:premiere_copy/view/home.dart';

void main() {
  //Teste da imagem
  testWidgets("Should display the main image when the Dashboard is opended",
          (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: Home()));
        final mainImage = find.byType(Image);
        expect(mainImage, findsWidgets);
      });

  //Teste do botão
  testWidgets("Should display the first feature when the Dashboard is opended",
          (tester) async {
        await tester.pumpWidget(MaterialApp(home: Home(),));
        final firsFeature = find.byType(incluiStack().runtimeType);
        expect(firsFeature, findsWidgets);
      });

}
