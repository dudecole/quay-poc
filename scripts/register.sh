#!/bin/bash
subscription-manager remove --all
subscription-manager unregister
subscription-manager clean
subscription-manager register --username $1 --password $2
subscription-manager refresh
subscription-manager attach --auto