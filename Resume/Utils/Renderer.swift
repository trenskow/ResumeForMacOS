//
//  Renderer.swift
//  Resume
//
//  Created by Kristian Trenskow on 09/09/2025.
//

import SwiftUI
import Combine
import AppKit

@MainActor
class Renderer<Content: View> {

	let url: URL
	let rasterizingScale: CGFloat
	let renderer: ImageRenderer<Content>

	init(
		url: URL,
		rasterizingScale: CGFloat = 1,
		content: Content
	) {

		self.url = url
		self.rasterizingScale = rasterizingScale

		self.renderer = ImageRenderer(
			content: content)

		self.renderer.proposedSize = .init(
			width: 986,
			height: nil)

		self.renderer.isOpaque = true

		self.renderer.isObservationEnabled = true

		Task {
			for await _ in self.renderer.objectWillChange.values {
				print("Renderer content changed, re-rendering…")
				self.render()
			}
		}

	}

	func render() {

		renderer.render(
			rasterizationScale: self.rasterizingScale
		) { size, context in

			var box = CGRect(origin: .zero, size: size)

			guard
				let pdf = CGContext(self.url as CFURL, mediaBox: &box, nil)
			else { return }

			pdf.beginPDFPage(nil)

			context(pdf)

			pdf.endPDFPage()
			pdf.closePDF()

			NSWorkspace.shared.open(self.url)

		}

	}

}
