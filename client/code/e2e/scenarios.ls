"use strict"

# http://docs.angularjs.org/guide/dev_guide.e2e-testing 
let ii = it
  describe "PhoneCat App", ->
    ii "should redirect index.html to index.html#/phones", ->
      browser().navigateTo "../../app/index.html"
      expect(browser().location().url()).toBe "/phones"

    describe "Phone list view", ->
      beforeEach ->
        browser().navigateTo "../../app/index.html#/phones"

      ii "should filter the phone list as user types into the search box", ->
        expect(repeater(".phones li").count()).toBe 20
        input("query").enter "nexus"
        expect(repeater(".phones li").count()).toBe 1
        input("query").enter "motorola"
        expect(repeater(".phones li").count()).toBe 8

      ii "should be possible to control phone order via the drop down select box", ->
        input("query").enter "tablet" #let's narrow the dataset to make the test assertions shorter
        expect(repeater(".phones li", "Phone List").column("phone.name")).toEqual ["Motorola XOOM™ with Wi-Fi", "MOTOROLA XOOM™"]
        select("orderProp").option "Alphabetical"
        expect(repeater(".phones li", "Phone List").column("phone.name")).toEqual ["MOTOROLA XOOM™", "Motorola XOOM™ with Wi-Fi"]

      ii "should render phone specific links", ->
        input("query").enter "nexus"
        element(".phones li a").click()
        expect(browser().location().url()).toBe "/phones/nexus-s"


    describe "Phone detail view", ->
      beforeEach ->
        browser().navigateTo "../../app/index.html#/phones/nexus-s"

      ii "should display nexus-s page", ->
        expect(binding("phone.name")).toBe "Nexus S"

      ii "should display the first phone image as the main phone image", ->
        expect(element("img.phone").attr("src")).toBe "img/phones/nexus-s.0.jpg"

      ii "should swap main image if a thumbnail image is clicked on", ->
        element(".phone-thumbs li:nth-child(3) img").click()
        expect(element("img.phone").attr("src")).toBe "img/phones/nexus-s.2.jpg"
        element(".phone-thumbs li:nth-child(1) img").click()
        expect(element("img.phone").attr("src")).toBe "img/phones/nexus-s.0.jpg"


