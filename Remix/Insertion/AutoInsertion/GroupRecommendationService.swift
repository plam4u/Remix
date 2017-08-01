//  Copyright © 2017 cutting.io. All rights reserved.

import Foundation
import Entity

protocol GroupRecommendationService {
    func recommendGroup(for text: String, completion: @escaping (GroupID) -> Void)
}
