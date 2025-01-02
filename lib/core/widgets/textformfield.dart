import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vita_apps/core/extensions/context.dart';

import '../gen/assets.gen.dart';
import 'text.dart';

class AppTextFormField extends HookWidget {
  final String hint;
  final String? title;
  final String? Function(String?) validator;
  final void Function(String?) onSaved;
  final bool isObscure;
  final TextInputType? keyboardType;
  final int? maxLength;
  final String? initialValue;
  final void Function(String)? onChanged;

  const AppTextFormField({
    super.key,
    required this.hint,
    this.title,
    required this.validator,
    required this.onSaved,
    this.isObscure = false,
    this.keyboardType,
    this.maxLength,
    this.initialValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (title != null) ...[
          AppText(
            title!,
            style: context.paragraph.copyWith(color: Colors.black),
          ),
          SizedBox(height: 12),
        ],
        HookBuilder(builder: (context) {
          final obscureText = useState<bool>(isObscure);
          return TextFormField(
            onChanged: onChanged,
            initialValue: initialValue,
            maxLength: maxLength,
            keyboardType: keyboardType,
            obscuringCharacter: '*',
            style: context.paragraph,
            obscureText: obscureText.value,
            validator: validator,
            onSaved: onSaved,
            decoration: InputDecoration(
              hintText: hint,
              suffixIcon: isObscure
                  ? IconButton(
                      splashColor: Colors.transparent,
                      onPressed: () => obscureText.value = !obscureText.value,
                      icon: obscureText.value
                          ? Assets.images.closedEye.svg()
                          : Assets.images.eye.svg(),
                    )
                  : null,
            ),
          );
        }),
      ],
    )
        .animate(
          delay: const Duration(milliseconds: 600),
        )
        .fadeIn(
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
  }
}
