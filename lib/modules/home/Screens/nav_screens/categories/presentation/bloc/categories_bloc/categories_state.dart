part of 'categories_bloc.dart';

class CategoriesState {
  RequestState? getRequestState;
  CategoriesModel? categoriesModel;

  CategoriesState({this.getRequestState, this.categoriesModel});

  CategoriesState copyWith({
    RequestState? getRequestState,
    CategoriesModel? categoriesModel,
  }) {
    return CategoriesState(
      getRequestState: getRequestState ?? this.getRequestState,
      categoriesModel: categoriesModel ?? this.categoriesModel,
    );
  }
}


final class CategoriesInitial extends CategoriesState {

  CategoriesInitial() : super(getRequestState: RequestState.init);
}
