import 'package:country_api_parser/features/country/domain/entities/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CountryMap extends StatelessWidget {
  const CountryMap({
    Key? key,
    required this.country,
  }) : super(key: key);

  final Country country;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: 400.0,
      ),
      child: FlutterMap(
        options: MapOptions(
          center: LatLng(country.latlng[0], country.latlng[1]),
          zoom: 6.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                point: LatLng(country.latlng[0], country.latlng[1]),
                builder: (_) => const FlutterLogo(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
