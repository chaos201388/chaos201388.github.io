// google-chrome-developer-tools-console

(function () {
    return new Date().toISOString()                                                                // current time
        + " " + window.location.href                                                               // current URL
        + " " + (performance.timing.domContentLoadedEventEnd - performance.timing.navigationStart) // DOMContentLoaded
        + " " + (performance.timing.loadEventEnd - performance.timing.navigationStart)             // Load
        ;
})()
