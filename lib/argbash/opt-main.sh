#!/bin/bash

_help_command_description="A container image meta builder"

# ARG_POSITIONAL_SINGLE([command],[Command to run],[])
# ARG_OPTIONAL_BOOLEAN([help],[h],[Prints help])
# ARG_LEFTOVERS([command-options])
# ARGBASH_WRAP([opt-global])
# ARGBASH_SET_INDENT([    ])
# ARGBASH_GO()
# needed because of Argbash --> m4_ignore([
### START OF CODE GENERATED BY Argbash v2.3.0 one line above ###
# Argbash is a bash code generator used to get arguments parsing right.
# Argbash is FREE SOFTWARE, see https://argbash.io for more info

# THE DEFAULTS INITIALIZATION - POSITIONALS
_positionals=()
_arg_leftovers=()
# THE DEFAULTS INITIALIZATION - OPTIONALS
_arg_help=off
_arg_working_dir=
_arg_debug=off

print_help ()
{
    printf 'Usage: %s [-w|--working-dir <arg>] [--debug] <command> ... \n' "${_KUBLER_BIN}"
    printf "\t%s\n" "<command>: Command to run"
    printf "\t%s\n" "... : command-options"
    printf "\t%s\n" "-h,--help: Prints help"
    printf "\t%s\n" "-w,--working-dir: Where to look for namespaces or images, default: current directory"
}

# THE PARSING ITSELF
while test $# -gt 0
do
    _key="$1"
    case "$_key" in
        -h*|--no-help|--help)
            _arg_help="on"
            _next="${_key##-h}"
            test -n "$_next" && test "$_next" != "$_key" && shift && set -- "-h" "-${_next}" "$@"
            test "${1:0:5}" = "--no-" && _arg_help="off"
            ;;
        -w*|--working-dir|--working-dir=*)
            _val="${_key##--working-dir=}"
            _val2="${_key##-w}"
            if test "$_val" = "$_key"
            then
                test $# -lt 2 && die "Missing value for the optional argument '$_key'." 1
                _val="$2"
                shift
            elif test "$_val2" != "$_key" -a -n "$_val2"
            then
                _val="$_val2"
            fi
            _arg_working_dir="$_val"
            _args_opt_global_opt+=("${_key%%=*}" "$_arg_working_dir")
            ;;
        --no-debug|--debug)
            _arg_debug="on"
            _args_opt_global_opt+=("${_key%%=*}")
            test "${1:0:5}" = "--no-" && _arg_debug="off"
            ;;
        *)
            _positionals+=("$1")
            ;;
    esac
    shift
done

_positional_names=('_arg_command' )
_required_args_string="'command'"
[[ ${_arg_help} != on ]] && test ${#_positionals[@]} -lt 1 && _PRINT_HELP=yes die "Not enough positional arguments - we require at least 1 (namely: $_required_args_string), but got only ${#_positionals[@]}." 1
_our_args=$((${#_positionals[@]} - ${#_positional_names[@]}))
for (( ii = 0; ii < _our_args; ii++))
do
    _positional_names+=("_arg_leftovers[(($ii + 0))]")
done

for (( ii = 0; ii < ${#_positionals[@]}; ii++))
do
    eval "${_positional_names[ii]}=\${_positionals[ii]}" || die "Error during argument parsing, possibly an Argbash bug." 1
done

# OTHER STUFF GENERATED BY Argbash
_args_opt_global=("${_args_opt_global_opt[@]}" "${_args_opt_global_pos[@]}")

### END OF CODE GENERATED BY Argbash (sortof) ### ])
