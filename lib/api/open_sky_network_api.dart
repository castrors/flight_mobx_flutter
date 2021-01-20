import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import 'open_sky_response.dart';

/// https://opensky-network.org/apidoc/index.html
class OpenSkyNetworkAPI {
  final Client client;
  final Uri baseUri;
  final String username;
  final String password;

  OpenSkyNetworkAPI(
      {Client client, Uri baseUrl, String username, String password})
      : this.client = client ?? Client(),
        this.baseUri =
            Uri.parse('https://$username:$password@opensky-network.org/api/'),
        this.username = username ?? '',
        this.password = password ?? '';

  Future<OpenSkyResponse> arrivals({String airport, int begin, int end}) {
    return _fetchArrivals(
      url: _buildUrl('flights/arrival?airport=$airport&begin=$begin&end=$end'),
    );
  }

  String _buildUrl(String path) {
    return '$baseUri$path';
  }

  Future<OpenSkyResponse> _fetchArrivals({String url}) async {
    final response = await client.get(url);

    if (response.statusCode == 200) {
      return OpenSkyResponse.from(
        items: (_decodeResponse(response) as List).cast<Map<String, dynamic>>(),
      );
    } else {
      throw Exception(
        '${response.statusCode} Error Fetching Arrivals Results: ${response.body}',
      );
    }
  }

  _decodeResponse(Response response) =>
      json.decode(utf8.decode(response.bodyBytes));
}
