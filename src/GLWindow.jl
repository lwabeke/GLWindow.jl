VERSION >= v"0.4.0-dev+6521" && __precompile__(true)
module GLWindow

using ModernGL
using GLAbstraction
using GLFW
using Reactive
using GeometryTypes
using ColorTypes
using FixedPointNumbers
using FixedSizeArrays
using Compat

import GLFW.Window
import GLFW.Monitor
import GLAbstraction.render

include("types.jl")
include("core.jl")
include("events.jl")
include("callbacks.jl")
include("render.jl")
include("screen.jl")

export createwindow
export swapbuffers
export pollevents
export Screen
export UnicodeInput
export KeyPressed
export MouseClicked
export MouseMoved
export EnteredWindow
export WindowResized
export MouseDragged
export Scrolled
export Window
export leftclickdown
export Screen
export primarymonitorresolution

function __init__()
    @async while true
        GLFW.PollEvents()
        yield()
    end
end


end
