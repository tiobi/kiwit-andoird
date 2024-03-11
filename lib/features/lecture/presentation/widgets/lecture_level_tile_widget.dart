import 'package:flutter/material.dart';
import 'package:kiwit/core/providers/app_size_provider.dart';
import 'package:kiwit/injection_container.dart';

class LectureTileWidget extends StatelessWidget {
  const LectureTileWidget({Key? key, this.text, this.onPressed})
      : super(key: key);

  final String? text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    AppSizeProvider appSizeProvider = getIt<AppSizeProvider>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      height: appSizeProvider.size!.height * 0.1,
      width: appSizeProvider.size!.width - 50,
      color: Colors.grey,
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
            text ?? "TEMP BOX",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
