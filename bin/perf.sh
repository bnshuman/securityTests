#! /bin/bash
export SSLYZE_PATH=/usr/bin/sslyze
/opt/gauntlt/bin/gauntlt ../tests/ -f progress -t @perf
