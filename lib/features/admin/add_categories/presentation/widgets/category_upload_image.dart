import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nova_store/core/utils/app_image_pick.dart';
import 'package:nova_store/features/admin/add_categories/presentation/widgets/admin_custom_remove_button.dart';

class CategoryUploadImage extends StatefulWidget {
  const CategoryUploadImage({super.key});

  @override
  State<CategoryUploadImage> createState() => _CategoryUploadImageState();
}

class _CategoryUploadImageState extends State<CategoryUploadImage> {
  File? packedImage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final image = await AppImagePick.pickImage();
        if (image != null) {
          setState(() {
            packedImage = File(image.path);
          });
        }
      },
      child: Container(
        height: 120.h,
        decoration: BoxDecoration(
          color: packedImage != null ? Colors.transparent : Colors.blueGrey,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: packedImage != null
            ? Stack(
                fit: StackFit.expand,
                children: [
                  Image.file(
                    packedImage!,
                    fit: BoxFit.fitHeight,
                  ),
                  Positioned(
                    right: 10,
                    top: 0,
                    child: AdminCustomRemoveButton(
                      onPressed: () {
                        setState(() {
                          packedImage = null;
                        });
                      },
                      size: 22.w,
                    ),
                  )
                ],
              )
            : const Center(
                child: FittedBox(
                  child: Icon(
                    Icons.add_photo_alternate_rounded,
                    size: 60,
                  ),
                ),
              ),
      ),
    );
  }
}
