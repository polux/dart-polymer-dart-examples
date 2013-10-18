import 'package:polymer/polymer.dart';
import "package:google_oauth2_client/google_oauth2_browser.dart";
import "package:js/js.dart" as js;
import 'dart:html';
import 'package:logging/logging.dart';

typedef OnSignInCallback(SimpleOAuth2 authenticationContext, [Map authResult]);
typedef OnSignOutCallback();

final Logger log = new Logger('google-sign-in-element');

@CustomTag('google-sign-in')
class GoogleSignIn extends PolymerElement {
  @observable bool isConnected = false;
  @published String clientId;
  
  OnSignInCallback signInCallback;
  OnSignOutCallback signOutCallback;
  SimpleOAuth2 authenticationContext;

  _onSignInCallback() {
    print('here!');
  }

  void created() {
    super.created();
    
    /**
     * Calls the method that handles the authentication flow.
     *
     * @param {Object} authResult An Object which contains the access token and
     *   other authentication information.
     */
    js.scoped(() {
      js.context["onSignInCallback"] =  new js.Callback.many((js.Proxy authResult) {
        _onSignInCallback();
      });
      
      js.context.gapi.signin.render($['signin'], js.map($['signin'].dataset));
    });
  }
}