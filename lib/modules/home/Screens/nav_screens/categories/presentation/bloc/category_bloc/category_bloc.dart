import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/domain/use_cases/get_category_usecase.dart';

import '../../../../../../../../core/enums.dart';
import '../../../data/models/category_model.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  GetCategoryUseCase getCategoryUseCase;
  CategoryBloc(this.getCategoryUseCase) : super(CategoryInitial()) {
    on<GetCategoryEvent>((event, emit) async{
      try{
        var result =await getCategoryUseCase.call();
        emit(state.copyWith(getRequestState: RequestState.success,categoryModel: result));
      }catch(e){
        emit(state.copyWith(
            getRequestState: RequestState.error
        ));
        rethrow;
      }

    });
  }
}

