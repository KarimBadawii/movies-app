part of 'category_bloc.dart';


class CategoryState {
  RequestState? getRequestState;
  CategoryModel? categoryModel;

  CategoryState({this.getRequestState, this.categoryModel});

  CategoryState copyWith({
    RequestState? getRequestState,
    CategoryModel? categoryModel,
  }) {
    return CategoryState(
      getRequestState: getRequestState ?? this.getRequestState,
      categoryModel: categoryModel ?? this.categoryModel,
    );
  }
}


final class CategoryInitial extends CategoryState {

  CategoryInitial() : super(getRequestState: RequestState.init);
}
