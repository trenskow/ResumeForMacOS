//
//  ClientsRow.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

import Foundation
import SwiftUI

struct ClientsRow: View {

	let clients: [(Data, Client.Logo)]

	init(
		clients: [Client]
	) {
		self.clients = clients
			.compactMap { $0.logo }
			.map { logo in

				guard
					let data = NSDataAsset(name: logo.dataName)?.data
				else {
					fatalError("Could not load data asset named '\(logo.dataName)'")
				}

				return (data, logo)

			}
	}

	var body: some View {
		HStack(
			spacing: 0
		) {
			ForEach(0..<self.clients.count, id: \.self) { index in

				let (data, logo) = self.clients[index]

				data.svg
					.frame(
						width: logo.width)
					.offset(
						y: logo.offsetY)

				if index < self.clients.count - 1 {
					Spacer()
				}


			}
		}
		.frame(maxWidth: .infinity)
		.frame(height: 20)
	}

}

#Preview {
	ClientsRow(
		clients: [
			.folketinget,
			.theBirds,
			.issuu,
			.jabra,
			.lego
		])
}
