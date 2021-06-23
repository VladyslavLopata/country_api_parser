import 'package:country_api_parser/features/country/domain/entities/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class CountryScreen extends StatelessWidget {
  final Country country;
  const CountryScreen({
    Key? key,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CountryMap(country: country),
        if (country.borders != null && country.borders!.isNotEmpty)
          Text.rich(
            TextSpan(
              text: 'Borders: ',
              children: [TextSpan(text: country.borders!.join(' '))],
            ),
          ),
        if (country.numericCode != null)
          Text.rich(
            TextSpan(
              text: 'Numeric Code: ',
              children: [TextSpan(text: country.numericCode)],
            ),
          ),
        if (country.currencies != null) ...[
          const Text('Currencies: '),
          ...country.currencies!.map((currency) => Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Name: ',
                        children: [TextSpan(text: currency.name)],
                      ),
                    ),
                    if (currency.code != null)
                      Text.rich(
                        TextSpan(
                          text: 'Code: ',
                          children: [TextSpan(text: currency.code)],
                        ),
                      ),
                    if (currency.symbol != null)
                      Text.rich(
                        TextSpan(
                          text: 'Symbol: ',
                          children: [TextSpan(text: currency.symbol)],
                        ),
                      ),
                  ],
                ),
              ))
        ]
      ],
    );
  }
}

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
