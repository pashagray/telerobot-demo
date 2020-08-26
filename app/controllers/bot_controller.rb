class BotController < ApplicationController
  def v1
    Telerobot.run(
      bot_params.to_h,
      initial_state: DemoBot::Start,
      session_class: TelerobotSession
    )
    head :ok
  end

  private

  def bot_params
    params.permit!
  end
end
