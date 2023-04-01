import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double? sumaPrecios(
  int cantidadActual,
  double precioItem,
) {
  final int minusOne = cantidadActual + 1;
  final String cartItemTotalMath = (minusOne * precioItem).toStringAsFixed(2);
  return double.parse(cartItemTotalMath);
}

double? restaPrecios(
  int cantidadActual,
  double precioItem,
) {
  final int minusOne = cantidadActual - 1;
  final String cartItemTotalMath = (minusOne * precioItem).toStringAsFixed(2);
  return double.parse(cartItemTotalMath);
}

double cartTotal(List<double> cartItemTotals) {
  double _total = cartItemTotals.fold(
      0.0, (double total, double subtotal) => subtotal + total);
  _total = double.parse(_total.toStringAsFixed(2));
  return _total;
}

double? sumaPrecios3(
  int cantidadActual,
  double precioItem,
) {
  final int minusOne = cantidadActual;
  final String cartItemTotalMath = (minusOne * precioItem).toStringAsFixed(2);
  return double.parse(cartItemTotalMath);
}

double? sumaPrecios2(double precioItem) {
  final int minusOne = 1;
  final String cartItemTotalMath = (minusOne * precioItem).toStringAsFixed(2);
  return double.parse(cartItemTotalMath);
}
