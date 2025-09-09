ResumeForMacOS
----

This is my resume as a macOS application.

# How it works

You basically just donwload the sources, run them in Xcode and then you see the CV. I will make a signed release at some point just for the fun of it – but that is for a later day.

> The resume can be exported to PDF from the app.

# Why?

Just why did I do it. It seems like a pretty wierd idea.

Well, it came down to a practical problem I had with Figma. Figma's PDF exporter is fundamentally broken. Figma doesn't export text when exporting to PDF – instead it converts the texts to vector outlines and then it exports it. That means the file size becomes enourmous, which is not ideal when most places that accept your resume only accepts a couple of megabytes.

So I was wondering how to fix it. I had spend the time creating it all in Figma. I though about redoing it in Sketch because I know from experience that it generates proper PDFs. But I also didn't want to pay a subscription just to export a PDF.

I tried all kinds of PDF compression tools, but because the text is not fundamentally there when exported from Figma – there is not much any compressors could do.

So I decided to take the opportunity to play with the `ImageRenderer` in SwiftUI – which basically enables you to save SwiftUI to images and PDF. I did a quick text that it actually do export the PDF with text instead of vector outlines – and it did indeed export text. To be honest I would not have expected anything other from Apple. Apple has a lot of pride in it's history with PDF.

So it worked - after implementing and tweeking I went from an 8mb PDF from Figma to a 8kb PDF from SwiftUI. 🥳🎉

> – and I have a macOS app of my resume! 🕺

# Screenshot

![Screenshot](https://github.com/trenskow/ResumeForMacOS/raw/main/screenshot.png?raw=true)

# License

© Copyright 2025 by Kristian Trenskow.

