@echo off

cd /d %~dp0

cd ../..

set "exe_suffix=dist/py_project_dev_tools.exe"
set "py_project_dev_tools_exe=%CD%/%exe_suffix%"

set "toml=%CD%/pyproject.toml"

"%py_project_dev_tools_exe%" test_exe_release "%toml%"

exit /b 0