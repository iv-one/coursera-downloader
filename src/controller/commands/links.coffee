trim = (str) ->
  str.replace /^\s+/g, ''

getVideo = (link) ->
  $(link).attr('data-modal-iframe')

getVideoLink = (link) ->
  result = ''
  $.ajax
    url: link,
    success: (data) ->
      match = data.match /.*?(<source.*?>).*/g
      result = trim(match[0]).replace(/^.*?src=./, '').replace(/\".*$/, '')
    ,
    async: false
  result

getItems = (section) ->
  $(section).next().find('li').map(->
    link = $(this).find('.lecture-link')
    lecture = $(link).text()
    {lecture: trim(lecture), video: getVideo(link)}
  ).get()


getLinks = () ->
  $('.course-item-list-header').map(->
    title = $(this).find('h3').text()
    items = getItems(this)
    {section: trim(title), items: items}
  ).get()

chrome.extension.onRequest.addListener (request, sender, sendResponse) ->
  sendResponse(getLinks())
