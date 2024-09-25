import 'package:dio/dio.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/core/api/endpoints.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/models/Movies_model.dart';

abstract class HomeDS {
  Future<MoviesModel> getMovies();
}

class HomeDSImp extends HomeDS {
  ApiManager apiManager;

  HomeDSImp(this.apiManager);

  @override
  Future<MoviesModel> getMovies() async {
    Response response =
        await apiManager.getData(endPoint: EndPoints.popularMovies);
    MoviesModel moviesModel = MoviesModel.fromJson(response.data);
    return moviesModel;
  }
}
