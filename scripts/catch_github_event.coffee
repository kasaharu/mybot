# Description:
#   GitHub の Pull Request が作成されたことを通知する
#

module.exports = (robot) ->
  robot.router.get "/github", (req, res) ->
    res.end robot.version

  robot.router.post "/github", (req, res) ->
    pullRequestBody = req.body
    action    = pullRequestBody.action
    pr        = pullRequestBody.pull_request
    chat_room = process.env.HUBOT_CHATWORK_ROOMS
    res.end "Pull Request #{action} #{pr.title} #{pr.html_url}"
    robot.messageRoom chat_room, "Pull Request #{action} #{pr.title} #{pr.html_url}"
