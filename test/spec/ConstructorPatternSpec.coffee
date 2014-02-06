define ['js/ConstructorPattern'], (Car)->
  describe 'Carは', ->
    beforeEach ->
      @car = new Car( 'first', 'second', 'third' )

    describe 'newの引数を', ->
      it 'プロパティに持つ', ->
        expect(@car.model).toEqual('first')
        expect(@car.year).toEqual('second')
        expect(@car.miles).toEqual('third')

    it 'Car.prototypeの関数を呼び出せる', ->
      expect(@car.toString()).toEqual('first has done third miles')