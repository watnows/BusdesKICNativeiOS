import SwiftUI
import UIKit

class ContentViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ContentView")
        let contentView = ContentView()
        let hostingVC = UIHostingController(rootView: contentView)
        addChild(hostingVC)
        view.addSubview(hostingVC.view)
        hostingVC.didMove(toParent: self)
        hostingVC.coverView(parent: view)
    }
}
