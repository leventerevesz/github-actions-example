#include "lib.h"
#include "unity.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_add(void)
{
    int a = 1;
    int b = 2;
    TEST_ASSERT_EQUAL(3, add(a, b));
}

void test_substract(void)
{
    int a = 7;
    int b = 3;
    TEST_ASSERT_EQUAL(4, substract(a, b));
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_add);
    RUN_TEST(test_substract);
    return UNITY_END();
}
