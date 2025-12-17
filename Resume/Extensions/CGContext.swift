//
//  CGContext.swift
//  Resume
//
//  Created by Kristian Trenskow on 17/12/2025.
//

import CoreGraphics
import Foundation

extension CGContext {

	@MainActor
	static func pdf(
		url: URL,
		renderer: (CGContext) async -> Void
	) async {

		guard
			let pdf = CGContext(url as CFURL, mediaBox: nil, nil)
		else { return }

		await renderer(pdf)

		pdf.closePDF()

	}

}
