module Global
  def self.run
    @run ||= 0
  end

  def self.increment_run
    run
    @run += 1
  end
end
