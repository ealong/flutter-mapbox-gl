package com.mapbox.mapboxgl;

import androidx.annotation.NonNull;

import com.mapbox.api.directions.v5.DirectionsCriteria;
import com.mapbox.api.directions.v5.MapboxDirections;
import com.mapbox.api.directions.v5.models.DirectionsResponse;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.plugins.annotation.SymbolOptions;

import java.util.Locale;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

import static com.mapbox.api.directions.v5.DirectionsCriteria.ANNOTATION_CONGESTION;
import static com.mapbox.api.directions.v5.DirectionsCriteria.GEOMETRY_POLYLINE6;
import static com.mapbox.api.directions.v5.DirectionsCriteria.OVERVIEW_FULL;

public class DirectionsRouteBuilder implements DirectionsRouteOptionsSink {

    MapboxDirections.Builder builder;

//    MapboxDirections.Builder builder = MapboxDirections.builder()
//            .accessToken(getAccessToken(context))
//            .profile(DirectionsCriteria.PROFILE_DRIVING)
//            .steps(true)
//            .alternatives(alternatives)
//            .enableRefresh(true)
//            .overview(OVERVIEW_FULL)
//            .annotations(ANNOTATION_CONGESTION)
//            .bannerInstructions(true)
//            .voiceInstructions(true)
//            .voiceUnits(DirectionsCriteria.METRIC)
//            .language(new Locale("vi", "VN"))
//            .geometries(GEOMETRY_POLYLINE6)
//            .post();

    DirectionsRouteBuilder(String accessToken) {
        this.builder = MapboxDirections.builder().accessToken(accessToken);
    }

    public void getRoute(@NonNull final DirectionsResponseCallback callback) {
        this.builder.build().enqueueCall(new Callback<DirectionsResponse>() {
            @Override
            public void onResponse(Call<DirectionsResponse> call, Response<DirectionsResponse> response) {
                if (callback != null) {
                    callback.onDirectionsResponse(response.body());
                }
            }

            @Override
            public void onFailure(Call<DirectionsResponse> call, Throwable t) {
                callback.onDirectionsResponse(null);
            }
        });
    }

    @Override
    public void setProfile(String profile) {
        this.builder.profile(profile);
    }

    @Override
    public void setSteps(boolean steps) {
        this.builder.steps(steps);
    }

    @Override
    public void setAlternatives(boolean alternatives) {
        this.builder.alternatives(alternatives);
    }

    @Override
    public void setEnableRefresh(boolean enableRefresh) {
        this.builder.enableRefresh(enableRefresh);
    }

    @Override
    public void setOverview(String overview) {
        this.builder.overview(overview);
    }

    @Override
    public void setAnnotations(String annotations) {
        this.builder.annotations(annotations);
    }

    @Override
    public void setBannerInstructions(boolean bannerInstructions) {
        this.builder.bannerInstructions(bannerInstructions);
    }

    @Override
    public void setVoiceInstructions(boolean voiceInstructions) {
        this.builder.voiceInstructions(voiceInstructions);
    }

    @Override
    public void setVoiceUnits(String voiceUnits) {
        this.builder.voiceUnits(voiceUnits);
    }

    @Override
    public void setLanguage(Locale language) {
        this.builder.language(language);
    }

    @Override
    public void setGeometries(String geometries) {
        this.builder.geometries(geometries);
    }

    @Override
    public void setOrigin(Point origin) {
        this.builder.origin(origin);
    }

    @Override
    public void setDestination(Point destination) {
        this.builder.destination(destination);
    }

    @Override
    public void addWayPoint(Point waypoint) {
        this.builder.addWaypoint(waypoint);
    }
}
