import 'package:flutter/material.dart';
import 'package:test_project/core/common/widgets/app_button.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/add_product/presentation/widgets/upload_photos_button.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sell a Item"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            children: [
              UploadPhotosButton(
                onPressed: () {
                  // TODO: Handle upload photos action
                },
              ),
              SizedBox(height: 24),
              PostForm(),
              SizedBox(height: 35),
              AppButton(text: "Sell", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class PostForm extends StatelessWidget {
  const PostForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AppTextField(
              label: "Title",
              hint: "e.g. Blue Pottery Vase",
              maxLines: 2,
            ),
            SizedBox(height: 16),
            AppTextField(
              label: "Descriptions",
              hint: "e.g. Blue Pottery Vase",
              maxLines: 2,
            ),
            SizedBox(height: 16),
            AppTextField(
              label: "Location",
              hint: "Enter Location",
              addMore: true,
            ),
            SizedBox(height: 16),
            AppTextField(label: "Category", hint: "Enter Category"),
            SizedBox(height: 16),
            AppTextField(label: "Product Size", hint: "Enter Product Size"),
            SizedBox(height: 16),
            AppTextField(label: "Color", hint: "e.g. Blue"),
            SizedBox(height: 16),
            AppTextField(label: "Conditions", hint: "e.g. New, Used"),
            SizedBox(height: 16),
            AppTextField(label: "Product Type", hint: "Enter Product Type"),
            SizedBox(height: 16),
            AppTextField(label: "Time", hint: "Set time"),
          ],
        ),
      ),
    );
  }
}
