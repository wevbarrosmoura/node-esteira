#!/bin/bash
npm start
exec promtail -config.file=/etc/promtail/promtail-config.yaml &