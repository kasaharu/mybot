# Description:
#   Return Selected lunch
#
# Commands:
#   hubot 何食べる？- Return Selected lunch

candidate = [
  'ラーメン'
  'つけ麺'
  '餃子'
  'カレー'
  '肉'
  'うどん'
  'パスタ'
]
module.exports = (robot) ->
  robot.hear /何食べる？/i, (msg) ->
    msg.send msg.random candidate
