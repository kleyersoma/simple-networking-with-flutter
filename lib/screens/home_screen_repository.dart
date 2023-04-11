import 'package:networking_like_pro/repository/network/network_repository.dart';

import '../model/networking_response.dart';

class HomeScreenRepository {
  Future<NetworkingResponse> getLatestStatsData() {
    return NetworkRepository().getLatestDataFromApi();
  }
}
