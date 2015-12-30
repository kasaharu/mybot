# Description:
#   Reserve TST environment
#
# Commands:
#   tst lock   -  Lock test env and return test env status
#   tst unlock -  Unlock test env and return test env status

status   = 0
username = ''

module.exports = (robot) ->
  robot.hear /tst lock/i, (msg) ->
    if status == 0
      status = 1
      username = msg.message.user.name
      msg.send "Lock"
    else
      msg.send "Already locked by @#{username}"

  robot.hear /tst unlock/i, (msg) ->
    if status == 1
      status   = 0
      username = ''
      msg.send "Unlocked"
    else
      msg.send "already free"

  robot.hear /tst status/i, (msg) ->
    if status == 1
      msg.send "tst env is locked by @#{username}"
    else
      msg.send "tst env free"
