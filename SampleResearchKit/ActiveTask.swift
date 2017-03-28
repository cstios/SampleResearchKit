//
//  ActiveTask.swift
//  SampleResearchKit
//
//  Created by Surabhi Chopada on 20/03/17.
//  Copyright © 2017 Surabhi Chopada. All rights reserved.
//

import Foundation
import ResearchKit
public var ActiveTask: ORKOrderedTask {
    return ORKOrderedTask.twoFingerTappingIntervalTask(withIdentifier: "TapTask", intendedUseDescription: "Check tapping speed", duration: 6, handOptions: .both, options: ORKPredefinedTaskOption())
}
