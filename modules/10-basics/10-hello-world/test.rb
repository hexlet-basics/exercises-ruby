def catch_stdout
  old_stdout = $stdout
  $stdout = StringIO.new

  yield

  result = $stdout.string

  $stdout = old_stdout

  result.strip
end

index_file_path = File.join(__dir__, 'index.rb')

actual = catch_stdout do
  load(index_file_path)
end

raise unless actual == 'Hello, World!'
