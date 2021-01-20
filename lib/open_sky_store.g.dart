// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_sky_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OpenSkyStore on _OpenSkystore, Store {
  final _$flightArrivalsFutureAtom =
      Atom(name: '_OpenSkystore.flightArrivalsFuture');

  @override
  ObservableFuture<List<FlightArrival>> get flightArrivalsFuture {
    _$flightArrivalsFutureAtom.reportRead();
    return super.flightArrivalsFuture;
  }

  @override
  set flightArrivalsFuture(ObservableFuture<List<FlightArrival>> value) {
    _$flightArrivalsFutureAtom.reportWrite(value, super.flightArrivalsFuture,
        () {
      super.flightArrivalsFuture = value;
    });
  }

  final _$_OpenSkystoreActionController =
      ActionController(name: '_OpenSkystore');

  @override
  Future<dynamic> fetchArrival() {
    final _$actionInfo = _$_OpenSkystoreActionController.startAction(
        name: '_OpenSkystore.fetchArrival');
    try {
      return super.fetchArrival();
    } finally {
      _$_OpenSkystoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
flightArrivalsFuture: ${flightArrivalsFuture}
    ''';
  }
}
