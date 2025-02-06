import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nova_store/core/common/widgets/admin/admin_app_bar.dart';
import 'package:nova_store/core/di/dependency_injection.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/features/admin/add_categories/data/repos/admin_categories_repo_impl.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/admin_create_category_bloc/admin_create_category_bloc.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/get_all_categories_bloc/admin_get_all_categories_bloc.dart';
import 'package:nova_store/features/admin/add_categories/presentation/refactors/add_categore_page_body.dart';

class AddCategorePage extends StatelessWidget {
  const AddCategorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AdminGetAllCategoriesBloc(
            serviceLocator<AdminCategoriesRepoImpl>(),
          )..add(const AdminGetAllCategoriesEvent.getAllCategories()),
        ),
        BlocProvider(
          create: (context) => AdminCreateCategoryBloc(
            serviceLocator<AdminCategoriesRepoImpl>(),
          ),
        ),
      ],
      child: Scaffold(
        appBar: AdminAppBar(
          title: context.translate(LangKeys.categories),
        ),
        body: const AddCategorePageBody(),
      ),
    );
  }
}
