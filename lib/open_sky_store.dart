import 'package:fligths_mobx_flutter/api/open_sky_network_api.dart';
import 'package:mobx/mobx.dart';

import 'api/flight_arrival.dart';

part 'open_sky_store.g.dart';

class OpenSkyStore = _OpenSkystore with _$OpenSkyStore;

abstract class _OpenSkystore with Store {
  final _client =
      OpenSkyNetworkAPI(username: 'castrors', password: 'J78w7).=%UWtDTtu');

  @observable
  ObservableFuture<List<FlightArrival>> flightArrivalsFuture;

  @action
  Future fetchArrival() => flightArrivalsFuture = ObservableFuture(_client
      .arrivals(
        airport: 'EDDF',
        begin: 1517227200,
        end: 1517230800,
      )
      // begin: DateTime.now()
      //     .subtract(Duration(hours: 3))
      //     .millisecondsSinceEpoch,
      // end: DateTime.now().millisecondsSinceEpoch)
      .then((response) => response.items));

  void loadArrival() {
    if (flightArrivalsFuture == null) {
      fetchArrival();
    }
  }
}
