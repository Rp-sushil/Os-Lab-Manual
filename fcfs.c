/*
 * Author:     	 SUSHIL KUMAR
 * Admission NO: 18JE0861
 * 
 * Q) Write the program to implement CPU & scheduling algorithm for first come first serve scheduling
 */

#include <stdio.h>
int main()
{
	int n;
	printf("Enter Number of Process: ");
	scanf("%d", &n);
	int bt[n];
	printf("Enter the Burst Time\n");
	for(int i = 0; i < n; i++){
		printf("P[%d]:", i+1);
		scanf("%d", &bt[i]);
	}
	int wt[n]; 
	wt[0] = 0;
	for(int i = 1; i < n; i++){
		wt[i] = wt[i - 1] + bt[i - 1];
	}
	int total_wt = 0;
	for(int i = 0; i < n; i++)
		total_wt += wt[i];
	float av_wt =  ((float)total_wt / (float)n);
	printf("Wating Time: \n");
	for(int i = 0; i < n; i++)
		printf("P[%d]: %d\n", i+1, wt[i]);
	printf("Avarage Waiting Time: %.2f\n", av_wt);
	return 0;
}
