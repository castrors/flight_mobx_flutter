import 'package:fligths_mobx_flutter/open_sky_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'api/flight_arrival.dart';

class OpenSkyExample extends StatefulWidget {
  @override
  _OpenSkyExampleState createState() => _OpenSkyExampleState();
}

class _OpenSkyExampleState extends State<OpenSkyExample> {
  final store = OpenSkyStore();

  @override
  void initState() {
    store.loadArrival();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Open Sky'),
      ),
      body: SafeArea(
        child: OpenSkyView(store),
      ));
}

class OpenSkyView extends StatelessWidget {
  OpenSkyView(this.store);

  final OpenSkyStore store;

  @override
  // ignore: missing_return
  Widget build(BuildContext context) => Observer(builder: (_) {
        final future = store.flightArrivalsFuture;

        switch (future.status) {
          case FutureStatus.pending:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Text('Loading ...'),
              ],
            );

          case FutureStatus.rejected:
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Failed to load items.',
                  style: TextStyle(color: Colors.red),
                ),
                RaisedButton(
                  child: Text('Tap to try again'),
                  onPressed: _refresh,
                )
              ],
            );

          case FutureStatus.fulfilled:
            final List<FlightArrival> items = future.result;
            return RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    final item = items[index];
                    return ListTile(
                      title: Text(
                          '${item.estDepartureAirport} -> ${item.estArrivalAirport}'),
                    );
                  },
                ));
        }
      });

  Future _refresh() => store.fetchArrival();
}
