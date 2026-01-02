# Container Risk Matrix
| Threat           | Likelihood | Impact | Mitigation                  |
|------------------|------------|--------|-----------------------------|
| Socket Mount     | High       | Critical | Remove volume mount        |
| Privileged Mode  | Medium     | High   | Run as non-root            |
| Cgroup Escape    | Low        | Critical | Update kernel              |
