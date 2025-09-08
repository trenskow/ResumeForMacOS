//
//  Data+SVG.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import Foundation
import SVGView

extension Data {

	@MainActor
	var svg: SVGView {
		SVGView(
			data: self)
	}

}
