//  Copyright © 2017 cutting.io. All rights reserved.

import Foundation
import Entity
import Services

class DiscoveryInteractor {

    let advertService: AdvertService

    init(advertService: AdvertService) {
        self.advertService = advertService
    }
    
    func fetchDetail(for advertID: AdvertID, completion: @escaping (Advert?) -> Void) {
        advertService.fetchAdvert(for: advertID) { advert in
            completion(advert)
        }
    }
}