defimpl Appsignal.Metadata, for: Plug.Conn do
  def metadata(
        %Plug.Conn{
          host: host,
          method: method,
          request_path: request_path,
          port: port,
          status: status
        } = conn
      ) do
    request_id =
      conn
      |> Plug.Conn.get_resp_header("x-request-id")
      |> List.first()

    %{
      "host" => host,
      "method" => method,
      "request_path" => request_path,
      "port" => port,
      "request_id" => request_id,
      "status" => status
    }
  end
end
