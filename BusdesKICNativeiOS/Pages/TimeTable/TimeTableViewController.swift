import SwiftUI
import UIKit

class TimeTableViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TimeTableView")
        let timeTableView = TimeTableView()
        let hostingVC = UIHostingController(rootView: timeTableView)
        addChild(hostingVC)
        view.addSubview(hostingVC.view)
        hostingVC.didMove(toParent: self)
        hostingVC.coverView(parent: view)
    }
}
