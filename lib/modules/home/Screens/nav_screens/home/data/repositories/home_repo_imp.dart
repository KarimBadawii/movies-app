import 'package:movies_app/modules/home/Screens/nav_screens/home/data/data_sources/home_ds.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/data/models/Movies_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/home/domain/repositories/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  HomeDS homeDS;

  HomeRepoImp(this.homeDS);

  @override
  Future<MoviesModel> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }
// @override
// Future<MoviesModel> getMovies() async{
//   try{
//     var data = await homeDS.getMovies();
//     return data;
//   }catch(e){
//     e.toString();
//   }
// }
}
