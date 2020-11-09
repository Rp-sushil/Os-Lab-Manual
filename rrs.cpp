/* 
 * Author: 	SUSHIL KUMAR
 * Admission No: 18JE0861
 *
 * Q) Write a program to implement CPU scheduling for Round Robin Scheduling.
 */

#include <iostream>
using namespace std;
int main()
{
	int n;
	cout << "Enter Number of Process: ";
	cin >> n;
	cout << "Enter Burst Time: \n";
	int bt[n];		// Burst time 
	for(int i = 0; i < n; i++){
		printf("P[%d]: ", i+1);
		cin >> bt[i];
	}
	int quantum = 2;	// Time quantum
	// Make a copy of burst time to store remaining burst time
	int rem_bt[n];
	for(int i = 0; i < n; i++)
		rem_bt[i] = bt[i];
	int wt[n];
	int t = 0; 
	while(true){
		bool done = true;
		for(int i = 0; i < n; i++){
			if(rem_bt[i] > 0){
				done = false;
				if(rem_bt[i] > quantum){
					t += quantum;
					rem_bt[i] -= quantum;
				}
				else{
					t += rem_bt[i];
					rem_bt[i] = 0;
					wt[i] = (t - 0) - bt[i];
				}
			}
		}
		if(done)
			break;
	}
	int total_wt = 0;
	for(int i = 0; i < n; i++)
		total_wt += wt[i];
	cout << "Waiting time: \n";
	for(int i = 0;  i < n; i++)
		printf("P[%d]: %d\n", i+1, wt[i]);
	float avg_wt = (float)total_wt / n;
	printf("Average waiting time: %0.2f\n", avg_wt);
	return 0;
}

