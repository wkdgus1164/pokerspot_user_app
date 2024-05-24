import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokerspot_user_app/apps/global/constants/assets.dart';
import 'package:pokerspot_user_app/apps/global/theme/color_scheme.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
    required this.handleKeywordInputChanged,
    required this.handleBackButtonClick,
  });

  final Function(String?) handleKeywordInputChanged;
  final Function() handleBackButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: Border(
          bottom: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: handleBackButtonClick,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: colorGrey98,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Assets.searchPrefix.path,
                          colorFilter: const ColorFilter.mode(
                            colorGrey60,
                            BlendMode.srcIn,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            autofocus: true,
                            inputFormatters: _textFieldInputFormatters,
                            decoration: _textFieldDecoration(context),
                            maxLines: 1,
                            onChanged: handleKeywordInputChanged,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<TextInputFormatter> get _textFieldInputFormatters {
    return [
      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Zㄱ-ㅎ가-힣]')),
      FilteringTextInputFormatter.deny(RegExp(r'[!@#$%^&*(),.?":{}|<>]')),
    ];
  }

  InputDecoration _textFieldDecoration(BuildContext context) {
    return InputDecoration(
      contentPadding: EdgeInsets.zero,
      hintText: '매장명을 검색해보세요.',
      hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: colorGrey80,
            height: 1,
          ),
      border: InputBorder.none,
    );
  }
}
