/* 
 * Author: 	 SUSHIL KUMAR
 * Admission No: 18JE0861
 *
 * Q) Write a program to implement cpu scheduling algorithm for shortest job first scheduling.
 */

#include <stdio.h>
int main()
{
	printf("Enter Number of Process:");
	int n;
	scanf("%d", &n);
	printf("Enter Burst Time: \n");
	int bt[n];
	int p[n];
	for(int i = 0; i < n; i++){
		printf("P[%d]:",i+1);
		scanf("%d", &bt[i]);
		p[i] = i;
	}
	// sorting of burst time
	for(int i = 0; i < n; i++){
		for(int j = 0; j < n - 1; j++){
			if(bt[j] > bt[j + 1]){
				int temp = bt[j];
				bt[j] = bt[j + 1];
				bt[j + 1] = temp;
				temp = p[j];
				p[j] = p[j+1];
				p[j+1] = temp;
			}
		}
	}
	
	// calculation of waiting time
	int wt[n];
	wt[p[0]] = 0;
	for(int i = 1; i < n; i++)
		wt[p[i]] = wt[p[i - 1]] + bt[i - 1];

	int total_wt = 0;
	for(int i = 0; i < n; i++)
		total_wt += wt[i];
	float avg_wt = (float)total_wt / n;
	printf("Waiting time: \n");
	for(int i = 0; i < n; i++)
		printf("P[%d]: %d\n", i+1, wt[i]);
	printf("Average waiting time: %.2f\n", avg_wt);
	return 0;

}
/*
 * Merge Sort will require more space here
void sort(int* a, int l, int r){
	if(l < r){
		int m = l + (r - l)/2;
		sort(a, l, m);
		sort(a, m + 1, r);
		merge(a, l, m, r);
	}
}
void merge(int* a, int l, int m, int r){
	int L[m - l + 1];
	int R[r - m];
	for(int i = l; i <= m; i++)
		L[i - l] = a[i];
	for(int i = m + 1; i <= r; i++)
		R[i - m - 1] = a[i];
	int i = 0, j = 0, k = l;
	while(i < m - l + 1 && j < r - m){
		if(L[i] <= R[j])
			a[k++] = L[i++];
		else
			a[k++] = R[j++];
	}
	while(i < m - l + 1)
		a[k++] = L[i++];
	while(j < r - m)
		a[k++] = R[j++];
}
*/
