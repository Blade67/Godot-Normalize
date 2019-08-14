# Godot-Normalize
Normalize function for Godot Engine
___

### Usage:
```py
var test = "äâàïîìöô!$"
# Change resouce path and variable name as needed
var normalizer = load("res://normalizer.gd").new()
printt(test, normalizer.normalize(test))
```

### Ouput:
```
> äâàïîìöô!$    aaaiiioo!$
```
