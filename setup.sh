#!/usr/bin/env bash

fusesoc library add and cores/and --sync-type=local
fusesoc library add or cores/or --sync-type=local
fusesoc library add and_or cores/or --sync-type=local
