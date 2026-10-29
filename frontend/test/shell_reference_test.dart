import 'package:flutter_test/flutter_test.dart';

import 'package:seastem/models/shell_reference.dart';

void main() {
  test('every model class label has a species reference', () {
    const modelLabels = [
      'BAGONGON',
      'CONUS TEXTILE',
      'MUSSELS',
      'NAUTILUS POMPILIUS',
      'SIHI',
      'SPIDER CONCH',
      'TIGER COWRIE',
      'TUWAY',
    ];

    for (final label in modelLabels) {
      expect(
        shellReferenceFor(label, label),
        isNotNull,
        reason: 'Missing species reference for model label: $label',
      );
    }
  });
}
