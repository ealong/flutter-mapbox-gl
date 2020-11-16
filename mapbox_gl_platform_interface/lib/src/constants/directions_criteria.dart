part of mapbox_gl_platform_interface;

/**
 * Constants and properties used to customize the directions request.
 *
 * @since 1.0.0
 */
class DirectionsCriteria {

  /**
   * Mapbox default username.
   *
   * @since 1.0.0
   */
  static final String PROFILE_DEFAULT_USER = "mapbox";

  /**
   * For car and motorcycle routing. This profile factors in current and historic traffic
   * conditions to avoid slowdowns.
   *
   * @since 2.0.0
   */
  static final String PROFILE_DRIVING_TRAFFIC = "driving-traffic";

  /**
   * For car and motorcycle routing. This profile shows the fastest routes by preferring
   * high-speed roads like highways.
   *
   * @since 1.0.0
   */
  static final String PROFILE_DRIVING = "driving";

  /**
   * For pedestrian and hiking routing. This profile shows the shortest path by using sidewalks
   * and trails.
   *
   * @since 1.0.0
   */
  static final String PROFILE_WALKING = "walking";

  /**
   * For bicycle routing. This profile shows routes that are short and safe for cyclist, avoiding
   * highways and preferring streets with bike lanes.
   *
   * @since 1.0.0
   */
  static final String PROFILE_CYCLING = "cycling";

  /**
   * Format to return route geometry will be an encoded polyline.
   *
   * @since 1.0.0
   */
  static final String GEOMETRY_POLYLINE = "polyline";

  /**
   * Format to return route geometry will be an encoded polyline with precision 6.
   *
   * @since 2.0.0
   */
  static final String GEOMETRY_POLYLINE6 = "polyline6";

  /**
   * A simplified version of the {@link #OVERVIEW_FULL} geometry. If not specified simplified is
   * the default.
   *
   * @since 1.0.0
   */
  static final String OVERVIEW_SIMPLIFIED = "simplified";

  /**
   * The most detailed geometry available.
   *
   * @since 1.0.0
   */
  static final String OVERVIEW_FULL = "full";

  /**
   * No overview geometry.
   *
   * @since 1.0.0
   */
  static final String OVERVIEW_FALSE = "false";

  /**
   * The duration, in seconds, between each pair of coordinates.
   *
   * @since 2.1.0
   */
  static final String ANNOTATION_DURATION = "duration";

  /**
   * The distance, in meters, between each pair of coordinates.
   *
   * @since 2.1.0
   */
  static final String ANNOTATION_DISTANCE = "distance";

  /**
   * The speed, in km/h, between each pair of coordinates.
   *
   * @since 2.1.0
   */
  static final String ANNOTATION_SPEED = "speed";

  /**
   * The congestion, provided as a String, between each pair of coordinates.
   *
   * @since 2.2.0
   */
  static final String ANNOTATION_CONGESTION = "congestion";

  /**
   * The posted speed limit, between each pair of coordinates.
   *
   * @since 2.1.0
   */
  static final String ANNOTATION_MAXSPEED = "maxspeed";

  /**
   * Exclude all tolls along the returned directions route.
   *
   * @since 3.0.0
   */
  static final String EXCLUDE_TOLL = "toll";

  /**
   * Exclude all motorways along the returned directions route.
   *
   * @since 3.0.0
   */
  static final String EXCLUDE_MOTORWAY = "motorway";

  /**
   * Exclude all ferries along the returned directions route.
   *
   * @since 3.0.0
   */
  static final String EXCLUDE_FERRY = "ferry";

  /**
   * Exclude all tunnels along the returned directions route.
   *
   * @since 3.0.0
   */
  static final String EXCLUDE_TUNNEL = "tunnel";

  /**
   * Exclude all roads with access restrictions along the returned directions route.
   *
   * @since 3.0.0
   */
  static final String EXCLUDE_RESTRICTED = "restricted";

  /**
   * Change the units to imperial for voice and visual information. Note that this won't change
   * other results such as raw distance measurements which will always be returned in meters.
   *
   * @since 3.0.0
   */
  static final String IMPERIAL = "imperial";

  /**
   * Change the units to metric for voice and visual information. Note that this won't change
   * other results such as raw distance measurements which will always be returned in meters.
   *
   * @since 3.0.0
   */
  static final String METRIC = "metric";

  /**
   * Returned route starts at the first provided coordinate in the list. Used specifically for the
   * Optimization API.
   *
   * @since 2.1.0
   */
  static final String SOURCE_FIRST = "first";

  /**
   * Returned route starts at any of the provided coordinate in the list. Used specifically for the
   * Optimization API.
   *
   * @since 2.1.0
   */
  static final String SOURCE_ANY = "any";


  /**
   * Returned route ends at any of the provided coordinate in the list. Used specifically for the
   * Optimization API.
   *
   * @since 3.0.0
   */
  static final String DESTINATION_ANY = "any";

  /**
   * Returned route ends at the last provided coordinate in the list. Used specifically for the
   * Optimization API.
   *
   * @since 3.0.0
   */
  static final String DESTINATION_LAST = "last";

  /**
   * The routes can approach waypoints from either side of the road. <p>
   *
   * Used in MapMatching and Directions API.
   *
   * @since 3.2.0
   */
  static final String APPROACH_UNRESTRICTED = "unrestricted";

  /**
   * The route will be returned so that on arrival,
   * the waypoint will be found on the side that corresponds with the  driving_side of
   * the region in which the returned route is located. <p>
   *
   * Used in MapMatching and Directions API.
   *
   * @since 3.2.0
   */
  static final String APPROACH_CURB = "curb";
}
