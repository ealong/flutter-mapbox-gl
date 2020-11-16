package com.mapbox.mapboxgl;

import com.mapbox.api.directions.v5.models.DirectionsResponse;

public interface DirectionsResponseCallback {
    void onDirectionsResponse(DirectionsResponse directionsResponse);
}
