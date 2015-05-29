paths = ["lib/**/*"]

Rotor.watch :ex_modules, paths, fn(changed, all)->
  reload_modules(changed)
end