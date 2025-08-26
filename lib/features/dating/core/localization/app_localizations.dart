import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  String _getTranslation(String key) {
    return _localizedStrings[locale.languageCode]![key] ?? key;
  }

  // Login Screen Strings
  String get welcome => _getTranslation('welcome');
  String get enterWhatsapp => _getTranslation('enter_whatsapp');
  String get country => _getTranslation('country');
  String get whatsappNumber => _getTranslation('whatsapp_number');
  String get pressContinue => _getTranslation('press_continue');
  String get continueText => _getTranslation('continue_text');
  String get receiveCode => _getTranslation('receive_code');
  String get continueBtn => _getTranslation('continue_btn');
  String get alreadyAccount => _getTranslation('already_account');
  String get here => _getTranslation('here');
  String get logIn => _getTranslation('log_in');

  // Welcome Screen Strings
  String get termsOfUse => _getTranslation('terms_of_use');
  String get privacyPolicy => _getTranslation('privacy_policy');
  String get connectWithPhone => _getTranslation('connect_with_phone');
  String get loginWithFacebook => _getTranslation('login_with_facebook');

  // Login Verification Screen Strings
  String get verificationCode => _getTranslation('verification_code');
  String get enterVerificationCode => _getTranslation('enter_verification_code');
  String get receivewhatsappmessage => _getTranslation('recieve_whatsapp_number');
  String get receivesms => _getTranslation('receive_sms');
  String get codeSentTo => _getTranslation('code_sent_to');
  String get didntReceiveCode => _getTranslation('didnt_receive_code');
  String get resend => _getTranslation('resend');
  String get bypressing => _getTranslation('by_pressing');
  String get aswell => _getTranslation('as_well');
  String get varifycode => _getTranslation('verify_code');
  String get varifycodewhatasappnumber => _getTranslation('verification_code_whatsapp_number');
  String get sendcodeagain => _getTranslation('send_code_again');
  String get submit => _getTranslation('submit');
  String get rememberpassword => _getTranslation('remember_password');

  String get welcometo => _getTranslation('wellcome_to');
  String get chatyamoto => _getTranslation('chatyamo_to');
  String get perfectmatch => _getTranslation('perfect_match');




  static final Map<String, Map<String, String>> _localizedStrings = {
    'en': {
      // Login Screen
      'welcome': 'Welcome',
      'enter_whatsapp': 'Please enter your WhatsApp Number',
      'country': 'Country',
      'whatsapp_number': 'WhatsApp Number',
      'press_continue': 'Press ',
      'continue_text': "'Continue' ",
      'receive_code': 'to receive a code from Chat&Yamo to verify your phone number.',
      'continue_btn': 'Continue',
      'already_account': 'Already have an account created with an Email Address? Then Connect ',
      'here': 'Here ',
      'log_in': 'Log In',

      // Welcome Screen
      'terms_of_use': 'Terms of Use',
      'privacy_policy': 'Privacy Policy',
      'connect_with_phone': 'Connect With a Phone Number',
      'login_with_facebook': 'Login With Facebook',

      // Login Verification Screen
      'verification_code': 'Verification Code',
      'enter_verification_code': 'Enter Verification Code',
      'recieve_whatsapp_number': 'Receive A WhatsApp Message',
      'receive_sms': 'Receive An SMS',
      'code_sent_to': 'Code sent to ',
      'didnt_receive_code': 'Didn\'t receive code? ',
      'resend': 'Resend',
      'by_pressing': 'By Pressing Create an Account or Login you agree to our ',
      'as_well': ' as well as our ',
      'verify_code': 'Verify Code',
      'verification_code_whatsapp_number': 'Please enter the verification code sent to your WhatsApp Number',
      'send_code_again': 'Send the code again',
      'submit': 'Submit',
      'remember_password': 'Remembered Password? ',
      'wellcome_to': 'Welcome to',
      'chatyamo_to': ' Chat&Yamo! ',
      'perfect_match': " Let's Help You Find Your Perfect Match.",


    },
    'es': {
      // Login Screen Spanish
      'welcome': 'Bienvenido',
      'enter_whatsapp': 'Por favor ingrese su número de WhatsApp',
      'country': 'País',
      'whatsapp_number': 'Número de WhatsApp',
      'press_continue': 'Presione ',
      'continue_text': "'Continuar' ",
      'receive_code': 'para recibir un código de Chat&Yamo para verificar su número de teléfono.',
      'continue_btn': 'Continuar',
      'already_account': '¿Ya tiene una cuenta creada con una dirección de correo electrónico? Luego conéctese ',
      'here': 'Aquí ',
      'log_in': 'Iniciar Sesión',

      // Welcome Screen Spanish
      'terms_of_use': 'Términos de Uso',
      'privacy_policy': 'Política de Privacidad',
      'connect_with_phone': 'Conectar con número de teléfono',
      'login_with_facebook': 'Iniciar sesión con Facebook',

      // Login Verification Screen Spanish
      'verification_code': 'Código de Verificación',
      'enter_verification_code': 'Ingrese el Código de Verificación',
      'recieve_whatsapp_number': 'Recibir un Mensaje de WhatsApp',
      'receive_sms': 'Recibir un SMS',
      'code_sent_to': 'Código enviado a ',
      'didnt_receive_code': '¿No recibió el código? ',
      'resend': 'Reenviar',
    },
  };
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

extension LocalizationExtension on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}