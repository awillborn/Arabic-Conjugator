require_relative '../past_tense'
require_relative '../present_tense'


class TenseFactory
  MAPPING = {
    "past" => Past,
    "present" => Present
  }

  def initialize(verb)
    @verb = verb
    @tense = verb.opts[:tense]
  end

  def create_tense
    MAPPING[@tense].new(@verb)
  end

end
