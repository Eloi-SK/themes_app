import 'package:flutter/material.dart';
import 'package:themes_app/app/utils/colors/rgb_color.dart';
import 'package:tinycolor2/tinycolor2.dart';

class Palette {
  final Color _color;

  Palette(this._color);

  MaterialColor get primary {
    final baseLight = TinyColor(Colors.white);
    final baseDark = _multiply(RbgColor.fromColor(_color), RbgColor.fromColor(_color));

    return MaterialColor(_color.value, <int, Color> {
      50: baseLight.mix(input: _color, amount: 12).color,
      100: baseLight.mix(input: _color, amount: 30).color,
      200: baseLight.mix(input: _color, amount: 50).color,
      300: baseLight.mix(input: _color, amount: 70).color,
      400: baseLight.mix(input: _color, amount: 85).color,
      500: baseLight.mix(input: _color, amount: 100).color,
      600: baseDark.mix(input: _color, amount: 87).color,
      700: baseDark.mix(input: _color, amount: 70).color,
      800: baseDark.mix(input: _color, amount: 54).color,
      900: baseDark.mix(input: _color, amount: 25).color,
    });
  }

  MaterialColor get accent {
    final baseDark = _multiply(RbgColor.fromColor(_color), RbgColor.fromColor(_color));
    final baseTetrad = _tetrad(_color);

    final ac = baseDark.mix(input: baseTetrad[3].color, amount: 15).saturate(80).lighten(36).color;

    return MaterialColor(ac.value, <int, Color> {
      100: baseDark.mix(input: baseTetrad[3].color, amount: 15).saturate(80).lighten(48).color,
      200: ac,
      400: baseDark.mix(input: baseTetrad[3].color, amount: 15).saturate(80).lighten(31).color,
      700: baseDark.mix(input: baseTetrad[3].color, amount: 15).saturate(80).lighten(28).color,
    });
  }

  TinyColor _multiply(RbgColor rgb1, RbgColor rgb2) {
    final b = (rgb1.b * rgb2.b / 255).floor();
    final g = (rgb1.g * rgb2.g / 255).floor();
    final r = (rgb1.r * rgb2.r / 255).floor();

    return TinyColor.fromRGB(r: r, g: g, b: b);
  }

  List<TinyColor> _tetrad(Color color) {
    final hsl = TinyColor(color).toHsl();
    final h = hsl.h;

    return [
      TinyColor(color),
      TinyColor.fromHSL(HslColor(h: (h + 90) % 360, s: hsl.s, l: hsl.l)),
      TinyColor.fromHSL(HslColor(h: (h + 180) % 360, s: hsl.s, l: hsl.l)),
      TinyColor.fromHSL(HslColor(h: (h + 270) % 360, s: hsl.s, l: hsl.l)),
    ];
  }
}