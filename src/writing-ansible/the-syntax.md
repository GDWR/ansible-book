# The Syntax

Ansible is defined in yaml files which has become a staple in the programming world seeing use in [CI/CD pipeline definitions](https://docs.github.com/en/actions/writing-workflows/quickstart), [docker compose](https://docs.docker.com/compose/gettingstarted/#step-2-define-services-in-a-compose-file) and [kubernetes](https://kubernetes.io/docs/concepts/workloads/management/) to name a few.

Ignoring whitespace complaints and the norway problem[^1] is a pretty nice experience although I would strongly suggest some form of syntax highlighting, and linting for a shared codebase.

[^1]: The [norway problem](https://www.bram.us/2022/01/11/yaml-the-norway-problem/) is that `yes` and `no` are actually boolean values... Which is insane. Please never use `on`, `off`, `yes` or `no` as booleans in your yaml files. Use `true` and `false` instead.
