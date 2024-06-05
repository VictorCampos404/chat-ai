import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ifsp_ai/common/consts/app_colors.dart';
import 'package:ifsp_ai/common/consts/app_font.dart';
import 'package:ifsp_ai/common/consts/images.dart';
import 'package:ifsp_ai/common/widgets/spaces.dart';
import 'package:ifsp_ai/chat/controller/chat_controller.dart';
import 'package:ifsp_ai/chat/view/widgets/chat_input.dart';
import 'package:ifsp_ai/chat/view/widgets/message_card.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ChatController>(builder: (context, controller, child) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          systemNavigationBarColor: AppColors.background,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          statusBarColor: AppColors.background,
          systemNavigationBarDividerColor: AppColors.background,
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.background,
              appBar: AppBar(
                leading: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    Images.stars,
                    width: 24,
                    height: 24,
                  ),
                ),
                title: const Text('IFSP AI').appBar(),
                centerTitle: false,
                leadingWidth: 48,
                titleSpacing: 0,
                backgroundColor: AppColors.background,
                elevation: 0,
              ),
              body: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  if (controller.messages.isEmpty)
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        Images.stars,
                        width: 112,
                        height: 112,
                      ),
                    )
                  else
                    Container(
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.only(
                        top: Spaces.x4,
                        bottom: Spaces.x9 + Spaces.x4,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            for (int i = 0; i < controller.messages.length; i++)
                              MessageCard(
                                message: controller.messages[i],
                              ),
                          ],
                        ),
                      ),
                    ),
                  const ChatInput(),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
