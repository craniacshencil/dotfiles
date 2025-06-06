import math

distance = float(input("Enter distance (in kms): "))
time_in_mins = float(input("Enter time (in min): "))


def calc_pace(distance, time_in_mins):
    distance_miles = distance / 1.60934
    pace = time_in_mins / distance
    pace_miles = time_in_mins / distance_miles
    pace_seconds = round((pace - math.floor(pace)) * 60)
    pace_seconds_miles = round((pace_miles - math.floor(pace_miles)) * 60)
    print("\n" + "=" * 15 + "STATS" + "=" * 15)
    print(f"Time taken:       {time_in_mins} min")
    print(f"Distance covered: {distance} km")
    print(f"Distance covered: {round(distance_miles, 2)} miles")
    print(f"Kilometer pace:   {math.floor(pace)}:{pace_seconds} /km")
    print(f"Miles pace:       {math.floor(pace_miles)}:{pace_seconds_miles} /mile")


calc_pace(distance, time_in_mins)
