module ServerHelper
  def uptime(time)
    diff = Time.now.to_i - time.to_i
    diff
  end

  def server_name(name)
    if name.empty?
      "n/a"
    else
      name
    end
  end
end
