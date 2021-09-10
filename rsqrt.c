#include <stdio.h>
#include <stdlib.h>

float Q_rsqrt(float number)
{
    long i;
    float x2, y;
    const float threehalfs = 1.5F;

    x2 = number * 0.5F;
    y = number;
    i = * (long *)&y;
    i = 0x5f3759df - (i >> 1);
    y = * (float *)&i;
    y = y * (threehalfs - (x2*y*y));

    return y;
}

int main(int argc, char **argv)
{
    int N = atoi((const char*)argv[1]);
    printf("%f\n", Q_rsqrt((float)N));

    return 0;
}
