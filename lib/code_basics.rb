# frozen_string_literal: true

require 'power_assert'

class CodeBasics
  class Halt < StandardError; end

  class IO
    def catch_stdout
      old_stdout = $stdout
      $stdout = StringIO.new

      yield

      result = $stdout.string
      $stdout = old_stdout

      result
    end

    def execute_task(index_file_path)
      catch_stdout do
        load(index_file_path)
      end.strip
    end
  end

  class << self
    def execute!(dir, &block)
      new(dir).execute_with_stdout(&block) || exit(1)
    rescue Halt
      exit(1)
    end
  end

  attr_reader :dir, :io

  def initialize(dir)
    @dir = dir
    @io = IO.new
  end

  def execute_with_stdout(&block)
    stdout = io.execute_task(index_file_path)
    print stdout + "\n\n"
    instance_exec(stdout, &block)
  end

  def assert(&block)
    PowerAssert.start(block, assertion_method: __callee__) do |pa|
      val = pa.yield

      val || (raise Halt)
    rescue StandardError => e
      puts pa.message
      raise e
    end
  end

  private

  def index_file_path
    File.join(dir, 'index.rb')
  end
end
