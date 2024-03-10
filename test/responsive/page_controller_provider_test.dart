import 'package:flutter_test/flutter_test.dart';
import 'package:kiwit/core/responsive/providers/page_controller_provider.dart';

import '../mocks/responsive/mock_page_controller.mocks.dart';

void main() {
  late PageControllerProvider pageControllerProvider;
  late MockPageController pageController;

  setUp(() {
    pageController = MockPageController();
    pageControllerProvider = PageControllerProvider();
  });

  group('PageControllerProvider Test.', () {
    test('Initial index should be 0.', () {
      expect(pageControllerProvider.index, 0);
    });

    test('PageController should not be null.', () {
      expect(pageControllerProvider.pageController, isNotNull);
    });

    test('Set index should change index.', () {
      pageControllerProvider.setIndex(index: 1);
      expect(pageControllerProvider.index, 1);
    });
  });
}
