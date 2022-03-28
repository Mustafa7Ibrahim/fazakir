import 'package:fazakir/views/settings/widgets/policy.dart';
import 'package:flutter/material.dart';

const file = "assets/md/privacy.md";

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);
  static const routeName = '/privacy_policy';

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("سياسة الخصوصية"),
      ),
      body: const Policy(mdFile: file),
    );
  }
}
