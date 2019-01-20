# frozen_string_literal: true

require 'power_assert'
require 'backtrace_cleaner'

class CodeBasics
  class Halt < StandardError; end

  class NiceBacktrace
    def initialize(root_dir)
      @backtrace_cleaner = BacktraceCleaner.new
      @backtrace_cleaner.add_filter do |line|
        line.gsub(root_dir, '').gsub(__dir__, '').gsub(/^\//, '')
      end
    end

    def call(exception)
      exception.set_backtrace(
        @backtrace_cleaner.clean(
          exception.backtrace
        )
      )

      raise exception
    end
  end

  class IO
    def catch_stdout
      old_stdout = $stdout
      $stdout = StringIO.new

      yield

      result = $stdout.string

      result
    ensure
      $stdout = old_stdout
    end

    def execute_task(index_file_path)
      catch_stdout do
        load(index_file_path)
      end.strip
    end
  end

  class << self
    def execute!(dir, &block)
      runner = new(dir)
      runner.execute_with_stdout(&block) || exit(1)
    rescue Halt
      exit(1)
    rescue StandardError => e
      NiceBacktrace.new(dir).call(e)
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
