class FlightArrival {
  final String icao24;
  final int firstSeen;
  final String estDepartureAirport;
  final int lastSeen;
  final String estArrivalAirport;
  final String callsign;
  final int estDepartureAirportHorizDistance;
  final int estDepartureAirportVertDistance;
  final int estArrivalAirportHorizDistance;
  final int estArrivalAirportVertDistance;
  final int departureAirportCandidatesCount;
  final int arrivalAirportCandidatesCount;

  FlightArrival({
    this.icao24,
    this.firstSeen,
    this.estDepartureAirport,
    this.lastSeen,
    this.estArrivalAirport,
    this.callsign,
    this.estDepartureAirportHorizDistance,
    this.estDepartureAirportVertDistance,
    this.estArrivalAirportHorizDistance,
    this.estArrivalAirportVertDistance,
    this.departureAirportCandidatesCount,
    this.arrivalAirportCandidatesCount,
  });

  FlightArrival.fromJson(Map<String, dynamic> json)
      : icao24 = json['icao24'],
        firstSeen = json['firstSeen'],
        estDepartureAirport = json['estDepartureAirport'],
        lastSeen = json['lastSeen'],
        estArrivalAirport = json['estArrivalAirport'],
        callsign = json['callsign'],
        estDepartureAirportHorizDistance =
            json['estDepartureAirportHorizDistance'],
        estDepartureAirportVertDistance =
            json['estDepartureAirportVertDistance'],
        estArrivalAirportHorizDistance = json['estArrivalAirportHorizDistance'],
        estArrivalAirportVertDistance = json['estArrivalAirportVertDistance'],
        departureAirportCandidatesCount =
            json['departureAirportCandidatesCount'],
        arrivalAirportCandidatesCount = json['arrivalAirportCandidatesCount'];

  @override
  String toString() {
    return 'FlightArrival(icao24: $icao24, firstSeen: $firstSeen, estDepartureAirport: $estDepartureAirport, lastSeen: $lastSeen, estArrivalAirport: $estArrivalAirport, callsign: $callsign, estDepartureAirportHorizDistance: $estDepartureAirportHorizDistance, estDepartureAirportVertDistance: $estDepartureAirportVertDistance, estArrivalAirportHorizDistance: $estArrivalAirportHorizDistance, estArrivalAirportVertDistance: $estArrivalAirportVertDistance, departureAirportCandidatesCount: $departureAirportCandidatesCount, arrivalAirportCandidatesCount: $arrivalAirportCandidatesCount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlightArrival &&
        other.icao24 == icao24 &&
        other.firstSeen == firstSeen &&
        other.estDepartureAirport == estDepartureAirport &&
        other.lastSeen == lastSeen &&
        other.estArrivalAirport == estArrivalAirport &&
        other.callsign == callsign &&
        other.estDepartureAirportHorizDistance ==
            estDepartureAirportHorizDistance &&
        other.estDepartureAirportVertDistance ==
            estDepartureAirportVertDistance &&
        other.estArrivalAirportHorizDistance ==
            estArrivalAirportHorizDistance &&
        other.estArrivalAirportVertDistance == estArrivalAirportVertDistance &&
        other.departureAirportCandidatesCount ==
            departureAirportCandidatesCount &&
        other.arrivalAirportCandidatesCount == arrivalAirportCandidatesCount;
  }

  @override
  int get hashCode =>
      icao24.hashCode ^
      firstSeen.hashCode ^
      estDepartureAirport.hashCode ^
      lastSeen.hashCode ^
      estArrivalAirport.hashCode ^
      callsign.hashCode ^
      estDepartureAirportHorizDistance.hashCode ^
      estDepartureAirportVertDistance.hashCode ^
      estArrivalAirportHorizDistance.hashCode ^
      estArrivalAirportVertDistance.hashCode ^
      departureAirportCandidatesCount.hashCode ^
      arrivalAirportCandidatesCount.hashCode;
}
