#!/bin/bash
# Quick toggle for study mode

case "$1" in
  on)
    ./ban_social.sh
    echo "📚 Focus mode ON. All distractions blocked."
    ;;
  off)
    ./unblock_social.sh
    echo "😌 Focus mode OFF. You’re free again."
    ;;
  *)
    echo "Usage: ./focus.sh [on|off]"
    ;;
esac
