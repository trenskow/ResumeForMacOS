//
//  Project+Description.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var description: String {
		switch self {
		case .threeShape: return """
			There is really not that much to say about this project at this point as it is not released.
			I was a part of a team where we were two iOS developers and two Android developers. I can say, though, that I was in charge of integrating an in-house C++ library to work in Swift.
			"""
		case .huligennem: return """
			HULiGENNEM is a podcast app for children. It is a publicly funded app in Denmark aimed to create content targeted children.
			I was part of a team at Framna, who made this app come together extremely quickly!
			"""
		case .cph: return """
			I was tasked with implementing a new shopping section in the app for Copenhagen Airport.
			The app is one of those older apps where some features are still implemented in Objective-C. I introduced SwiftUI to the app for this new feature
			"""
		case .theBirds: return """
			This is the first full website I ever did. I did both backend and frontend development.
			The backend was a Strapi headless CMS, which the client uses to setup all content of the site. The site is comprised of a different component types that can be put together to make a page.
			The frontend is written entirely in Svelte 5 – with SvelteKit underneath. Svelte was an amazing experience to work with – having worked with also React, Svelte makes web development so much more exciting!
			The design was done by DAY21. They did an amazing job and to be honest I think the usage of Svelte and their design really came through as an amazing result!
			Visit: fuglevaernsfonden.dk
			"""
		case .finans: return """
			In winter of 2023/2024 I assisted Nykredit in gettin some designchanges implemented into their Finans iOS and Android app. The app was relative well maintained, so it was a relatively simple task.
			"""
		case .reliefV2: return """
			In fall of 2023 I assisted GN Hearing A/S in getting their Relief app updated on iOS. The app hadn’t been updated for a whil, so it needed some work to get it to build on the newest hardware and Xcode version.
			"""
		case .sdkV2: return """
			From January 2023 through to March 2024 I was back at the SDK & Sound+ team at Jabra. This was the same team I had joined and stayed with for a year six years prior.
			I was very happy to see, that the SDK I wrote back in 2017 was still in use, and I got to work on it again – which was a trip down memory lane.
			The current maintainers of the SDK used this time to pick my brain about background information on strange decisions made those years ago. So it was all in all a great experience.
			Like the last time I was there, I also helped out on the Sound+ team.
			"""
		case .panacast: return """
			This contract which started right when Lunar ended in September 2022 and ended in
			December 2022.
			I was a lead for Panacast 50 VBS project involving four other team members. My responsibility as a team lead was to ensure that we as a team found the right solutions.
			"""
		case .tinget: return """
			On the side of my full time contract I was a advising iOS lead on a project for Folketinget (The Danish Parliament). My role was to attend meetings and help the iOS team make the right technical decisions and to assist the project manager with technical project lead.
			I also assisted in the communication between the project group and the client.
			"""
		case .lunar: return """
			At Lunar I have been a part of their Android team.
			I have helped them in the following way:
			– I have been the architect on the Android library for their material design guide, which has resultet in an easy to use API where you rapidly can create screens using Kotlin DSL.
			– Implemented P2P borrowing for their Swedish customers (Lunar implementation of Lendify).
			"""
		case .leaHealth: return """
			My role was to be the architect on both backend and on apps, as well as being the lead for the development team comprising of two other app developers and a backend developer. I also aided the two app developers on both iOS and Android.
			The app was more or less powered by the headless CMS Strapi, which was used to generate all content. In the frontend (on iOS and Android) native screens was made, that took this content and made it into a native app.
			"""
		case .relief: return """
			GN Group A/S had an online hearing test used by people who wanted to know if they suffered from potential hearing loss. They wanted a native implementation in iOS, which I made.
			"""
		case .spike: return """
			I was part of the SCRUM team developing the app side of the SPIKE project. My main responsibilities was the Bluetooth stack, where I was responsible for implementing and maintains the radio communication with the device on iOS and Mac.
			"""
		case .mitYouSee: return """
			I worked on the SCRUM team developing the Mit YouSee app. I was part of the daily development and development decisions. It was a short contract, as they only needed the role to bump development fast.
			"""
		case .bolig: return """
			Danske Bank needed development assistance of one of their Bolig app, as the iOS version of the app was lagging behind the Android version. I was hired for three months to help the iOS team get up to speed with Android.
			Furthermore I had the responsibility to improve the UI/UX of the app. As an experienced UI/UX developer, I was asked to refine - especially the UX - part of the app. As an example the app uses a card view, but it was crudely implemented and was rigid in its response. I reimplemented them, so they had a more natural feel for the users.
			"""
		case .issuu: return """
			In Berlin I worked for three months at Issuu. Issuu is a Copenhagen company that provides a platform for traditionally printed magazines to public online.
			They needed a “Visual Story” tool, which was a tool for publishers, that could turn articles into meaningful stories for social media platforms like Instagram and Facebook. A design agency has made som templates for how stories should look, and I was brought in to make it an iOS tool.
			Using AVFoundation I created a tool, that took elements from an article (images, taglines, paragraphs, etc.) and inserted them into these templates, which then generated a set of videos directly available to share to social media platforms. An editor was also created, where it was possible for the publisher to fine tune the stories, before they were published (change text, images, etc.).
			The whole thing resultet in a framework, which is going open source at one point (release unknown at this moment).
			"""
		case .sdk: return """
			From fall 2017 to fall 2018 I was assigned to redesign the APIs for GN Jabra’s public SDK for iOS and Mac. I was the architect and lead developer of the new APIs. The APIs are also the framework used internally for GN Jabra’s own apps on the App Store, most prominently the Sound+ app. Underneath the SDK communicates with the devices using Bluetooth with External Accessory and Core Bluetooth. GN’s proprietary underlaying communication protocol is abstracted away.
			The APIs are designed around the notion of capabilities. Each model of GN Jabra’s headset has diﬀerent capabilities, and the SDK is designed around this concept. Because of technical diﬃculties the SDK never came publicly available.
			I also did some contributions to the Sound+ app, where I was responsible for implementing the equalizer.
			"""
		case .auEvacuate: return """
			In winter/spring of 2017 I designed and developed an application for Aarhus University, which served the purpose of being a supplement to their existing evacuation infrastructure. As any big organisation they need a thorough emergency and evacuation plan, and they felt they lacked some reach.
			They approached me with the idea of making an app, that could receive immediate notification, when an evacuation was acute. The goal was to make it available to as many employees and students as possible, as a means of communication in a situation where an evacuation was needed. I designed the app, made the backend implementation in Node.js, designed and build the app for both iOS and Android – which was both natively build in Swift and Java.
			"""
		case .auFindV2: return """
			The first AU Find app was my very first app in 2011 - written for iOS 4. With the advent of iOS 10 it was apparent, that the app was in line for a very needed update — it wouldn’t even work on iOS 10.
			The result was a complete rewrite of the old app. This time written in modern Swift 3, using Storyboards and last, but not least, Apple Watch support.
			The app is simple and strait forward, and so is the design — although the new design is much more in sync with the Aarhus University brand. Besides, it featured an Apple Watch extension, so users can find buildings directly on their watches.
			Also it was a very interesting experience rewriting an app I wrote five years ago — to see the personal advancements I’ve made in both the technological and the design aspects of my skills in five years.
			"""
		case .taxiFix: return """
			With Taxifix I updated an existing app for one of their clients - Taxifix. Taxifix is a nationwide Norwegian taxi app, that enables you to order taxis from your current location from many cities in Norway. The client wanted the ability for it’s users to purchase an entire trip from within the app. Get a price, accept it and pay - all in advance.
			My responsibility was to implement credit card payments into their existing app. The client also wished to get the user an overview over all previous trips - and make all receipts available - implemented into the app - which I also did.
			Beside that I implemented a new lead in flow which makes it really easy for the user to get started with the app. Lastly I remade all app graphics - as vectors in Sketch - in order to make the app support all iPhone versions.
			"""
		case .drTv: return """
			When Apple announced the Apple TV 4 and the tvOS in October, it became apparent that the national danish broadcaster (DR) needed to be on board from day one. DR had previously been in dialog with Apple in regards to providing an application for the Apple TV 3, but those talks had stalled.
			When tvOS came in it had six weeks before it would be available in stores. Therefore it was decided to hire the danish app company Robocat to do the app, while I was the tech lead and technical responsible on the DR side. My job was to make sure that everything delivered was of a quality that was good enough for in-sourcing the app, in case something went wrong.
			I did some coding, but primarily my role was almost purely technical management.
			"""
		case .drNyheder: return """
			The national danish broadcaster needed an urgent rewrite of their news app. Their push notification provider - which was used for breaking news - had deprecated the API used.
			Therefore it was decided to do a rewrite - which I did in two weeks. The product design was already in place, and this was just a pure rewrite of the existing application.
			I did, though, change some things as I did slight changes as moving the menu from right to left and implemented the ability for the news overview to display marketing banners.
			"""
		case .economic: return """
			The work I did for e-conomic International A/S. We were three developers, a designer and a product owner - organized in a scrum team.
			e-conomic already had an app prior to this one. It was very poor - made by a Macedonian company - and the decision was made to in-source the development - and start development from scratch. The old app was pulled from the App Store. When I joined the team they already had an almost functional app. It had some issues in regards to user experience and performance - which I, as a senior developer, helped them overcome.
			The app communicated using e-conomic’s own REST interface and with JSON as the data format.
			"""
		case .one: return """
			The KREAFUNK ONE app is a simple, beautiful app that combines your iPhone’s music, Spotify and podcasts into a single slick app. You can combine tracks and create queues from any of the previously mentioned sources - with gapless playback. It is created for the Danish speaker company KREAFUNK to work in combination with their speakers.
			They wanted a single app that could create a seamless experience for their customers. But it is not just for users of KREAFUNK products - it can be used with any one who wants a simple audio player for all their musical needs.
			"""
		case .spotable: return """
			Spotable is a Spotify client for macOS, that is build using the Spotify iOS SDK. It is not an official Spotify client, but it uses the official SDK to communicate with Spotify.
			In 2013 I was contacted by Pioneer Europe, Belgium. They were planning a Spotify player for one of their car radio products and wanted a prototype. This was just before Apple introduced CarPlay and therefore it was build using their own proprietary solution.
			It was basically a rewrite of the original Spotable for iPad - but targeting iPhones (see Spotable for iPad - page 9). The app was completely redesigned and utilizes it’s own audio output and queue using Core Audio.
			When CarPlay arrived it no longer made sense to continue using a proprietary solution - even though the app was very close to complete. Even though it remained a prototype, It was featured at Pioneers exhibition at the 2013 CES.
			"""
		case .airfloat: return """
			AirFloat is an interesting project. It is a reimplementation of the audio part of AirPlay - the technology formerly known as AirTunes. It is an implementation of the so called Apple RAOP protocol with an app build on top.
			What it does is it allows you to stream audio from any AirPlay capable device to your iOS device. While iOS devices normally only lets you send audio - AirFloat enables your device to receive audio.
			It is written completely from the ground up - implementing all aspects of the protocol including synchronization - enabling you to stream to multiple Apple or AirFloat devices at the time.
			The protocol and audio output is written in C and the app is written in - well - Objective-C.
			"""
		case .auFind: return """
			This was my very first App Store iOS app.
			Aarhus University is build around an American campus model - situated in the middle of Denmark’s second largest city, Aarhus. It does not follow the conventional danish street and number model for finding locations - as the other Danish universities does, but instead each building on campus has a number. This makes it very difficult to find your way - especially for new students. An iPhone app was the ideal solution for this.
			Aarhus University already had a database with all staff, departments and buildings - but no location data associated with these data - plus the database was saturated out of being fed by numerous sources. The solution was to create a proxy. A proxy that every night takes a full copy of the entire database and sorts it, cleans it, relates the data in it - and adds location data. The result was very clean and fast data. So clean and fast that the official Aarhus University website - when searching staff, departments or buildings - now uses the same proxy.
			"""
		}
	}

}
