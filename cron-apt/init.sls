{% if 'Debian' in salt['grains.get']('os_family') %}
cron-apt:
  pkg.installed

/etc/cron-apt/config:
  file.managed:
    - source: salt://cron-apt/files/config
    - user: root
    - group: root
    - mode: 644
    - template: jinja

{% endif %}
