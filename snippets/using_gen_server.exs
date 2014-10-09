{:ok, pid} = GenServer.start(SholayServer, [])

GenServer.call pid, :basanti
