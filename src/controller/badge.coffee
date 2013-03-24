class BadgeController
  constructor: (@store, @classesService) ->
    chrome.browserAction.onClicked.addListener (tab) =>
      tabId = tab.id
      chrome.tabs.executeScript tabId, { file: "assets/vendors/jquery.min.js" }, =>
        chrome.tabs.executeScript tabId, { file: "lib/controller/commands/links.js" }, =>
          chrome.tabs.sendRequest tabId, {}, (items) =>
            @store.addIncomingTasks items
            chrome.tabs.create(url: "options.html")