import math

POINTS = [(60,3.1), (61,3.6), (62,3.8), (63,4), (65,4.1)]

def lsr(points):
    total_x = 0
    total_x2 = 0
    total_y = 0
    total_xy = 0
    for point in points:
        total_x += point[0]
        total_x2 += math.pow(point[0],2)
        total_y += point[1]
        total_xy += point[0]*point[1]
    N = len(points)
    b = (N*total_xy - total_x*total_y)/(N*total_x2 - math.pow(total_x,2))
    a = (total_y/N) - b*(total_x/N)
    return (a,b)

print(lsr(POINTS))
