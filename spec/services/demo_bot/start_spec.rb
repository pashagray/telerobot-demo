require 'rails_helper'

RSpec.describe DemoBot::Start do
  it { is_expected.to move_to(DemoBot::CallbackButtons).on_command("BAD COMMAND") }
end
