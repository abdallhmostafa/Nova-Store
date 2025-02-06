import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/common/widgets/custom_button.dart';
import 'package:nova_store/core/common/widgets/custom_text_field.dart';
import 'package:nova_store/core/common/widgets/text_app.dart';
import 'package:nova_store/core/extensions/context_extention.dart';
import 'package:nova_store/core/lang/lang_keys.dart';
import 'package:nova_store/core/styles/colors/app_colors_dark.dart';
import 'package:nova_store/core/themes/app_text_style.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/category_upload_image.dart';

class CreateAddCategoryBottomSheet extends StatefulWidget {
  const CreateAddCategoryBottomSheet({
    this.isEdit = false,
    super.key,
    this.hintText,
  });
  final bool isEdit;
  final String? hintText;
  @override
  State<CreateAddCategoryBottomSheet> createState() =>
      _CreateAddCategoryBottomSheetState();
}

class _CreateAddCategoryBottomSheetState
    extends State<CreateAddCategoryBottomSheet> {
  late final GlobalKey<FormState> formKey;
  final controller = TextEditingController();
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Form(
        key: formKey,
        child: Column(
          spacing: 10.h,
          children: [
            TextApp(
              text: widget.isEdit
                  ? context.translate(LangKeys.editCategory)
                  : context.translate(LangKeys.createCategory),
              theme: AppTextStyles.f20BoldWhite,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextApp(
                text: widget.isEdit
                    ? context.translate(LangKeys.editTheImage)
                    : context.translate(LangKeys.addImage),
                theme: AppTextStyles.f16MediumWhite,
              ),
            ),
            const CategoryUploadImage(),
            Align(
              alignment: Alignment.centerLeft,
              child: TextApp(
                text: context.translate(LangKeys.enterTheCategoryName),
                theme: AppTextStyles.f16MediumWhite,
              ),
            ),
            CustomTextField(
              controller: controller,
              validator: (value) {
                if (value!.isEmpty) {
                  return context
                      .translate(LangKeys.pleaseEnterTheNameOfTheCategory);
                } else if (value.length < 3) {
                  return context
                      .translate(LangKeys.nameMustBeAtLeast3Characters);
                } else {
                  return null;
                }
              },
              hintText:
                  widget.hintText ?? context.translate(LangKeys.categoryName),
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                lastRadius: 20,
                textColor: AppColorsDark.blueDark,
                threeRadius: 20,
                text: widget.isEdit
                    ? context.translate(LangKeys.editTheCategory)
                    : context.translate(LangKeys.createNewCategory),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    formKey.currentState?.dispose();
    controller.dispose();
    super.dispose();
  }
}
