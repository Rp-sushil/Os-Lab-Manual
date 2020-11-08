/* 
 * Author: 	  SUSHIL KUMAR
 * Admission No.: 18JE0861
 *
 * Q) write a 'C' Program to perform priority scheduling
 */

#include <stdio.h>
int main()
{
	int n;
	printf("Enter Number of Process:");
	scanf("%d", &n);
	int bt[n];
	int p[n];
	int pos[n];
	printf("Enter burst time and Priority:\n");
	for(int i = 0; i < n; i++){
		printf("P[%d]:", i+1);
		scanf("%d %d", &bt[i], &p[i]);
		pos[i] = i;
	}
	// sorting process on the basis of priority
	for(int i = 0; i < n; i++){
		for(int j = 0; j < n - 1; j++){
			if(p[j] < p[j + 1]){
				int temp = p[j];
				p[j] = p[j + 1];
				p[j + 1] = temp;
				temp = pos[j];
				pos[j] = pos[j + 1];
				pos[j + 1] = temp;
			}
		}
	}
	int wt[n];
	wt[pos[0]] = 0;
	for(int i = 1; i < n; i++)
		wt[pos[i]] = wt[pos[i - 1]] + bt[pos[i - 1]];
	int total_wt = 0;
	for(int i = 0; i < n; i++)
		total_wt += wt[i];
	float avg_wt = (float)total_wt / n;
	printf("Wating Time: \n");
	for(int i = 0; i < n; i++)
		printf("P[%d]:%d\n", i+1, wt[i]);
	printf("Average waiting time: %0.2f\n", avg_wt);
	return 0;
}



