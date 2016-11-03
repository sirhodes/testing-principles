assert = require 'assert'
Promise = require 'bluebird'

# we'll need to open the database
db = require '../connections/mongo'

brandMethods = require './brand-methods'

# BDD - feature testing
describe 'deleting a Brand', ->

  describe 'testing the API without creating a Brand first', ->

    # TDD - testing the API
    it 'should have a function to delete a Brand', ->
      assert.equal typeof brandMethods.deleteBrand, 'function'

    it 'should take one argument', ->
      assert.equal brandMethods.deleteBrand.length, 1

    it 'should return a Promise', ->
      assert.equal brandMethods.deleteBrand() instanceof Promise, true

    it 'should throw if no Brand ID is passed in', (done) ->
      done()

  describe 'testing the API after setting up a Brand', ->
    before (done) ->
      # setupMongo done
      done()