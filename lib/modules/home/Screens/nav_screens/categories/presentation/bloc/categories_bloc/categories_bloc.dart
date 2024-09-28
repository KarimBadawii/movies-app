import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/domain/use_cases/get_categories_usecase.dart';

import '../../../../../../../../core/enums.dart';
import '../../../data/models/categories_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  GetCategoriesUseCase getCategoriesUseCase;
  CategoriesBloc(this.getCategoriesUseCase) : super(CategoriesInitial()) {
    on<GetCategoriesEvent>((event, emit) async{
      try{
        var result =await getCategoriesUseCase.call();
        emit(state.copyWith(getRequestState: RequestState.success,categoriesModel: result));
      }catch(e){
        emit(state.copyWith(
          getRequestState: RequestState.error
        ));
         rethrow;
      }

    });
  }
}
