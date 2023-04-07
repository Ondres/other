
import 'package:url_launcher/url_launcher.dart';
import 'package:my4/main.dart';

Future<void> openMap(
double lat,
double long,
) async {
  String googleMapUrl = "http://www.google.com/maps/search/?api=1&query=$lat,$long";

  if(await canLaunch(googleMapUrl)){
    await launch(googleMapUrl);
  }
  else {
    throw 'Could not open the Map';
  }
}

