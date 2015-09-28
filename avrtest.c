#include <avr/io.h>
#include <stdint.h>

uint8_t  u=10;
uint16_t v=15;

int main()
{
        uint8_t i=0;
        uint8_t j;
        while( v >= u )
        {
                v=v-u;
                i=i+1;
        }
        j=v;
        return 0;
}
