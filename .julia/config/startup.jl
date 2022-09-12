push!(LOAD_PATH,".")
push!(LOAD_PATH,"~/OneDrive/PhD/Packages")
push!(LOAD_PATH,"~/OneDrive/PhD/Scripts")
using Revise
ENV["MPLBACKEND"]="tkagg"
ENV["PLOTS_DEFAULT_BACKEND"] = "GR"
ENV["JULIA_AMDGPU_DISABLE_ARTIFACTS"] = 1
ENV["JULIA_NO_VERIFY_HOSTS"]="github.com"
ENV["JULIA_DISABLE_AMDGPU_ARTIFACTS"] = 1
ENV["JULIA_PKG_DEVDIR"]= ENV["HOME"]*"/ownCloud/OneDrive/Packages/"
ENV["PYTHON"]= "/usr/bin/python3"
using Plots, JLD2, InteractiveUtils, RemoteREPL, Pluto, DPlots
InteractiveUtils.define_editor(
    r"\bemacsclient\b.*\s(-nw|--no-window-system)\b", wait=true) do cmd, path, line
    `$cmd +$line $path`
end
using OhMyREPL
OhMyREPL.enable_autocomplete_brackets(false)
OhMyREPL.enable_pass!("RainbowBrackets", true)
OhMyREPL.enable_highlight_markdown(true)
OhMyREPL.enable_pass!("RainbowBrackets", true)


hpc() = connect_repl("hpc")
