# Containers Cheatsheet (2026 Edition)

## Commands
| Command          | Purpose                            |
|------------------|------------------------------------|
| `docker ps`      | List running containers            |
| `docker exec -it ID sh` | Enter container         |
| `docker inspect ID` | Details (mounts)             |
| `docker build -f Dockerfile .` | Build image      |

## Escape Vectors
- Socket: `/var/run/docker.sock` → `docker run -v /:/host`
- Cgroup: Release agent exploit
- Seccomp: Weak profiles → Custom binaries

## Hardening (CIS)
- No privileged: `--privileged=false`
- Seccomp: `--security-opt seccomp=profile.json`
- AppArmor: `--security-opt apparmor=profile`
- Rootless: Use Podman/Docker rootless mode

## K8s Analogy
- HostPath mounts → Equivalent to socket vuln
- Use RBAC + PodSecurityPolicies
