//
//  Table.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import SwiftUI

struct Table: View {

	struct Item {
		let title: String
		let count: Int
	}

	let title: LocalizedString
	let items: [Item]

	init(
		title: LocalizedString,
		items: [Item]
	) {
		self.title = title
		self.items = items
			.sorted { item1, item2 in
				return item1.count > item2.count
			}
	}

	var body: some View {

		VStack(
			alignment: .leading,
			spacing: 15
		) {

			Subheader(
				text: self.title)

			VStack(
				spacing: 0
			) {

				ForEach(self.items, id: \.title) { item in
					HStack(
						spacing: 0
					) {
						Text(item.title)
						Spacer()
						Text("\(item.count)")
							.opacity(0.25)
					}
					.font(.resume.workSans
						.sized(
							14,
							weight: .regular))
				}

			}
			.frame(
				maxWidth: .infinity,
				alignment: .leading)

		}

	}

}

#Preview {
	Table(
		title: LocalizedString(
			en: "Roles",
			da: "Roller"),
		items: [
			Table.Item(title: "Test 1", count: 1),
			Table.Item(title: "Test 2", count: 2)
		])
	.frame(width: 100)
}
