# Autogenerated wrapper script for AccerionSensorAPI_jll for aarch64-linux-musl-cxx11
export libaccerionsensorapi

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libaccerionsensorapi`
const libaccerionsensorapi_splitpath = ["lib", "AccerionSensorAPI", "libAccerionSensorAPI.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libaccerionsensorapi_path = ""

# libaccerionsensorapi-specific global declaration
# This will be filled out by __init__()
libaccerionsensorapi_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libaccerionsensorapi = "libAccerionSensorAPI.so"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"AccerionSensorAPI")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libaccerionsensorapi_path = normpath(joinpath(artifact_dir, libaccerionsensorapi_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libaccerionsensorapi_handle = dlopen(libaccerionsensorapi_path)
    push!(LIBPATH_list, dirname(libaccerionsensorapi_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

