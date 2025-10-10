{% if cookiecutter.local_operating_system == "MacOS" %}
#!/bin/zsh
{% endif %}
{% if cookiecutter.local_operating_system == "Linux" %}
#!/bin/bash
{% endif %}

mpiexec -n 5 "$(dirname "$0")/../../cmake-build-debug-local/{{ cookiecutter.project_name }}"
