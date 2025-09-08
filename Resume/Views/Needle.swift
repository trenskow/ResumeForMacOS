//
//  Needle.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI
import SVGView

struct Needle: View {

	enum Direction {
		case up
		case down
		case left
		case right
	}

	@DataAsset(name: "Data/NeedleHead")
	private var needleHead: Data

	let direction: Direction

	init(
		direction: Direction
	) {
		self.direction = direction
	}

	var shaft: some View {
		Canvas { context, size in

			let path: Path

			switch self.direction {
			case .up, .down:
				path = Path(roundedRect: CGRect(x: (size.width - 4) / 2, y: 0, width: 4, height: size.height), cornerSize: CGSize(width: 2, height: 2))
			case .left, .right:
				path = Path(roundedRect: CGRect(x: 0, y: (size.height - 4) / 2, width: size.width, height: 4), cornerSize: CGSize(width: 2, height: 2))
			}

			context.fill(path, with: .color(.white))

		}
	}

	var body: some View {

		Stack(
			direction: self.direction.stackDirection,
			spacing: 8
		) {

			if self.direction.headPosition == .after {
				self.shaft
			}

			self.needleHead.svg
				.frame(width: 20, height: 20)

			if self.direction.headPosition == .before {
				self.shaft
			}

		}
		.frame(
			with: self.direction)

	}

}

extension View {
	fileprivate func frame(
		with direction: Needle.Direction
	) -> some View {
		switch direction {
		case .up, .down:
			return self
				.frame(width: 20)
				.frame(maxHeight: .infinity)
		case .left, .right:
			return self
				.frame(height: 20)
				.frame(maxWidth: .infinity)
		}
	}
}

extension Needle.Direction {

	enum HeadPosition {
		case before
		case after
	}

	var stackDirection: StackDirection {
		switch self {
		case .up, .down:
			return .vertical
		case .left, .right:
			return .horizontal
		}
	}

	var headPosition: HeadPosition {
		switch self {
		case .up, .left:
			return .after
		case .down, .right:
			return .before
		}
	}

}

#Preview {
	Needle(
		direction: .right)
	.frame(width: 200, height: 20)
}
