define [], ->
  Car = (model, year, miles) ->
    @model = model
    @year = year
    @miles = miles
    return

  Car.prototype.toString = ->
    @model + " has done " + @miles + " miles"

  return Car