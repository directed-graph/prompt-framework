
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

	export PROMPT_FRAMEWORK_MODULES=(
		host_name
		elliptical_path
		shell_level
		exit_code
	)

	export PROMPT_COMMAND=prompt_framework

In this example, the prompt will come out as follows:

	my-host-name: .../prompt-framework [3] $


## Environment Variables

Prompt Framework sets the following environment variables for your modules:

- `EXIT_CODE`: the exit code of the previous command

