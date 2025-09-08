//
//  DataAsset.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

@propertyWrapper
struct DataAsset {

	let wrappedValue: Data

	init(
		name: String
	) {

		guard
			let data = NSDataAsset(name: name)?.data
		else {
			fatalError("Could not load data asset named '\(name)'")
		}

		self.wrappedValue = data

	}

}
