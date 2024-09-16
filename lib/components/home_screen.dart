import 'package:flutter/material.dart';
import 'package:flutter_task_new/res/text_style.dart';
import '../res/colors_schema.dart';
import '../utils/string_const.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog')),
      body: Column(
        children: [
          ElevatedButton(
            child:Text('Show Dialog',style:  TextStyle().normal24w500.textColor(AppColor.primaryColor),),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) {
                  return Container(height: 180,width: 190,
                    child: AlertDialog(
                      title: const Text('Creativity'),
                      content: const Text('You are successfully applied'),
                      actions: [
                        TextButton(
                          onPressed: Navigator.of(context).pop,
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          // DropdownButton(items: [
          //
          // ],
          //     onChanged: onChanged)

        ],
      )

    );

  }
}
