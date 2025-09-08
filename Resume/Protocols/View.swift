//
//  View.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

extension View {

	func render(
		into url: URL,
		rasterizationScale: CGFloat = 1.0,
	) throws {

		let renderer = ImageRenderer(
			content: self)

		renderer.render(
			rasterizationScale: rasterizationScale
		) { size, context in

			var box = CGRect(origin: .zero, size: size)

			guard
				let pdf = CGContext(url as CFURL, mediaBox: &box, nil)
			else { return }

			pdf.beginPDFPage(nil)

			context(pdf)

			pdf.endPDFPage()
			pdf.closePDF()

		}

	}

}
