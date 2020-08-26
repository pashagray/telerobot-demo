module DemoBot
  class Start
    include Telerobot::State

    command_mapping({
      "/start" => :start,
      "Buttons with callback" => :callback_buttons
    })

    def start
      current_chat
        .message("Welcome to Telerobot demo. This bot is powered by https://github.com/pashagray/telerobot")
        .keyboard([["Buttons with callback"]], onetime: true)
        .send_now
    end

    def callback_buttons
      move_to CallbackButtons
    end
  end
end