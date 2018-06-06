# twitter-dismiss-workaround-ios

A workaround to prevent the dismiss of your view controller done by the Twitter SDK after the 'done' button of the Safari controller.

In the WorkaroundViewController the presentViewController method is used to get the Safari Controller of the TWTRWebAuthenticationViewController class and overrides the delegate. With the safariViewControllerDidFinish delegate method it can determine whether the 'done' button has been pressed on the Safari Controller and then prevent the dismiss in dismissViewControllerAnimated.

Use REPLACE_WITH_KEY for your Twitter keys.
