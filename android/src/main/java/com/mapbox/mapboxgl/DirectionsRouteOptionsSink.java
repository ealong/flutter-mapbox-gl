package com.mapbox.mapboxgl;

import com.mapbox.geojson.Point;

import java.util.Locale;

interface DirectionsRouteOptionsSink {
    void setProfile(String profile);

    void setSteps(boolean steps);

    void setAlternatives(boolean alternatives);

    void setEnableRefresh(boolean enableRefresh);

    void setOverview(String overview);

    void setAnnotations(String annotations);

    void setBannerInstructions(boolean bannerInstructions);

    void setVoiceInstructions(boolean voiceInstructions);

    void setVoiceUnits(String voiceUnits);

    void setLanguage(Locale language);

    void setGeometries(String geometries);

    void setOrigin(Point origin);

    void setDestination(Point destination);

    void addWayPoint(Point waypoint);
}
