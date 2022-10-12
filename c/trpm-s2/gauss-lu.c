#include <math.h>
#include <stdio.h>

#define MAX 100
#define MAXT 101 // max col for table t[MAX][MAXT]

int decomposition(double a[MAX][MAX], double l[MAX][MAX], double u[MAX][MAX], int n);
void resolution(double l[MAX][MAX], double u[MAX][MAX], double x[MAX],double y[MAX], double b[MAX], int n);

int main() {
    int i, j, err;
    int n = 4; //
    double a[MAX][MAX], b[MAX], x[MAX], y[MAX], u[MAX][MAX], l[MAX][MAX];
    a[1][1] = 8; a[1][2] = -4; a[1][3] = 3; a[1][4] = 7; b[1] = 12;
    a[2][1] = 4; a[2][2] = 2; a[2][3] = -6; a[2][4] = 4; b[2] = 1;
    a[3][1] = 16; a[3][2] = 6; a[3][3] = -2; a[3][4] = -15; b[3] = -19;
    a[4][1] = 6; a[4][2] = 10; a[4][3] = -15; a[4][4] = 10; b[4] = 1;

    printf("           A               B\n");
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++)
            printf("%12.5e\t", a[i][j]);
        printf("| %12.5e\n", b[i]);
    }

    err = decomposition(a, l, u, n);

    if (err) {
        printf("\n\n   U  \n");
        for (i = 1; i <= n; i++) {
            for (j = 1; j <= n; j++)
                printf("%10.10e\t", u[i][j]);
            printf("\n");
        }

        printf("\n\n   L  \n");
        for (i = 1; i <= n; i++) {
            for (j = 1; j <= n; j++)
                printf("%10.10e\t", l[i][j]);
            printf("\n");
        }

        resolution(l, u, x, y,b, n);
        printf("\n\nsolution:\n");
        for (i = 1; i <= n; i++) 
            printf("x%d=%10.10e\n",i, x[i]);

    } else {
        printf("pas de solution");
    }

    return 0;
}

int decomposition(double a[MAX][MAX], double l[MAX][MAX], double u[MAX][MAX], int n) {
    int i, j, k, err;
    for (i = 1; i <= n; i++) {
        for (j = 1; j <= n; j++)
            u[i][j] = a[i][j];
    }
    err = 1;
    k = 1;
    while (err != 0 && k <= n - 1) {
        if (u[k][k]) {
            for (i = k + 1; i <= n; i++) {
                double coef = u[i][k] / u[k][k];
                for (j = k; j <= n+1; j++)
                    u[i][j] = u[i][j] - coef * u[k][j];
                l[i][k] = coef;
            }
        }
        else err=0;
        k++;
    }
    if (u[n][n] == 0) return 0;
    return err;
}

void resolution(double l[MAX][MAX], double u[MAX][MAX], double x[MAX],double y[MAX], double b[MAX], int n) {
    int i,j;
    y[1] = b[1];
    for (i = 2; i <= n; i++) {
        y[i] = b[i];
        for (j = 1; j <= i-1; j++) {
            y[i] -= l[i][j] * y[j];
        }
    }

    x[n] = y[n] / u[n][n];
    for (i = n - 1; i >= 1; i--) {
        double s = y[i];
        for (j = i + 1; j <= n; j++) {
            s -= u[i][j] * x[j];
        }
        x[i] = s / u[i][i];
    }
}
