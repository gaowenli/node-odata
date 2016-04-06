should = require('should')
utils = require('../lib/utils')

describe 'min', ->
  it 'should work', (done) ->
    utils.min([1, 10, 100]).should.be.equal(1)
    utils.min([100, 10, 1]).should.be.equal(1)
    utils.min([-1, 0, 1]).should.be.equal(-1)
    utils.min([1, 0, -1]).should.be.equal(-1)
    utils.min([5, 0, -5, 10, -10]).should.be.equal(-10)
    utils.min([1, undefined]).should.be.equal(1)
    utils.min([undefined, 1]).should.be.equal(1)
    utils.min([1, 'a']).should.be.equal(1)
    utils.min(['a', 1]).should.be.equal(1)
    utils.min([1, 1]).should.be.equal(1)
    done()
