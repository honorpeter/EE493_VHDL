#include "xparameters.h"
#include "xil_io.h"

//#define MY_PWM XPAR_MY_PWM_CORE_0_S00_AXI_BASEADDR //Because of a bug in Vivado 2015.3 and 2015.4, this value is not correct.
#define MY_PWM 0x43C00000 //This value is found in the Address editor tab in Vivado (next to Diagram tab)

int main(){
    int num=0;
    int i;

    while(1){
        if(num == 1024)
             num = 0;
        else
             num++;

        Xil_Out32(MY_PWM, num);
        Xil_Out32((MY_PWM+4), num);
        Xil_Out32((MY_PWM+8), num);
        Xil_Out32((MY_PWM+12), num);

        for(i=0;i<30000000; i++);
    }
}
