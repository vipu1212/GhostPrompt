GhostPrompt

<b> Installation - </b>
You want to add pod 'GhostPrompt', '~> 0.0' similar to the following to your Podfile:

target 'MyApp' do
  pod 'GhostPrompt', '~> 0.0'
end
Then run a pod install inside your terminal, or from CocoaPods.app.

Alternatively to give it a test run, run the command:

pod try GhostPrompt

<b> Using GhostPrompt in code </b>

        let prompt = GhostPrompt(height: 55, ParentView: self.view)
        prompt.showMessage(Message: "Boooo")

Customizable Properties
     promptHeight 
     bgColor 
     textColor = UIColor.whiteColor()
     view : UIView
     appearingDirection = UIView.Direction.Bottom
      animationTime = 0.4

<b> Key Points </b>
 1. Currently alert is shown just at the bottom of the view.
 2. Highly suggested to pass 'self.view' view to prompt
