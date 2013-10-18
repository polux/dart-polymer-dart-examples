import 'package:polymer/polymer.dart';
import "package:google_oauth2_client/google_oauth2_browser.dart";
import "package:js/js.dart" as js;
import 'dart:html';
import 'dart:convert' show JSON;
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

  _onSignInCallback(Map authResult) {
    log.fine("authRequest = ${authResult}");

    if (authResult["access_token"] != null) {

      // Enable Authenticated requested with the granted token in the client libary
      authenticationContext.token = authResult["access_token"];
      authenticationContext.tokenType = authResult["token_type"];

      // Notify
      if (signInCallback != null) {
        signInCallback(authenticationContext, authResult);
      }
      
      print("!!! logged in!!!");
    } else if (authResult["error"] != null) {
      log.severe("There was an error: ${authResult["error"]}");
    }
  }
  
  /**
   * Calls the OAuth2 endpoint to disconnect the app for the user.
   */
  void disconnect(Event event, var detail, Node target) {
    js.scoped(() {
      // JSONP workaround because the accounts.google.com endpoint doesn't allow CORS
      js.context["myJsonpCallback"] = new js.Callback.once(([jsonData]) {
        // disable authenticated requests in the client library
        authenticationContext.token = null;

        if (signOutCallback != null) {
          signOutCallback();
        }
      });

      ScriptElement script = new Element.tag("script");
      script.src = "https://accounts.google.com/o/oauth2/revoke?token=${authenticationContext.token}&callback=myJsonpCallback";
      document.body.children.add(script);
    });
  }

  void created() {
    super.created();
    
    //authenticationContext = new SimpleOAuth2(null);
    
    /**
     * Calls the method that handles the authentication flow.
     *
     * @param {Object} authResult An Object which contains the access token and
     *   other authentication information.
     */
    js.scoped(() {
      var reviverOAuth = new js.Callback.many((key, value) {
        if (key == "g-oauth-window") {
          return "";
        }

        return value;
      });

      js.context["onSignInCallback"] =  new js.Callback.many((js.Proxy authResult) {
        Map dartAuthResult =
            JSON.parse(js.context["JSON"]["stringify"](authResult, reviverOAuth));
        _onSignInCallback(dartAuthResult);
      });
      
      js.context.gapi.signin.render($['signin'], $['signin'].dataset);
    });
  }
}