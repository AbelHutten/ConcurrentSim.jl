isdefined(Base, :__precompile__) && __precompile__()

"""
Main module for SimJulia.jl – a discrete event process oriented simulation framework for Julia.
"""
module SimJulia

  using DataStructures
  using Base.Dates
  using ResumableFunctions

  import Base.run, Base.now, Base.isless, Base.show, Base.interrupt, Base.yield
  import Base.(&), Base.(|)

  export AbstractEvent, value, state, environment
  export Event, Timeout, succeed, fail, @callback, remove_callback
  export Operator, (&), (|)
  export Simulation, run, now, active_process
  export nowDatetime
  export OldProcess, @oldprocess, yield
  export Process, @process, interrupt
  export Container, Resource, Store, Put, Get, Request, Release, cancel, request, @request

  include("base.jl")
  include("events.jl")
  include("operators.jl")
  include("simulations.jl")
  include("utils/time.jl")
  include("old/processes.jl")
  include("processes.jl")
  include("resources/base.jl")
  include("resources/containers.jl")
  include("resources/stores.jl")
end
