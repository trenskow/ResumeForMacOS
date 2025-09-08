//
//  Dictionary.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import Foundation

extension Dictionary {

	static func +(
		lhs: Self,
		rhs: Self
	) -> Self {

		var result = lhs

		rhs.forEach { key, value in
			result[key] = value
		}

		return result

	}

}
