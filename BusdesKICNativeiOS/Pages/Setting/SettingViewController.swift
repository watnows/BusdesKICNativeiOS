import SwiftUI
import UIKit

class SettingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SettingView")
        let settingView = SettingView()
        let hostingVC = UIHostingController(rootView: settingView)
        addChild(hostingVC)
        view.addSubview(hostingVC.view)
        hostingVC.didMove(toParent: self)
        hostingVC.coverView(parent: view)
    }
}
