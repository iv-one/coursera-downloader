class BadgeController
  constructor: (@store, @classesService) ->
    store = @store

    chrome.browserAction.onClicked.addListener (tab) =>
      tabId = tab.id
      console.log tabId
      chrome.tabs.executeScript tabId, { file: "assets/vendors/jquery.min.js" }, =>
        chrome.tabs.executeScript tabId, { file: "lib/controller/commands/links.js" }, =>
          chrome.tabs.sendRequest tabId, {}, (results) =>
            @downloadSections results

  downloadSections: (items) ->
    @downloadLectures item, index for item, index in items

  downloadLectures: (section, sectionIndex) ->
    @downloadLecture item, section, sectionIndex, index for item, index in section.items

  downloadLecture: (lecture, section, sectionIndex, index) ->
    params = {url: lecture.video, filename: "Scala #{sectionIndex}.#{index} #{lecture.lecture}.mp4"}
    chrome.downloads.download params, (id) ->
      console.log id