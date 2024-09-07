#compdef proto

autoload -U is-at-least

_proto() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_proto_commands" \
"*::: :->proto" \
&& ret=0
    case $state in
    (proto)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:proto-command-$line[1]:"
        case $line[1] in
            (alias)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--global[Add to the global ~/.proto/.prototools instead of local ./.prototools]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
':alias -- Alias name:' \
':spec -- Version or alias to associate with:' \
&& ret=0
;;
(bin)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--bin[Display symlinked binary path when available]' \
'--shim[Display shim path when available]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
'::spec -- Version or alias of tool:' \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" \
'--days=[Clean tools and plugins older than the specified number of days]:DAYS: ' \
'--purge=[Purge and delete the installed tool by ID]:TOOL: ' \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--purge-plugins[Purge and delete all installed plugins]' \
'--yes[Avoid and force confirm prompts]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(completions)
_arguments "${_arguments_options[@]}" \
'--shell=[Shell to generate for]:SHELL: ' \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(debug)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_proto__debug_commands" \
"*::: :->debug" \
&& ret=0

    case $state in
    (debug)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:proto-debug-command-$line[1]:"
        case $line[1] in
            (config)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--json[Print the list in JSON format]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(env)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
        esac
    ;;
esac
;;
(install)
_arguments "${_arguments_options[@]}" \
'--pin=[Pin the resolved version to .prototools]' \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--canary[Install a canary (nightly, etc) version]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
'::spec -- Version or alias of tool:' \
'*::passthrough -- Unique arguments to pass to each tool:' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--aliases[Include local aliases in the output]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
&& ret=0
;;
(list-remote)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--aliases[Include remote aliases in the output]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
&& ret=0
;;
(migrate)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
':operation -- Operation to migrate:' \
&& ret=0
;;
(outdated)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--include-global[Include versions from global ~/.proto/.prototools]' \
'--json[Print the outdated tools in JSON format]' \
'--latest[When updating versions, use the latest version instead of newest]' \
'--only-local[Only check versions in local ./.prototools]' \
'--update[Update and write the versions to their respective configuration]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(pin)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--global[Pin to the global ~/.proto/.prototools instead of local ./.prototools]' \
'--resolve[Resolve the version before pinning]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
':spec -- Version or alias of tool:' \
&& ret=0
;;
(plugin)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_proto__plugin_commands" \
"*::: :->plugin" \
&& ret=0

    case $state in
    (plugin)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:proto-plugin-command-$line[1]:"
        case $line[1] in
            (add)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--global[Add to the global ~/.proto/.prototools instead of local ./.prototools]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of plugin:' \
':plugin -- Locator string to find and load the plugin:' \
&& ret=0
;;
(info)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--json[Print the info in JSON format]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of plugin:' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--aliases[Include resolved aliases in the output]' \
'--json[Print the list in JSON format]' \
'--versions[Include installed versions in the output]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
'*::ids -- ID of plugins to list:' \
&& ret=0
;;
(remove)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--global[Remove from the global ~/.proto/.prototools instead of local ./.prototools]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of plugin:' \
&& ret=0
;;
(search)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--json[Print the plugins in JSON format]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
':query -- Query to search available plugins:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(regen)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--bin[Also recreate binary symlinks]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(run)
_arguments "${_arguments_options[@]}" \
'--alt=[Name of an alternate (secondary) binary to run]:ALT: ' \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
'::spec -- Version or alias of tool:' \
'*::passthrough -- Arguments to pass through to the underlying command:' \
&& ret=0
;;
(setup)
_arguments "${_arguments_options[@]}" \
'--shell=[Shell to setup for]:SHELL: ' \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--no-modify-profile[Don'\''t update a shell profile]' \
'--no-modify-path[Don'\''t update the system path]' \
'-y[Avoid interactive prompts and use defaults]' \
'--yes[Avoid interactive prompts and use defaults]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(status)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--include-global[Include versions from global ~/.proto/.prototools]' \
'--json[Print the active tools in JSON format]' \
'--only-local[Only check versions in local ./.prototools]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(unalias)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--global[Remove from the global ~/.proto/.prototools instead of local ./.prototools]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
':alias -- Alias name:' \
&& ret=0
;;
(uninstall)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--yes[Avoid and force confirm prompts]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
'::spec -- Version or alias of tool:' \
&& ret=0
;;
(unpin)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--global[Unpin from the global ~/.proto/.prototools instead of local ./.prototools]' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
':id -- ID of tool:' \
&& ret=0
;;
(upgrade)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
(use)
_arguments "${_arguments_options[@]}" \
'--log=[Lowest log level to output]:LOG:(off error warn info debug trace)' \
'--dump[Dump a trace profile to the working directory]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
&& ret=0
;;
        esac
    ;;
