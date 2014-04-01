describe 'PhoneCat App', ->

  describe 'Phone list view', ->

    beforeEach ->
      browser.get '/'

    it 'should filter the phone list as user type into the search box', ->
      expect(element.all(`by`.css('.phones li')).count()).toBe 3
