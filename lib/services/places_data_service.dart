import 'package:utm_x_change/models/place.dart';
import 'package:utm_x_change/services/rest_service.dart';

// QuoteDataService is a wrapper class implmenting calls for CRUD operations on Quote endpoints.
//  The class is implemented using the Singleton design pattern.

class PlaceDataService {
  //------- Here is how we implement 'Singleton pattern' in Dart --------

  static final PlaceDataService _instance = PlaceDataService._constructor();
  factory PlaceDataService() {
    return _instance;
  }

  PlaceDataService._constructor();
  final rest = RestService();
  //---------------------------- end of singleton implementation

  Future deletePlace({String id}) async {
    await rest.delete('places/$id');
  }

  Future<Place> createNotice({Place place}) async {
    final json = await rest.post('places', data: place);
    return Place.fromJson(json);
  }

  Future<Place> updateNotice({String id, Place place}) async {
    final json = await rest.patch('places/$id', data: place);
    return Place.fromJson(json);
  }

  Future<List<Place>> getAllPlaces() async {
    final listJson = await rest.get('places');

    return (listJson as List)
        .map((itemJson) => Place.fromJson(itemJson))
        .toList();
  }
} // class Quote
