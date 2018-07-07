defmodule HelloWorld.Scheduler do
  def schedule_file(schedule, file) do
    Quantum.add_job(schedule, fn ->
      IO.puts(HelloWorld.Filereader.get_strings_to_tweet(
        file))
    end)
  end
end
