import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/data_sources/categories_ds_impl.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/categories_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/models/category_model.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/repositories/categories_repo_impl.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/domain/use_cases/get_category_usecase.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/presentation/bloc/category_bloc/category_bloc.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  static const String routeName = "categoryDetails";
  @override
  Widget build(BuildContext context) {
    var category = ModalRoute.of(context)!.settings.arguments as Genres;
    return BlocProvider(
      create: (context) => CategoryBloc(GetCategoryUseCase(
          CategoriesRepoImpl(CategoriesDSImpl(ApiManager()))),category.id.toString())..add(GetCategoryEvent()),
      child: BlocConsumer<CategoryBloc, CategoryState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    return Scaffold(
        backgroundColor: const Color(0xff1A1A1A),
        body: Padding(
          padding: const EdgeInsets.only(top: 70, right: 10, left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                  const SizedBox(width: 70,),
                  Text(
                    category.name.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
              Expanded(
                child: ListView.separated(

                    itemBuilder: (context, index) {
                      List<int>? categories = state.categoryModel?.results?[index].genreIds;
                        return Card(
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(state.categoryModel!.results![index].posterPath! ?? ""),
                                ),
                                const SizedBox(height: 5),
                                Text(state.categoryModel?.results?[index].title??"",style: const TextStyle(color: Colors.white),),
                                const SizedBox(height: 5),
                                Text(state.categoryModel?.results?[index].overview??"",style: const TextStyle(color: Colors.white)),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(state.categoryModel?.results?[index].releaseDate
                                        ?.substring(0, 10) ??
                                        "",style: const TextStyle(color: Colors.white)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                    },
                    separatorBuilder: (context, index) => const Divider(
                          color: Color(0xff707070),
                          thickness: 2,
                        ),
                    itemCount: state.categoryModel?.results?.length??0),
              )
            ],
          ),
        ),
      );
  },
),
    );
  }
}
