import math

distance = float(input("Enter distance (in km): "))
time = input("Enter time (HH:MM:SS or MM:SS): ")


def calc_time_in_mins(time_string):
    time_parts = time.split(":")
    if len(time_parts) == 2:
        return float(time_parts[0]) + float(time_parts[1]) / 60
    else:
        return (
            60 * float(time_parts[0]) + float(time_parts[1]) + float(time_parts[2]) / 60
        )


time_in_mins = calc_time_in_mins(time)


def calc_pace(distance, time_in_mins):
    distance_miles = distance / 1.60934
    pace = time_in_mins / distance
    pace_miles = time_in_mins / distance_miles
    pace_seconds = round((pace - math.floor(pace)) * 60)
    pace_seconds_miles = round((pace_miles - math.floor(pace_miles)) * 60)
    print("\n" + "=" * 15 + "STATS" + "=" * 15)
    print(f"Time taken:       {time}")
    print(f"Distance covered: {distance} km")
    print(f"Distance covered: {round(distance_miles, 2)} miles")
    print(f"Kilometer pace:   {math.floor(pace)}:{pace_seconds:02} /km")
    print(f"Miles pace:       {math.floor(pace_miles)}:{pace_seconds_miles:02} /mile")


def test_pace(ideal):
    pass


calc_pace(distance, time_in_mins)
