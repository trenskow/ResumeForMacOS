//
//  Font.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

#if canImport(AppKit)
typealias NFontDescriptor = NSFontDescriptor
typealias NFont = NSFont
#elseif canImport(UIKit)
typealias NFontDescriptor = UIFontDescriptor
typealias NFont = UIFont
#endif

extension Font {

	@MainActor
	public enum FontWeight: CGFloat, CaseIterable {

		case ultraLight = -0.8
		case thin       = -0.6
		case light      = -0.4
		case regular    = 0.0
		case medium     = 0.23
		case semibold   = 0.3
		case bold       = 0.4
		case heavy      = 0.56
		case black      = 0.62

		static func closest(
			cases: [FontWeight] = Self.allCases,
			to value: CGFloat
		) -> FontWeight {
			return cases
				.min(by: { abs($0.rawValue - value) < abs($1.rawValue - value) }) ?? .regular
		}

	}

	@MainActor
	struct FontAsset {

		let name: String
		let weights: [FontWeight: String]

		init(
			name: String,
			suffixes: [String] = ["Combined"]
		) {

			self.name = name

			self.weights = suffixes
				.reduce([:], { weights, suffix in

					guard
						let url = Bundle.main.url(forResource: "\(name)-\(suffix)", withExtension: "ttf")
					else { return weights }

					CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)

					var fileWeights: [FontWeight: String] = [:]

					let descriptors = (CTFontManagerCreateFontDescriptorsFromURL(url as CFURL) as! [CTFontDescriptor])
						.map { $0 as NFontDescriptor }

					descriptors.forEach { descriptor in

						guard let traits = descriptor.object(forKey: .traits) as? [NFontDescriptor.TraitKey: Any]
						else { return }

						guard let weight = traits[.weight] as? NFont.Weight
						else { return }

						fileWeights[FontWeight.closest(
							to: weight.rawValue)] = descriptor.postscriptName

					}

					return weights + fileWeights

				})

		}

		func sized(
			_ size: CGFloat,
			weight: FontWeight? = nil
		) -> Font {

			let weight = weight.map({ FontWeight.closest(
				cases: self.weights.keys.map({ $0 }),
				to: $0.rawValue) })

			return Font.custom(
				weight.flatMap({ self.weights[$0] }) ?? self.name,
				size: size)

		}

	}

	@MainActor
	struct Resume {
		let urbanist = FontAsset(name: "Urbanist")
		let workSans = FontAsset(name: "WorkSans")
	}

	@MainActor
	static let resume = Resume()

}