esac
}

(( $+functions[_proto_commands] )) ||
_proto_commands() {
    local commands; commands=(
'alias:Add an alias to a tool.' \
'bin:Display the absolute path to a tools executable.' \
'clean:Clean the ~/.proto directory by removing stale tools, plugins, and files.' \
'completions:Generate command completions for your current shell.' \
'debug:Debug the current proto environment.' \
'install:Download and install a tool.' \
'list:List installed versions for a tool.' \
'list-remote:List available versions for a tool.' \
'migrate:Migrate breaking changes for the proto installation.' \
'outdated:Check if configured tool versions are out of date.' \
'pin:Pin a global or local version of a tool.' \
'plugin:Operations for managing tool plugins.' \
'regen:Regenerate shims and optionally relink bins.' \
'run:Run a tool after detecting a version from the environment.' \
'setup:Setup proto for your current shell by injecting exports and updating PATH.' \
'status:List all configured tools and their current installation status.' \
'unalias:Remove an alias from a tool.' \
'uninstall:Uninstall a tool.' \
'unpin:Unpin a global or local version of a tool.' \
'upgrade:Upgrade proto to the latest version.' \
'use:Download and install all tools from loaded .prototools.' \
    )
    _describe -t commands 'proto commands' commands "$@"
}
(( $+functions[_proto__plugin__add_commands] )) ||
_proto__plugin__add_commands() {
    local commands; commands=()
    _describe -t commands 'proto plugin add commands' commands "$@"
}
(( $+functions[_proto__alias_commands] )) ||
_proto__alias_commands() {
    local commands; commands=()
    _describe -t commands 'proto alias commands' commands "$@"
}
(( $+functions[_proto__bin_commands] )) ||
_proto__bin_commands() {
    local commands; commands=()
    _describe -t commands 'proto bin commands' commands "$@"
}
(( $+functions[_proto__clean_commands] )) ||
_proto__clean_commands() {
    local commands; commands=()
    _describe -t commands 'proto clean commands' commands "$@"
}
(( $+functions[_proto__completions_commands] )) ||
_proto__completions_commands() {
    local commands; commands=()
    _describe -t commands 'proto completions commands' commands "$@"
}
(( $+functions[_proto__debug__config_commands] )) ||
_proto__debug__config_commands() {
    local commands; commands=()
    _describe -t commands 'proto debug config commands' commands "$@"
}
(( $+functions[_proto__debug_commands] )) ||
_proto__debug_commands() {
    local commands; commands=(
'config:Debug all loaded .prototools config'\''s for the current directory.' \
'env:Debug the current proto environment and store.' \
    )
    _describe -t commands 'proto debug commands' commands "$@"
}
(( $+functions[_proto__debug__env_commands] )) ||
_proto__debug__env_commands() {
    local commands; commands=()
    _describe -t commands 'proto debug env commands' commands "$@"
}
(( $+functions[_proto__plugin__info_commands] )) ||
_proto__plugin__info_commands() {
    local commands; commands=()
    _describe -t commands 'proto plugin info commands' commands "$@"
}
(( $+functions[_proto__install_commands] )) ||
_proto__install_commands() {
    local commands; commands=()
    _describe -t commands 'proto install commands' commands "$@"
}
(( $+functions[_proto__list_commands] )) ||
_proto__list_commands() {
    local commands; commands=()
    _describe -t commands 'proto list commands' commands "$@"
}
(( $+functions[_proto__plugin__list_commands] )) ||
_proto__plugin__list_commands() {
    local commands; commands=()
    _describe -t commands 'proto plugin list commands' commands "$@"
}
(( $+functions[_proto__list-remote_commands] )) ||
_proto__list-remote_commands() {
    local commands; commands=()
    _describe -t commands 'proto list-remote commands' commands "$@"
}
(( $+functions[_proto__migrate_commands] )) ||
_proto__migrate_commands() {
    local commands; commands=()
    _describe -t commands 'proto migrate commands' commands "$@"
}
(( $+functions[_proto__outdated_commands] )) ||
_proto__outdated_commands() {
    local commands; commands=()
    _describe -t commands 'proto outdated commands' commands "$@"
}
(( $+functions[_proto__pin_commands] )) ||
_proto__pin_commands() {
    local commands; commands=()
    _describe -t commands 'proto pin commands' commands "$@"
}
(( $+functions[_proto__plugin_commands] )) ||
_proto__plugin_commands() {
    local commands; commands=(
'add:Add a plugin to manage a tool.' \
'info:Display information about an installed plugin and its inventory.' \
'list:List all configured and built-in plugins, and optionally include inventory.' \
'remove:Remove a plugin and unmanage a tool.' \
'search:Search for available plugins provided by the community.' \
    )
    _describe -t commands 'proto plugin commands' commands "$@"
}
(( $+functions[_proto__regen_commands] )) ||
_proto__regen_commands() {
    local commands; commands=()
    _describe -t commands 'proto regen commands' commands "$@"
}
(( $+functions[_proto__plugin__remove_commands] )) ||
_proto__plugin__remove_commands() {
    local commands; commands=()
    _describe -t commands 'proto plugin remove commands' commands "$@"
}
(( $+functions[_proto__run_commands] )) ||
_proto__run_commands() {
    local commands; commands=()
    _describe -t commands 'proto run commands' commands "$@"
}
(( $+functions[_proto__plugin__search_commands] )) ||
_proto__plugin__search_commands() {
    local commands; commands=()
    _describe -t commands 'proto plugin search commands' commands "$@"
}
(( $+functions[_proto__setup_commands] )) ||
_proto__setup_commands() {
    local commands; commands=()
    _describe -t commands 'proto setup commands' commands "$@"
}
(( $+functions[_proto__status_commands] )) ||
_proto__status_commands() {
    local commands; commands=()
    _describe -t commands 'proto status commands' commands "$@"
}
(( $+functions[_proto__unalias_commands] )) ||
_proto__unalias_commands() {
    local commands; commands=()
    _describe -t commands 'proto unalias commands' commands "$@"
}
(( $+functions[_proto__uninstall_commands] )) ||
_proto__uninstall_commands() {
    local commands; commands=()
    _describe -t commands 'proto uninstall commands' commands "$@"
}
(( $+functions[_proto__unpin_commands] )) ||
_proto__unpin_commands() {
    local commands; commands=()
    _describe -t commands 'proto unpin commands' commands "$@"
}
(( $+functions[_proto__upgrade_commands] )) ||
_proto__upgrade_commands() {
    local commands; commands=()
    _describe -t commands 'proto upgrade commands' commands "$@"
}
(( $+functions[_proto__use_commands] )) ||
_proto__use_commands() {
    local commands; commands=()
    _describe -t commands 'proto use commands' commands "$@"
}

if [ "$funcstack[1]" = "_proto" ]; then
    _proto "$@"
else
    compdef _proto proto
fi
