require 'bunny'

class RabbitMQ
  def initialize(quename, uri = 'amqp://localhost')
    @con = Bunny.new(uri)
    @con.start
    @ch = @con.create_channel
    @que = @ch.queue(quename, durable: true)
  end

  def send(message)
    @ch.default_exchange.publish(message, routing_key: @que.name)
  end

  def start_receiving
    @que.subscribe do |_delivery_info, _metadata, payload|
      yield payload
    end
  end

  def close
    @con.close
  end
end
