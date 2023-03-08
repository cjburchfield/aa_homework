fetch(/* request to OpenWeatherMap */)
  .then(/* in success callback, process response as JSON */)
  .then(
    // log success message and parsed data in success callback
    // log failure message and error argument in failure callback
  );

console.log("The AJAX request has been dispatched.");