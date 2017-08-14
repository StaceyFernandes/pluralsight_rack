
module ApplicationHelpers
  def missing(request, response)
    response.status = 404
    response.write("Nothing here")
  end

  def error(response, message, status = 400)
    response.status = status
    response.write("ERROR: #{message}")
  end

  def respond_with_object(response, object)
    response.write(JSON.generate(object))
  end
end
