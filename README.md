
Prompt Framework is a small framework that modularizes your command prompt, and
allows you to customize it by arranging different modules together.

One use case is to allow simple reuse of different components in different
environments. For example, there might be some items you wish to display on your
prompt at work. However, these items may be proprietary and not available
publicly. In this situation, a modular system will be useful.

The Prompt Framework has been tested only on Bash.


## Concept

The main building block for Prompt Framework is Bash functions. The basic idea
is to have several functions; each function will be a "module" in the
description provided above. To create your prompt, save the list of functions
into an environment variable. Then, set your `PROMPT_COMMAND` to a function we
provide, which will compose those functions together to create your prompt.


## Usage

The general usage is to do the following in your `bashrc`:

1. source `prompt_framework.bash` and all the modules you want
2. set and export `PROMPT_FRAMEWORK_MODULES` to a list of the modules
3. set and export `PROMPT_COMMAND=prompt_framework`

An example:

    source prompt_framework.bash

    for module in modules/*.bash; do
        source $module
    done

    # from standard git installation
    source /etc/bash_completion.d/git-prompt

    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWCOLORHINTS=true

    export PROMPT_FRAMEWORK_MODULES=(
        host_name
        elliptical_path
        shell_level
        __git_ps1
        exit_code
    )

    export PROMPT_COMMAND=prompt_framework

In this example, the prompt will come out as follows:

    ...travis.chen/projects/prompt-framework [3] (master *%) $


## Environment Variables

Prompt Framework sets the following environment variables for your modules:

- `PF_EXIT_CODE`: the exit code of the previous command

Parameters can be sent to each module through environment variables. The naming
convention for the environment variables should be the following:

    PF_<module_name>[__<parameter>]

