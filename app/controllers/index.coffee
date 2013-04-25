hostname = Ti.App.Properties.getString "hostname"
url = "http://#{hostname}"
$.webview.url = url

if OS_ANDROID
  $.webview.setEnableZoomControls false
  $.index.addEventListener 'android:back', ->
    if $.webview.canGoBack()
      $.webview.goBack()
    else
      Ti.Android.currentActivity.finish()
    return

$.index.open()

goForward = ->
  if $.webview.canGoForward()
    $.webview.goForward()
  return

reload = ->
  $.webview.setUrl $.webview.getUrl()
  return
