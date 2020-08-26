module DemoBot
  class CallbackButtons
    include Telerobot::State

    def after_enter
      current_chat
        .message("Here is an example with inline keyboard, which has callback on buttons")
        .inline_keyboard([[{ text: "Hekko", callback_data: 1 }]])
        .send_now
    end

    def unknown_command
      current_chat
        .message("Command #{@command} for #{self.class.name} is unknown. Move back to Start state")
        .send_now
      move_to Start
    end
  end
end