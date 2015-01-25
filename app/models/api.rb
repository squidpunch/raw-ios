module API
  def self.setup
    client
    true
  end

  def self.url
    @url ||= NSURL.URLWithString("http://race-around-waltham.herokuapp.com/")
  end

  def self.client
    @client ||= build_client
  end

  def self.save_participant(params)
    SVProgressHUD.show
    client.post("/api/v1/participants", { participant: params }) do |result|

      if result.success?
        SVProgressHUD.showSuccessWithStatus("Thanks for signing up!")
      else
        SVProgressHUD.showErrorWithStatus(result.object["errors"].join("\n"))
      end
    end
  end

  private

  def self.build_client
    client = AFMotion::Client.build(url.absoluteString) do
      header "Accept", "application/json"
      response_serializer :json
    end

    client.reachabilityManager.setReachabilityStatusChangeBlock -> status do
      case status
      when AFNetworkReachabilityStatusReachableViaWWAN, AFNetworkReachabilityStatusReachableViaWiFi
        client.operationQueue.suspended = false
      when AFNetworkReachabilityStatusNotReachable
        client.operationQueue.suspended = true
      end
    end

    client.reachabilityManager.startMonitoring

    client
  end
end
