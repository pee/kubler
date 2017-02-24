#!/bin/bash

_help_command_description="Create a new working dir, namespace, image or builder"

# ARG_POSITIONAL_SINGLE([template_type],[One of namespace, image or builder])
# ARG_POSITIONAL_SINGLE([name],[Name to use i.e. myns or myns/myimage])
# ARG_HELP([])
# ARGBASH_WRAP([opt-global])
# ARGBASH_SET_INDENT([    ])
# ARGBASH_GO()
# needed because of Argbash --> m4_ignore([
### START OF CODE GENERATED BY Argbash v2.3.0 one line above ###
# Argbash is a bash code generator used to get arguments parsing right.
# Argbash is FREE SOFTWARE, see https://argbash.io for more info

# THE DEFAULTS INITIALIZATION - POSITIONALS
_positionals=()
# THE DEFAULTS INITIALIZATION - OPTIONALS
_arg_working_dir=
_arg_debug=off

print_help ()
{
    printf 'Usage: %s new [-w|--working-dir <arg>] [--debug] <template_type> <name>\n' "${_KUBLER_BIN}"
    printf "\t%s\n" "<template_type>: One of namespace, image or builder"
    printf "\t%s\n" "<name>: name i.e. myns or myns/myimage"
    printf "\t%s\n" "-h,--help: Prints help"
    printf "\t%s\n" "-w,--working-dir: Where to look for namespaces or images, default: current directory"
}

# THE PARSING ITSELF
while test $# -gt 0
do
    _key="$1"
    case "$_key" in
        -h*|--help)
            print_help
            exit 0
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

_positional_names=('_arg_template_type' '_arg_name' )
_required_args_string="'template_type' and 'name'"
[[ ${_arg_help} != on ]] && test ${#_positionals[@]} -lt 2 && _PRINT_HELP=yes die "Not enough positional arguments - we require exactly 2 (namely: $_required_args_string), but got only ${#_positionals[@]}." 1
[[ ${_arg_help} != on ]] && test ${#_positionals[@]} -gt 2 && _PRINT_HELP=yes die "There were spurious positional arguments --- we expect exactly 2 (namely: $_required_args_string), but got ${#_positionals[@]} (the last one was: '${_positionals[*]: -1}')." 1
for (( ii = 0; ii < ${#_positionals[@]}; ii++))
do
    eval "${_positional_names[ii]}=\${_positionals[ii]}" || die "Error during argument parsing, possibly an Argbash bug." 1
done

# OTHER STUFF GENERATED BY Argbash
_args_opt_global=("${_args_opt_global_opt[@]}" "${_args_opt_global_pos[@]}")

### END OF CODE GENERATED BY Argbash (sortof) ### ])
