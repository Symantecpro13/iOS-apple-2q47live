import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Call the function to display the popup
        displayPopup()
    }

    func displayPopup() {
        let alertController = UIAlertController(title: "Important Notice", message: "This is a sample popup message.", preferredStyle: .alert)
        
        // Add a red color to the title and message
        let titleAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        let messageAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        alertController.setValue(NSAttributedString(string: alertController.title!, attributes: titleAttributes), forKey: "attributedTitle")
        alertController.setValue(NSAttributedString(string: alertController.message!, attributes: messageAttributes), forKey: "attributedMessage")
        
        // Add an action to call a toll-free number
        let callAction = UIAlertAction(title: "Call Support", style: .default) { _ in
            // Call the```swift
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Call the function to display the popup
        displayPopup()
    }

    func displayPopup() {
        let alertController = UIAlertController(title: "Important Notice", message: "This is a sample popup message.", preferredStyle: .alert)
        
        // Add a red color to the title and message
        let titleAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        let messageAttributes = [NSAttributedString.Key.foregroundColor: UIColor.red]
        
        alertController.setValue(NSAttributedString(string: alertController.title!, attributes: titleAttributes), forKey: "attributedTitle")
        alertController.setValue(NSAttributedString(string: alertController.message!, attributes: messageAttributes), forKey: "attributedMessage")
        
        // Add an action to call a toll-free number
        let callAction = UIAlertAction(title: "Call Support (1-800-123-4567)", style: .default) { _ in
            // Call the toll-free number
            if let url = URL(string: "tel://1-800-123-4567") {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        
        // Add an action to dismiss the popup
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel)
        
        // Add the actions to the popup
        alertController.addAction(callAction)
        alertController.addAction(dismissAction)
        
        // Present the popup
        present(alertController, animated: true)
    }
}
