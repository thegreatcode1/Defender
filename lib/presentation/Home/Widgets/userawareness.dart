import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:phish_defender/api_end_points/api_key.dart';
import 'package:phish_defender/presentation/Home/Widgets/massagewidget.dart';

class AiScreen extends StatefulWidget {
  const AiScreen({super.key});

  @override
  State<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends State<AiScreen> {
  late final GenerativeModel _model;
  late final ChatSession _chatSession;
  final FocusNode textfieldfocus = FocusNode();
  final TextEditingController textcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: "gemini-pro",
      apiKey: apiKey,
    );
    _chatSession = _model.startChat();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final Content content = _chatSession.history.toList()[index];
                final text = content.parts
                    .whereType<TextPart>()
                    .map<String>((e) => e.text)
                    .join('');
                return MassageWidget(
                  text: text,
                  isformtext: content.role == "user" ? 'true' : 'false',
                );
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
      ),
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
