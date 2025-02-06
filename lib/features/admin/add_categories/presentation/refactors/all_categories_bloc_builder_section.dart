import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nova_store/core/common/loading/loading_shimmer.dart';
import 'package:nova_store/core/common/widgets/text_app.dart';
import 'package:nova_store/core/network/graphql/graphql_error_model.dart';
import 'package:nova_store/core/themes/app_text_style.dart';
import 'package:nova_store/features/admin/add_categories/data/model/admin_category_model_response.dart';
import 'package:nova_store/features/admin/add_categories/presentation/bloc/bloc/admin_get_all_categories_bloc.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/add_category_item.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/empty_categories_list.dart';

class AllCategoriesBlocBuilderSection extends StatelessWidget {
  const AllCategoriesBlocBuilderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminGetAllCategoriesBloc, AdminGetAllCategoriesState>(
      builder: (context, state) {
        return state.when(
          loading: () => const LoadingShimmer(),
          success: _successState,
          empty: () => _emptyState(context),
          failure: _failureState,
        );
      },
    );
  }

  Center _failureState(GraphqlErrorModel failure) {
    return Center(
      child: TextApp(
        text: failure.errors?.first.message ?? '',
        theme: AppTextStyles.f18BoldWhite,
      ),
    );
  }

  Center _emptyState(BuildContext context) {
    return const Center(
      child: EmptyCategoriesList(),
    );
  }

  ListView _successState(AdminCategoryModelResponse data) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(
          bottom: index == (data.data?.categories?.length ?? 1) - 1 ? 20 : 0,
        ),
        child: AddCategoryItem(
          title: data.data?.categories?[index].name ?? '',
          urlImage: data.data?.categories?[index].image ?? '',
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: data.data?.categories?.length ?? 0,
    );
  }
}
