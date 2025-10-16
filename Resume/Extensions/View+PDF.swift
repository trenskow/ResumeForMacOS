//
//  View+PDF.swift
//  Resume
//
//  Created by Kristian Trenskow on 13/09/2025.
//

import SwiftUI

extension View {

	func saveAsPDF(
		url: URL,
		rasterizationScale: CGFloat = 1,
		localizedStringLanguage: LocalizedString.Language
	) async {

		await withCheckedContinuation { completion in

			let renderer = ImageRenderer(
				content: self
					.environment(\.colorScheme, .light)
					.environment(\.localizedStringLanguage, localizedStringLanguage))

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

				completion.resume()

			}

		}

	}

}
