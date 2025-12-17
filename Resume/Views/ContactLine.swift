//
//  ContactLine.swift
//  Resume
//
//  Created by Kristian Trenskow on 17/12/2025.
//

import SwiftUI

struct ContactLine: View {

	var body: some View {
		Text(
			verbatim: "this.is@kristians.email | +45 26 66 22 37")
			.font(
				.resume.workSans
					.sized(
						16,
						weight: .light))
			.foregroundStyle(.black)
	}

}
