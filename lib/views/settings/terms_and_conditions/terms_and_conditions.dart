import 'package:flutter/material.dart';

import '../widgets/policy.dart';

const file = "assets/md/terms&conditions.md";

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);
  static const routeName = '/terms_and_conditions';

  @override
  State<TermsAndConditions> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الشروط والأحكام"),
      ),
      body: const Policy(mdFile: file),
    );
  }
}
