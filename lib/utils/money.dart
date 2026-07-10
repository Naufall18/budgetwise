/// Formats a number as Indonesian Rupiah with thousands separators.
/// Example: 1200000 -> "Rp 1.200.000".
String formatRupiah(double value) {
  final whole = value.round().abs().toString();
  final buf = StringBuffer();
  for (var i = 0; i < whole.length; i++) {
    if (i > 0 && (whole.length - i) % 3 == 0) buf.write('.');
    buf.write(whole[i]);
  }
  final sign = value < 0 ? '-' : '';
  return '${sign}Rp $buf';
}
