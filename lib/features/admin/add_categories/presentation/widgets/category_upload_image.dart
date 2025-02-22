import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/admin_custom_remove_button.dart';

class CategoryUploadImage extends StatefulWidget {
  const CategoryUploadImage({super.key});

  @override
  State<CategoryUploadImage> createState() => _CategoryUploadImageState();
}

class _CategoryUploadImageState extends State<CategoryUploadImage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await context.read<UploadImageCubit>().selectImage();
      },
      child: BlocBuilder<UploadImageCubit, UploadImageState>(
        builder: (context, state) {
          final cubit = context.read<UploadImageCubit>();
          final slectedImage = cubit.slectedImage;
          return Container(
            height: 120.h,
            decoration: BoxDecoration(
              color:
                  slectedImage == null ? Colors.blueGrey : Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: slectedImage == null
                ? const Center(
                    child: FittedBox(
                      child: Icon(
                        Icons.add_photo_alternate_rounded,
                        size: 60,
                      ),
                    ),
                  )
                : Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.file(
                        File(slectedImage.path),
                        fit: BoxFit.fitHeight,
                      ),
                      Positioned(
                        right: 10,
                        top: 0,
                        child: AdminCustomRemoveButton(
                          onPressed: cubit.removeSelectedImage,
                          size: 22.w,
                        ),
                      ),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
