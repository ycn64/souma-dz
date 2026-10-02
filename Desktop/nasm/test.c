#include <stdio.h>
#include <limits.h>

// Function to print binary representation (for visualization)
void printBinary(unsigned int n) {
    for (int i = 31; i >= 0; i--) {
        printf("%d", (n >> i) & 1);
        if (i % 8 == 0 && i != 0) printf(" "); // spacing every 8 bits
    }
}

// Compare signed and unsigned integers
void compareValues(int s, unsigned int u) {
    printf("\nComparing signed=%d and unsigned=%u\n", s, u);
    if (s < u)
        printf("Signed value is smaller.\n");
    else if (s > u)
        printf("Signed value is larger.\n");
    else
        printf("They are equal.\n");
}

int main() {
    printf("=== SIGNED vs UNSIGNED EXPLORATION ===\n\n");

    signed int a = -10;
    unsigned int b = 10;

    printf("Signed a = %d\n", a);
    printf("Unsigned b = %u\n", b);

    printf("\nBinary of a (-10): ");
    printBinary((unsigned int)a);
    printf("\nBinary of b (10):  ");
    printBinary(b);

    printf("\n\n--- Comparison Test ---\n");
    compareValues(a, b);

    printf("\n--- Overflow Demonstration ---\n");
    signed int s_max = INT_MAX;
    unsigned int u_max = UINT_MAX;

    printf("Signed max: %d\n", s_max);
    printf("Unsigned max: %u\n", u_max);

    s_max += 1; // overflow
    u_max += 1; // overflow (wraps to 0)

    printf("After overflow:\n");
    printf("Signed max + 1 = %d\n", s_max);
    printf("Unsigned max + 1 = %u\n", u_max);

    printf("\n--- Loop Test with Signed and Unsigned ---\n");
    signed int si;
    unsigned int ui;

    printf("Counting down with signed int:\n");
    for (si = 3; si >= 0; si--)
        printf("si = %d\n", si);

    printf("\nCounting down with unsigned int:\n");
    for (ui = 3; ui >= 0; ui--) {
        printf("ui = %u\n", ui);
        if (ui == 0) break; // prevent infinite loop
    }

    printf("\n--- Mixed Arithmetic ---\n");
    int x = -5;
    unsigned int y = 2;

    int result = x + y; // implicit conversion to unsigned!
    printf("x = %d, y = %u, x + y = %d (as signed), %u (as unsigned)\n", x, y, result, result);

    printf("\n--- Bitwise Operations ---\n");
    unsigned int bitA = 0xF0F0F0F0; // 11110000 pattern
    unsigned int bitB = 0x0F0F0F0F; // 00001111 pattern

    printf("bitA: ");
    printBinary(bitA);
    printf("\nbitB: ");
    printBinary(bitB);

    printf("\n\nbitA & bitB: ");
    printBinary(bitA & bitB);
    printf("\nbitA | bitB: ");
    printBinary(bitA | bitB);
    printf("\nbitA ^ bitB: ");
    printBinary(bitA ^ bitB);

    printf("\n\n=== END OF PROGRAM ===\n");
    return 0;
}

