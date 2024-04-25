//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
//import 'package:phish_defender/core/textstyle.dart';
import 'package:phish_defender/presentation/Home/Widgets/massagewidget.dart';

//import 'package:phish_defender/core/textstyle.dart';
ChatSession? chatSessionnew;
final TextEditingController textcontroller = TextEditingController();
final FocusNode textfieldfocus = FocusNode();
bool loading = false;

class UserAwareness extends StatelessWidget {
  static String apiKey = apiKey;
  const UserAwareness({
    super.key,
  });

  Future<void> getgemini() async {
    final GenerativeModel model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: apiKey,
    );
    final ChatSession chatSession = model.startChat();
    chatSessionnew = chatSession;
  }

  @override
  Widget build(BuildContext context) {
    getgemini();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final Content? content = chatSessionnew?.history.toList()[index];
              if (content != null) {
                final text = content.parts
                    .whereType<TextPart>()
                    .map((e) => e.text)
                    .join('');
                return MassageWidget(
                  text: text,
                  isformtext: content.role == "user" ? "true" : "false",
                );
              } else {
                const Text("loading");
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 15,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  focusNode: textfieldfocus,
                  controller: textcontroller,
                  decoration: textfielddecoration(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  InputDecoration textfielddecoration() {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(15),
      hintText: "Enter a prompt",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: Colors.blue),
      ),
    );
  }
}
