//
//  Project+Description.swift
//  Resume
//
//  Created by Kristian Trenskow on 08/09/2025.
//

extension Project {

	var description: LocalizedString {
		switch self {
		case .threeShape: return LocalizedString(
			en: """
				There is really not that much to say about this project at this point as it is not released.
				I was a part of a team where we were two iOS developers and two Android developers. I can say, though, that I was in charge of integrating an in-house C++ library to work in Swift.
				""",
			da: """
				Der er egentlig ikke så meget at sige om dette projekt på nuværende tidspunkt, da det endnu ikke er udgivet.
				Jeg var en del af et team bestående af to iOS-udviklere og to Android-udviklere. Jeg kan dog nævne, at jeg havde ansvaret for at integrere et internt C++-bibliotek, så det kunne fungere i Swift.
				""")
		case .huligennem: return LocalizedString(
			en: """
				HULiGENNEM is a podcast app for children. It is a publicly funded app in Denmark aimed to create content targeted children.
				I was part of a team at Framna, who made this app come together extremely quickly!
				""",
			da: """
				HULiGENNEM er en podcast-app for børn. Det er en offentligt finansieret app i Danmark, som har til formål at skabe indhold målrettet børn.
				Jeg var en del af teamet hos Framna, som fik denne app til at blive realiseret på rekordtid!
				""")
		case .cph: return LocalizedString(
			en: """
				I was tasked with implementing a new shopping section in the app for Copenhagen Airport.
				The app is one of those older apps where some features are still implemented in Objective-C. I introduced SwiftUI to the app for this new feature
				""",
			da: """
				Jeg havde til opgave at implementere en ny shopping-sektion i appen for Københavns Lufthavn.
				Appen er en af de ældre, hvor nogle funktioner stadig er implementeret i Objective-C. Jeg introducerede SwiftUI i appen til denne nye funktion.
				""")
		case .theBirds: return LocalizedString(
			en: """
			This is the first full website I ever did. I did both backend and frontend development.
			The backend was a Strapi headless CMS, which the client uses to setup all content of the site. The site is comprised of a different component types that can be put together to make a page.
			The frontend is written entirely in Svelte 5 – with SvelteKit underneath. Svelte was an amazing experience to work with – having worked with also React, Svelte makes web development so much more exciting!
			The design was done by DAY21. They did an amazing job and to be honest I think the usage of Svelte and their design really came through as an amazing result!
			Visit: fuglevaernsfonden.dk
			""",
			da: """
				Dette er den første fulde hjemmeside, jeg nogensinde har lavet. Jeg stod for både backend- og frontend-udviklingen.
				Backenden er et Strapi headless CMS, som kunden bruger til at opsætte alt indhold på siden. Hjemmesiden består af forskellige komponenttyper, der kan sammensættes for at danne en side.
				Frontenden er skrevet udelukkende i Svelte 5 – med SvelteKit som grundlag. Det var en fantastisk oplevelse at arbejde med Svelte – efter også at have arbejdet med React, gør Svelte webudvikling langt mere spændende!
				Designet er lavet af DAY21. De gjorde et fremragende stykke arbejde, og helt ærligt synes jeg, at kombinationen af Svelte og deres design virkelig resulterede i et fantastisk slutprodukt!
				Besøg: fuglevaernsfonden.dk
				""")
		case .finans: return LocalizedString(
			en: """
				In winter of 2023/2024 I assisted Nykredit in gettin some designchanges implemented into their Finans iOS and Android app. The app was relative well maintained, so it was a relatively simple task.
				""",
			da: """
				I vinteren 2023/2024 hjalp jeg Nykredit med at få implementeret nogle designændringer i deres Finans-app til iOS og Android. Appen var forholdsvis velholdt, så det var en relativt enkel opgave.
				""")

		case .reliefV2: return LocalizedString(
			en: """
				In fall of 2023 I assisted GN Hearing A/S in getting their Relief app updated on iOS. The app hadn’t been updated for a whil, so it needed some work to get it to build on the newest hardware and Xcode version.
			""",
			da: """
				I efteråret 2023 hjalp jeg GN Hearing A/S med at få opdateret deres Relief-app til iOS. Appen havde ikke været opdateret i et stykke tid, så der skulle lidt arbejde til for at få den til at bygge på den nyeste hardware og Xcode-version.
				""")
		case .sdkV2: return LocalizedString(
			en: """
				From January 2023 through to March 2024 I was back at the SDK & Sound+ team at Jabra. This was the same team I had joined and stayed with for a year six years prior.
				I was very happy to see, that the SDK I wrote back in 2017 was still in use, and I got to work on it again – which was a trip down memory lane.
				The current maintainers of the SDK used this time to pick my brain about background information on strange decisions made those years ago. So it was all in all a great experience.
				Like the last time I was there, I also helped out on the Sound+ team.
				""",
			da: """
				Fra januar 2023 til marts 2024 var jeg tilbage på SDK- og Sound+-teamet hos Jabra. Det var det samme team, jeg havde sluttet mig til og arbejdet med i et år seks år tidligere.
				Jeg blev meget glad for at se, at det SDK, jeg skrev tilbage i 2017, stadig var i brug – og jeg fik endda lov til at arbejde på det igen, hvilket var en tur ned ad mindernes vej.
				De nuværende vedligeholdere af SDK’et brugte lejligheden til at hente baggrundsviden fra mig om nogle af de mærkelige beslutninger, der blev truffet dengang. Alt i alt var det en rigtig god oplevelse.
				Ligesom sidst jeg var der, hjalp jeg også til på Sound+-teamet.
				""")
		case .panacast: return LocalizedString(
			en: """
				This contract which started right when Lunar ended in September 2022 and ended in December 2022.
				I was a lead for Panacast 50 VBS project involving four other team members. My responsibility as a team lead was to ensure that we as a team found the right solutions.
				""",
			da: """
				Denne kontrakt startede umiddelbart efter, at projektet hos Lunar sluttede i september 2022, og varede indtil december 2022.
				Jeg var teamleder for Panacast 50 VBS-projektet, som omfattede fire andre teammedlemmer. Mit ansvar som teamleder var at sikre, at vi som team fandt de rette løsninger.
				""")
		case .tinget: return LocalizedString(
			en: """
				On the side of my full time contract I was a advising iOS lead on a project for Folketinget (The Danish Parliament). My role was to attend meetings and help the iOS team make the right technical decisions and to assist the project manager with technical project lead.
				I also assisted in the communication between the project group and the client.
				""",
			da: """
				Ved siden af min fuldtidskontrakt fungerede jeg som rådgivende iOS-lead på et projekt for Folketinget. Min rolle bestod i at deltage i møder, hjælpe iOS-teamet med at træffe de rigtige tekniske beslutninger og bistå projektlederen med den tekniske projektledelse.
				Jeg hjalp også med kommunikationen mellem projektgruppen og kunden.
				""")
		case .lunar: return LocalizedString(
			en: """
				At Lunar I have been a part of their Android team.
				I have helped them in the following way:
				– I have been the architect on the Android library for their material design guide, which has resultet in an easy to use API where you rapidly can create screens using Kotlin DSL.
				– Implemented P2P borrowing for their Swedish customers (Lunar implementation of Lendify).
				""",
			da: """
				Hos Lunar var jeg en del af deres Android-team.
				Jeg har hjulpet dem på følgende måder:
				– Jeg var arkitekt på Android-biblioteket til deres Material Design-guide, hvilket resulterede i et brugervenligt API, hvor man hurtigt kan oprette skærme ved hjælp af Kotlin DSL.
				– Jeg implementerede P2P-udlån for deres svenske kunder (Lunars implementering af Lendify).
				""")
		case .leaHealth: return LocalizedString(
			en: """
				My role was to be the architect on both backend and on apps, as well as being the lead for the development team comprising of two other app developers and a backend developer. I also aided the two app developers on both iOS and Android.
				The app was more or less powered by the headless CMS Strapi, which was used to generate all content. In the frontend (on iOS and Android) native screens was made, that took this content and made it into a native app.
				""",
			da: """
				Min rolle var at være arkitekt for både backend og apps samt teamleder for udviklingsteamet, der bestod af to andre appudviklere og en backendudvikler. Jeg assisterede desuden de to appudviklere på både iOS og Android.
				Appen var i høj grad drevet af det headless CMS Strapi, som blev brugt til at generere alt indholdet. I frontenden (på iOS og Android) blev der udviklet native skærme, som tog dette indhold og præsenterede det som en native app.
				""")
		case .relief: return LocalizedString(
			en: """
				GN Group A/S had an online hearing test used by people who wanted to know if they suffered from potential hearing loss. They wanted a native implementation in iOS, which I made.
				""",
			da: """
				GN Group A/S havde en online høretest, som blev brugt af personer, der ønskede at finde ud af, om de havde et muligt høretab. De ønskede en native implementering til iOS – som jeg udviklede.
				""")
		case .spike: return LocalizedString(
			en: """
				I was part of the SCRUM team developing the app side of the SPIKE project. My main responsibilities was the Bluetooth stack, where I was responsible for implementing and maintains the radio communication with the device on iOS and Mac.
				""",
			da: """
				Jeg var en del af SCRUM-teamet, der udviklede app-delen af SPIKE-projektet. Mine primære ansvarsområder var Bluetooth-stacken, hvor jeg havde ansvaret for at implementere og vedligeholde radiokommunikationen med enheden på iOS og Mac.
				""")
		case .mitYouSee: return LocalizedString(
			en: """
				I worked on the SCRUM team developing the Mit YouSee app. I was part of the daily development and development decisions. It was a short contract, as they only needed the role to bump development fast.
				""",
			da: """
				Jeg arbejdede på SCRUM-teamet, der udviklede Mit YouSee-appen. Jeg deltog i den daglige udvikling og de løbende udviklingsbeslutninger. Det var en kortvarig kontrakt, da rollen kun var nødvendig for at få udviklingen op i tempo.
				""")
		case .bolig: return LocalizedString(
			en: """
				Danske Bank needed development assistance of one of their Bolig app, as the iOS version of the app was lagging behind the Android version. I was hired for three months to help the iOS team get up to speed with Android.
				Furthermore I had the responsibility to improve the UI/UX of the app. As an experienced UI/UX developer, I was asked to refine - especially the UX - part of the app. As an example the app uses a card view, but it was crudely implemented and was rigid in its response. I reimplemented them, so they had a more natural feel for the users.
				""",
			da: """
				Danske Bank havde brug for udviklingsassistance til en af deres Bolig-apps, da iOS-versionen haltede bagefter Android-versionen. Jeg blev hyret i tre måneder for at hjælpe iOS-teamet med at komme på niveau med Android.
				Derudover havde jeg ansvaret for at forbedre appens UI/UX. Som erfaren UI/UX-udvikler blev jeg bedt om at forfine især UX-delen af appen. For eksempel brugte appen et kortlayout, som var groft implementeret og reagerede stift. Jeg reimplementerede det, så det føltes mere naturligt for brugerne.
				""")
		case .issuu: return LocalizedString(
			en: """
				In Berlin I worked for three months at Issuu. Issuu is a Copenhagen company that provides a platform for traditionally printed magazines to public online.
				They needed a “Visual Story” tool, which was a tool for publishers, that could turn articles into meaningful stories for social media platforms like Instagram and Facebook. A design agency has made som templates for how stories should look, and I was brought in to make it an iOS tool.
				Using AVFoundation I created a tool, that took elements from an article (images, taglines, paragraphs, etc.) and inserted them into these templates, which then generated a set of videos directly available to share to social media platforms. An editor was also created, where it was possible for the publisher to fine tune the stories, before they were published (change text, images, etc.).
				The whole thing resultet in a framework, which is going open source at one point (release unknown at this moment).
				""",
			da: """
				I Berlin arbejdede jeg i tre måneder hos Issuu. Issuu er en københavnsk virksomhed, der tilbyder en platform, hvor traditionelle trykte magasiner kan udgives online.
				De havde brug for et “Visual Story”-værktøj – et værktøj til udgivere, der kunne omdanne artikler til engagerende historier til sociale medieplatforme som Instagram og Facebook. Et designbureau havde lavet nogle skabeloner for, hvordan historierne skulle se ud, og jeg blev hentet ind for at gøre det til et iOS-værktøj.
				Ved hjælp af AVFoundation lavede jeg et værktøj, der tog elementer fra en artikel (billeder, overskrifter, afsnit osv.) og indsatte dem i disse skabeloner, som derefter genererede en række videoer, der kunne deles direkte på sociale medier. Der blev også lavet en editor, hvor udgiveren kunne finjustere historierne, før de blev udgivet (ændre tekst, billeder osv.).
				Det hele mundede ud i et framework, som på et tidspunkt bliver open source (udgivelsesdato ukendt på nuværende tidspunkt).
				""")
		case .sdk: return LocalizedString(
			en: """
				From fall 2017 to fall 2018 I was assigned to redesign the APIs for GN Jabra’s public SDK for iOS and Mac. I was the architect and lead developer of the new APIs. The APIs are also the framework used internally for GN Jabra’s own apps on the App Store, most prominently the Sound+ app. Underneath the SDK communicates with the devices using Bluetooth with External Accessory and Core Bluetooth. GN’s proprietary underlaying communication protocol is abstracted away.
				The APIs are designed around the notion of capabilities. Each model of GN Jabra’s headset has diﬀerent capabilities, and the SDK is designed around this concept. Because of technical diﬃculties the SDK never came publicly available.
				I also did some contributions to the Sound+ app, where I was responsible for implementing the equalizer.
				""",
			da: """
				Fra efteråret 2017 til efteråret 2018 var jeg ansvarlig for at redesigne API’erne til GN Jabras offentlige SDK for iOS og Mac. Jeg var arkitekt og lead-udvikler på de nye API’er. API’erne udgør også det framework, som GN Jabra internt bruger til deres egne apps på App Store – især Sound+-appen. Under motorhjelmen kommunikerer SDK’et med enhederne via Bluetooth ved hjælp af External Accessory og Core Bluetooth, mens GN’s proprietære kommunikationsprotokol er abstraheret væk.
				API’erne er designet omkring konceptet “capabilities”. Hver model af GN Jabras headset har forskellige egenskaber, og SDK’et er bygget op omkring dette princip. På grund af tekniske udfordringer blev SDK’et dog aldrig offentligt tilgængeligt.
				Jeg bidrog også til Sound+-appen, hvor jeg havde ansvaret for at implementere equalizeren.
				""")
		case .auEvacuate: return LocalizedString(
			en: """
				In winter/spring of 2017 I designed and developed an application for Aarhus University, which served the purpose of being a supplement to their existing evacuation infrastructure. As any big organisation they need a thorough emergency and evacuation plan, and they felt they lacked some reach.
				They approached me with the idea of making an app, that could receive immediate notification, when an evacuation was acute. The goal was to make it available to as many employees and students as possible, as a means of communication in a situation where an evacuation was needed. I designed the app, made the backend implementation in Node.js, designed and build the app for both iOS and Android – which was both natively build in Swift and Java.
				""",
			da: """
				I vinteren/foråret 2017 designede og udviklede jeg en applikation for Aarhus Universitet, som havde til formål at fungere som et supplement til deres eksisterende evakueringsinfrastruktur. Som enhver stor organisation havde de brug for en grundig nød- og evakueringsplan, men de følte, at deres rækkevidde ikke var tilstrækkelig.
				De kontaktede mig med idéen om at udvikle en app, der kunne modtage øjeblikkelige notifikationer, når en evakuering var akut. Målet var at gøre appen tilgængelig for så mange medarbejdere og studerende som muligt, som et kommunikationsmiddel i tilfælde af en evakuering.
				Jeg designede appen, implementerede backend’en i Node.js og designede samt byggede appen til både iOS og Android – begge udviklet som native apps i henholdsvis Swift og Java.
				""")
		case .auFindV2: return LocalizedString(
			en: """
				The first AU Find app was my very first app in 2011 - written for iOS 4. With the advent of iOS 10 it was apparent, that the app was in line for a very needed update — it wouldn’t even work on iOS 10.
				The result was a complete rewrite of the old app. This time written in modern Swift 3, using Storyboards and last, but not least, Apple Watch support.
				The app is simple and strait forward, and so is the design — although the new design is much more in sync with the Aarhus University brand. Besides, it featured an Apple Watch extension, so users can find buildings directly on their watches.
				Also it was a very interesting experience rewriting an app I wrote five years ago — to see the personal advancements I’ve made in both the technological and the design aspects of my skills in five years.
				""",
			da: """
				Den første AU Find-app var min allerførste app i 2011 – skrevet til iOS 4. Da iOS 10 kom, stod det klart, at appen trængte til en tiltrængt opdatering — den virkede endda slet ikke på iOS 10.
				Resultatet blev en komplet omskrivning af den gamle app. Denne gang skrevet i moderne Swift 3, med Storyboards og – ikke mindst – understøttelse af Apple Watch.
				Appen er enkel og ligetil, og det samme er designet — dog er det nye design langt bedre i tråd med Aarhus Universitets brand. Derudover fik den en Apple Watch-udvidelse, så brugerne kan finde bygninger direkte på uret.
				Det var også en interessant oplevelse at genskrive en app, jeg havde lavet fem år tidligere — at se, hvor meget jeg personligt havde rykket mig både teknologisk og designmæssigt på de fem år.
				""")
		case .taxiFix: return LocalizedString(
			en: """
				With Taxifix I updated an existing app for one of their clients - Taxifix. Taxifix is a nationwide Norwegian taxi app, that enables you to order taxis from your current location from many cities in Norway. The client wanted the ability for it’s users to purchase an entire trip from within the app. Get a price, accept it and pay - all in advance.
				My responsibility was to implement credit card payments into their existing app. The client also wished to get the user an overview over all previous trips - and make all receipts available - implemented into the app - which I also did.
				Beside that I implemented a new lead in flow which makes it really easy for the user to get started with the app. Lastly I remade all app graphics - as vectors in Sketch - in order to make the app support all iPhone versions.
				""",
			da: """
				Hos Taxifix opdaterede jeg en eksisterende app for en af deres kunder – Taxifix. Taxifix er en landsdækkende norsk taxa-app, der gør det muligt at bestille taxa fra din aktuelle position i mange norske byer. Kunden ønskede, at brugerne kunne købe en hel tur direkte i appen: få en pris, acceptere den og betale – alt på forhånd.
				Mit ansvar var at implementere kreditkortbetaling i den eksisterende app. Kunden ønskede også, at brugerne fik et overblik over alle tidligere ture og adgang til kvitteringerne direkte i appen – hvilket jeg også implementerede.
				Derudover lavede jeg et nyt onboarding‑forløb, som gør det meget nemt at komme i gang med appen. Til sidst genskabte jeg alle app‑grafikker som vektorer i Sketch, så appen understøtter alle iPhone‑modeller.
				""")
		case .drTv: return LocalizedString(
			en: """
				When Apple announced the Apple TV 4 and the tvOS in October, it became apparent that the national danish broadcaster (DR) needed to be on board from day one. DR had previously been in dialog with Apple in regards to providing an application for the Apple TV 3, but those talks had stalled.
				When tvOS came in it had six weeks before it would be available in stores. Therefore it was decided to hire the danish app company Robocat to do the app, while I was the tech lead and technical responsible on the DR side. My job was to make sure that everything delivered was of a quality that was good enough for in-sourcing the app, in case something went wrong.
				I did some coding, but primarily my role was almost purely technical management.
				""",
			da: """
				Da Apple annoncerede Apple TV 4 og tvOS i oktober, blev det tydeligt, at Danmarks Radio (DR) skulle være med fra dag ét. DR havde tidligere været i dialog med Apple om en app til Apple TV 3, men de forhandlinger var gået i stå.
				Da tvOS kom, var der seks uger til salgsstart. Derfor besluttede man at hyre den danske app‑virksomhed Robocat til at udvikle appen, mens jeg var tech lead og teknisk ansvarlig på DR’s side. Min opgave var at sikre, at alt leveret havde en kvalitet, der gjorde det muligt at insource appen, hvis noget skulle gå galt.
				Jeg lavede lidt kode, men min rolle var primært næsten ren teknisk ledelse.
				""")
		case .drNyheder: return LocalizedString(
			en: """
				The national danish broadcaster needed an urgent rewrite of their news app. Their push notification provider - which was used for breaking news - had deprecated the API used.
				Therefore it was decided to do a rewrite - which I did in two weeks. The product design was already in place, and this was just a pure rewrite of the existing application.
				I did, though, change some things as I did slight changes as moving the menu from right to left and implemented the ability for the news overview to display marketing banners.
				""",
			da: """
				DR havde akut behov for en omskrivning af deres nyhedsapp. Deres push‑udbyder – brugt til breaking news – havde udfaset den API, appen anvendte.
				Derfor besluttede vi at lave en fuld omskrivning – som jeg gennemførte på to uger. Produktdesignet lå allerede fast, så opgaven var en ren rewrite af den eksisterende app.
				Jeg foretog dog enkelte ændringer: flyttede blandt andet menuen fra højre til venstre og implementerede mulighed for at vise marketingbannere i nyhedsoverblikket.
				""")
		case .economic: return LocalizedString(
			en: """
				The work I did for e-conomic International A/S. We were three developers, a designer and a product owner - organized in a scrum team.
				e-conomic already had an app prior to this one. It was very poor - made by a Macedonian company - and the decision was made to in-source the development - and start development from scratch. The old app was pulled from the App Store. When I joined the team they already had an almost functional app. It had some issues in regards to user experience and performance - which I, as a senior developer, helped them overcome.
				The app communicated using e-conomic’s own REST interface and with JSON as the data format.
				""",
			da: """
				Arbejdet jeg lavede for e‑conomic International A/S. Vi var tre udviklere, en designer og en product owner – organiseret som et scrum‑team.
				e‑conomic havde allerede en app før denne, men den var af meget lav kvalitet (udviklet af et makedonsk firma), og man besluttede at insource udviklingen og begynde helt forfra. Den gamle app blev fjernet fra App Store. Da jeg kom på holdet, havde de næsten en funktionsdygtig app, men med udfordringer omkring brugeroplevelse og performance – som jeg, som seniorudvikler, hjalp med at løse.
				Appen kommunikerede via e‑conomics egen REST‑grænseflade med JSON som dataformat.
				""")
		case .one: return LocalizedString(
			en: """
				The KREAFUNK ONE app is a simple, beautiful app that combines your iPhone’s music, Spotify and podcasts into a single slick app. You can combine tracks and create queues from any of the previously mentioned sources - with gapless playback. It is created for the Danish speaker company KREAFUNK to work in combination with their speakers.
				They wanted a single app that could create a seamless experience for their customers. But it is not just for users of KREAFUNK products - it can be used with any one who wants a simple audio player for all their musical needs.
				""",
			da: """
				KREAFUNK ONE er en enkel og elegant app, der samler din iPhones musik, Spotify og podcasts i én strømlinet oplevelse. Du kan kombinere numre og oprette køer fra alle de nævnte kilder – med gapless afspilning. Appen er lavet til den danske højttalerproducent KREAFUNK og fungerer i kombination med deres højttalere.
				Målet var én app, der skaber en sammenhængende oplevelse for kunderne. Den er dog ikke kun for KREAFUNK‑brugere – alle, der ønsker en simpel lydafspiller til deres behov, kan bruge den.
				""")
		case .spotable: return LocalizedString(
			en: """
				Spotable is a Spotify client for macOS, that is build using the Spotify iOS SDK. It is not an official Spotify client, but it uses the official SDK to communicate with Spotify.
				In 2013 I was contacted by Pioneer Europe, Belgium. They were planning a Spotify player for one of their car radio products and wanted a prototype. This was just before Apple introduced CarPlay and therefore it was build using their own proprietary solution.
				It was basically a rewrite of the original Spotable for iPad - but targeting iPhones (see Spotable for iPad - page 9). The app was completely redesigned and utilizes it’s own audio output and queue using Core Audio.
				When CarPlay arrived it no longer made sense to continue using a proprietary solution - even though the app was very close to complete. Even though it remained a prototype, It was featured at Pioneers exhibition at the 2013 CES.
				""",
			da: """
				Spotable er en Spotify‑klient til macOS, bygget med Spotify iOS SDK. Det er ikke en officiel Spotify‑klient, men den bruger det officielle SDK til at kommunikere med Spotify.
				I 2013 kontaktede Pioneer Europe (Belgien) mig. De planlagde en Spotify‑afspiller til et af deres bilradio‑produkter og ønskede en prototype. Det var lige før Apple introducerede CarPlay, så løsningen blev bygget på deres egen proprietære platform.
				Det var grundlæggende en omskrivning af den oprindelige Spotable til iPad – men målrettet iPhone (se Spotable til iPad – side 9). Appen blev fuldstændig redesignet og bruger sin egen audio‑output og kø via Core Audio.
				Da CarPlay kom, gav det ikke længere mening at fortsætte med en proprietær løsning – selv om appen var meget tæt på at være færdig. Den forblev en prototype, men blev vist på Pioneers udstilling på CES 2013.
				""")
		case .airfloat: return LocalizedString(
			en: """
				AirFloat is an interesting project. It is a reimplementation of the audio part of AirPlay - the technology formerly known as AirTunes. It is an implementation of the so called Apple RAOP protocol with an app build on top.
				What it does is it allows you to stream audio from any AirPlay capable device to your iOS device. While iOS devices normally only lets you send audio - AirFloat enables your device to receive audio.
				It is written completely from the ground up - implementing all aspects of the protocol including synchronization - enabling you to stream to multiple Apple or AirFloat devices at the time.
				The protocol and audio output is written in C and the app is written in - well - Objective-C.
				""",
			da: """
				AirFloat er et interessant projekt: en reimplementering af lyd‑delen af AirPlay – teknologien tidligere kendt som AirTunes. Det er en implementering af Apples RAOP‑protokol med en app ovenpå.
				Formålet er at gøre det muligt at streame lyd fra enhver AirPlay‑kompatibel enhed til din iOS‑enhed. Hvor iOS‑enheder normalt kun kan sende lyd, gør AirFloat det muligt at modtage lyd.
				Projektet er skrevet helt fra bunden og implementerer alle aspekter af protokollen, inklusive synkronisering – så man kan streame til flere Apple‑ eller AirFloat‑enheder samtidigt.
				Protokollen og lydudgangen er skrevet i C, mens appen er skrevet i – tja – Objective‑C.
				""")
		case .auFind: return LocalizedString(
			en: """
				This was my very first App Store iOS app.
				Aarhus University is build around an American campus model - situated in the middle of Denmark’s second largest city, Aarhus. It does not follow the conventional danish street and number model for finding locations - as the other Danish universities does, but instead each building on campus has a number. This makes it very difficult to find your way - especially for new students. An iPhone app was the ideal solution for this.
				Aarhus University already had a database with all staff, departments and buildings - but no location data associated with these data - plus the database was saturated out of being fed by numerous sources. The solution was to create a proxy. A proxy that every night takes a full copy of the entire database and sorts it, cleans it, relates the data in it - and adds location data. The result was very clean and fast data. So clean and fast that the official Aarhus University website - when searching staff, departments or buildings - now uses the same proxy.
				""",
			da: """
				Dette var min allerførste iOS‑app på App Store.
				Aarhus Universitet er opbygget efter en amerikansk campus‑model midt i Danmarks næststørste by, Aarhus. I stedet for de sædvanlige danske gadenavne og husnumre har hver bygning på campus et nummer. Det gør det svært at finde rundt – især for nye studerende. En iPhone‑app var den oplagte løsning.
				Aarhus Universitet havde allerede en database med alle medarbejdere, institutter og bygninger – men uden tilknyttede positionsdata, og databasen var præget af data fra mange forskellige kilder. Løsningen blev at lave en proxy, som hver nat tager en fuld kopi af databasen, sorterer og renser den, relaterer dataene – og tilføjer positionsdata. Resultatet var meget rene og hurtige data. Så rene og hurtige, at AU’s officielle website nu bruger den samme proxy ved søgning efter medarbejdere, institutter og bygninger.
				""")
		}
	}

}
