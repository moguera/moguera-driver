module Moguera::Driver::Client
  def execute(method, param_url, parameters={})
    begin
      rest_client(method, param_url, parameters)
    rescue => e
      railse ex.message
    end
  end

  private

  def rest_client(method, url, parameters={})
    headers = { Authorization: 'get_auth_header' }

    case method
      when :get
        RestClient.get(url, headers)
      when :post
        payload = JSON.generate(parameters) if parameters.empty?
        headers = headers.merge(content_type: :json)
        RestClient.post(url, payload, headers)
      when :put
        payload = JSON.generate(parameters) if parameters.empty?
        headers = headers.merge(content_type: :json)
        RestClient.put(url, payload, headers)
      when :delete
        headers = headers.merge(content_type: :json)
        RestClient.delete(url, headers)
    end
  end
end
