//
//  View+PDF.swift
//  Resume
//
//  Created by Kristian Trenskow on 13/09/2025.
//

import SwiftUI

@MainActor
extension View {

	func saveAsPDF(
		url: URL,
		rasterizationScale: CGFloat = 1
	) async {

		guard
			let pdf = CGContext(url as CFURL, mediaBox: nil, nil)
		else { return }

		await self.renderPage(
			toPDF: pdf,
			rasterizationScale: rasterizationScale)

		pdf.closePDF()

	}

	func renderPage(
		toPDF pdf: CGContext,
		rasterizationScale: CGFloat = 1
	) async {

		await withCheckedContinuation { continuation in

			let renderer = ImageRenderer(
				content: self)

			renderer.render(
				rasterizationScale: rasterizationScale
			) { size, context in

				var box = CGRect(origin: .zero, size: size)

				pdf.beginPDFPage([
					kCGPDFContextMediaBox: NSData(
						bytes: &box,
						length: MemoryLayout<CGRect>.size)
				] as CFDictionary)

				context(pdf)

				pdf.endPDFPage()

				continuation.resume()

			}

		}

	}

	func pdfFriendlyView(
		localizedStringLanguage: LocalizedString.Language = .en
	) -> some View {
		self
			.environment(\.colorScheme, .light)
			.environment(\.localizedStringLanguage, localizedStringLanguage)
			.environment(\.renderContext, .pdf)
	}

	func defaultGeometry() -> some View {
		return self
			.padding(30)
			.frame(width: 986)
	}

	func renderLaidOutPage(
		toPDF pdf: CGContext,
		localizedStringLanguage: LocalizedString.Language = .en
	) async {
		await self
			.defaultGeometry()
			.pdfFriendlyView(
				localizedStringLanguage: localizedStringLanguage
			)
			.renderPage(
				toPDF: pdf)
	}

	func projectLayout() -> some View {
		Panel {
			VStack(
				alignment: .leading,
				spacing: 0
			) {

				self

			}
			.padding(.vertical, 60)
			.padding(.trailing, 60)
			.padding(.leading, 30)
		}
	}

}

@MainActor
enum RenderContext: @MainActor EnvironmentKey {

	case pdf
	case screen

	static var defaultValue: RenderContext = .screen

}

@MainActor
extension EnvironmentValues {
	var renderContext: RenderContext {
		get { self[RenderContext.self] }
		set { self[RenderContext.self] = newValue }
	}
}
