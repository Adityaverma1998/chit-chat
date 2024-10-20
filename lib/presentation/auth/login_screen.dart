import 'package:chit_chat/core/widgets/primary_layout_without_appbar/primary_layout_without_appbar.dart';
import 'package:chit_chat/core/widgets/rounded_button_widget/rounded_button.dart';
import 'package:chit_chat/core/widgets/textfield_widget/textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  late FocusNode _passwordFocusNode;
  late FocusNode _userEmailFocusNode;

  @override
  void initState() {
    super.initState();
    _passwordFocusNode = FocusNode();
    _userEmailFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryLayoutWithoutAppbar(
        widget: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTitleWidget(),
            _buildUserEmail(),
            _buildPassword(),
            _buildLoginButton(),
          ],
        ),
      ),
    ));
  }

  Widget _buildTitleWidget() {
    return Column(
      children: [
        Text('Chit Chat',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary)),
        Text('Chit Chat',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Theme.of(context).colorScheme.primary)),
      ],
    );
  }

  Widget _buildUserEmail() {
    return TextFieldWidget(

      onFieldSubmitted: (value) {
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      },      hint: 'Enter Email',
      inputType: TextInputType.emailAddress,
      errorText: '',
      textController: _userName,
      isSuffixIcon: false,
      focusBorderColor: Theme.of(context).primaryColor,
      enableBorderColor: Theme.of(context).primaryColor,
      textColor: Theme.of(context).primaryColor,
    );
  }

  Widget _buildPassword() {
    return TextFieldWidget(
      focusNode:_passwordFocusNode,
      hint: 'Enter Password',
      inputType: TextInputType.text,
      isObscure: true,
      errorText: '',
      textController: _userName,
      isSuffixIcon: true,
      focusBorderColor: Theme.of(context).primaryColor,
      enableBorderColor: Theme.of(context).primaryColor,
      textColor: Theme.of(context).primaryColor,
      suffixIcon: true ? Icons.visibility : Icons.visibility_off,
      onSuffixIconPressed: () {
        // _formStore.handleVisibility();
      },
    );
  }

  Widget _buildLoginButton() {
    return RoundedButtonWidget(
      buttonText: 'Login',

      onPressed: () {},
      buttonColor: Theme.of(context).colorScheme.surfaceContainer,
    );
  }
}
