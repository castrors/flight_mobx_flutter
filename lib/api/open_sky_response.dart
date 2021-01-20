import 'flight_arrival.dart';

class OpenSkyResponse {
  final List<FlightArrival> items;

  OpenSkyResponse({this.items});

  factory OpenSkyResponse.from({List<Map<String, dynamic>> items}) {
    return OpenSkyResponse(
        items: items != null
            ? items.map((i) => FlightArrival.fromJson(i)).toList()
            : []);
  }

  @override
  String toString() {
    return 'OpenSkyResponse{items: $items}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenSkyResponse &&
          runtimeType == other.runtimeType &&
          items == other.items;

  @override
  int get hashCode => items.hashCode;
}
