version: 0.0
os: linux
files:
- source: /
    destination: /var/app
file_exists_behavior: OVERWRITE
hooks:
BeforeInstall:
    - location: scripts/pre_start.sh
    timeout: 300
    runas: root

