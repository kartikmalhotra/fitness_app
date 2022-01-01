enum RestAPIEndPoint { gET, pUT, pOST, dELETE, pATCH }

enum AppState {
  dataNotFetched,
  fetchingData,
  dataReady,
  noReady,
  authNotGranted,
  dataAdded,
  noData,
  dataNotAdded,
  unexpectedError,
}
