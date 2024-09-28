import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/api/api_manager.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/data_sources/categories_ds_impl.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/data/repositories/categories_repo_impl.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/domain/use_cases/get_categories_usecase.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/presentation/pages/category_details_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoriesBloc(GetCategoriesUseCase(
          CategoriesRepoImpl(CategoriesDSImpl(ApiManager()))))
        ..add(GetCategoriesEvent()),
      child: BlocConsumer<CategoriesBloc, CategoriesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.only(top: 70, right: 10, left: 10),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Browse Category",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                        itemCount: state.categoriesModel?.genres?.length ?? 0,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 30,
                                crossAxisSpacing: 20,
                                childAspectRatio: 9 / 6),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, CategoryDetailsScreen.routeName,arguments: state.categoriesModel?.genres?[index]);
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/0e34a5e080e8c915030603ddcdb4eeba.png"),
                                      fit: BoxFit.cover)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 40),
                                child: Text(
                                  state.categoriesModel?.genres?[index].name ??
                                      "",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          );
                        }),
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
