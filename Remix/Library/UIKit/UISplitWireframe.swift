//  Copyright © 2017 cutting.io. All rights reserved.

import UIKit

// Implements the SplitWireframe for use with UIKit components (using a UISplitViewController).
class UISplitWireframe: UISplitViewController, SplitWireframe, Viewable {

    var master: Viewable? {
        didSet {
            guard let viewController = master?.viewController else { return }
            viewControllers = [viewController]
            preferredDisplayMode = .allVisible
        }
    }

    var detail: Viewable? {
        didSet {
            guard let viewController = detail?.viewController else { return }
            showDetailViewController(viewController, sender: nil)
        }
    }
}
