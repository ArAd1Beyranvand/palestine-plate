import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

import 'palestine_colors.dart';

/// Country blocks on Palestinian plates: `ف / P` in ink on the West Bank (one
/// const per ink), the flag in Gaza. All share `code: 'ps'`.
abstract final class PSCountries {
  /// `ف / P` in green. The rule between the lines lives on the spec;
  /// [CountryPanel] paints only the caption.
  static const PlateCountry westBankGreenInk = PlateCountry(
    code: 'ps',
    captionLines: ['ف', 'P'],
    panelColor: Color(0x00000000),
    panelTextColor: PSColors.green,
    flag: null,
  );

  static const PlateCountry westBankWhiteInk = PlateCountry(
    code: 'ps',
    captionLines: ['ف', 'P'],
    panelColor: Color(0x00000000),
    panelTextColor: PSColors.white,
    flag: null,
  );

  static const PlateCountry westBankRedInk = PlateCountry(
    code: 'ps',
    captionLines: ['ف', 'P'],
    panelColor: Color(0x00000000),
    panelTextColor: PSColors.red,
    flag: null,
  );

  /// `ف  P` on one line, for the two-line motorcycle plate, since
  /// [CountryPanel] only stacks lines.
  static const PlateCountry westBankGreenInkInline = PlateCountry(
    code: 'ps',
    captionLines: ['ف  P'],
    panelColor: Color(0x00000000),
    panelTextColor: PSColors.green,
    flag: null,
  );

  /// No caption, for the one-line motorcycle plate whose spec draws the
  /// identity block itself.
  static const PlateCountry westBankGreenInkBlank = PlateCountry(
    code: 'ps',
    captionLines: [],
    panelColor: Color(0x00000000),
    panelTextColor: PSColors.green,
    flag: null,
  );

  /// Gaza 2012–2021: the flag rotated, at 1:2.
  static const PlateCountry gaza2012 = PlateCountry(
    code: 'ps',
    captionLines: [],
    panelColor: Color(0x00000000),
    panelTextColor: PSColors.black,
    flagAspectRatio: 1 / 2,
    flag: SvgPlateAsset(
      'assets/flags/Flag_of_Palestine_vertical.svg',
      package: 'palestine_plate',
    ),
  );

  /// Gaza from 2021: the flag upright, at 2:1.
  static const PlateCountry gaza2021 = PlateCountry(
    code: 'ps',
    captionLines: [],
    panelColor: Color(0x00000000),
    panelTextColor: PSColors.black,
    flagAspectRatio: 2 / 1,
    flag: SvgPlateAsset(
      'assets/flags/Flag_of_Palestine.svg',
      package: 'palestine_plate',
    ),
  );
}
