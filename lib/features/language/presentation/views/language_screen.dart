import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/core/common/widgets/app_text_field.dart';
import 'package:test_project/core/constants/app_color.dart';
import 'package:test_project/features/language/presentation/controllers/language_controller.dart';
import 'package:test_project/features/language/presentation/models/language_model.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final languages = [
      LanguageModel(name: "English", code: "en"),
      LanguageModel(name: "Bangla", code: "bn"),
      LanguageModel(name: "Spanish", code: "es"),
      LanguageModel(name: "French", code: "fr"),
    ];

    final controller = Get.find<LanguageController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Language"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AppTextField(
              label: "Select Language",
              hint: "Search languages",
              prefixIcon: Icon(Icons.search),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    onTap: () {
                      controller.changeLanguage(index);
                    },
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: AppColor.grey.withOpacity(0.5),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    title: Text(languages[index].name),
                    trailing: Obx(
                      () => Icon(
                        controller.selectedLanguageIndex.value == index
                            ? Icons.check_circle
                            : Icons.circle_outlined,
                        color: controller.selectedLanguageIndex.value == index
                            ? AppColor.primaryColor
                            : AppColor.grey,
                        size: 26,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
