#include<stdio.h>
#include<conio.h>
#include<time.h>

void Merge(int a[], int low, int mid,int high){
    int i,j,k,b[200];
    i=low, j=mid+1, k=low;
    while(i<=mid && j<=high){
        if(a[i] <= a[j])
            b[k++]=a[i++];
        else
            b[k++]=a[j++];    
    }
    while(i<=mid)
        b[k++]=a[i++];

    while(j<=high)
        b[k++]=a[j++];

    for (k=low; k <= high; k++)
        a[k]=b[k];
}
void merge_sort(int a[],int low, int high){
    if(low<high){
    int mid=(high+low)/2;
    merge_sort(a,low,mid);
    merge_sort(a,mid+1,high);
    Merge(a,low,mid,high);
    }
}
void main(){
    int n,a[300];
    clock_t st,et;
    double ts;
    printf("\nEnter number of elements: ");
    scanf("%d",&n);
    printf("\nRandom Numbers are: ");
    for (int i = 0; i < n; i++)
    {
        a[i]=rand();
        printf("%d ",a[i]);
    }
    st=clock();
    merge_sort(a,1,n);
    et=clock();
    ts=(double)(et-st)/CLOCKS_PER_SEC;
    printf("\nSorted numbers are: ");
    for (int i = 1; i <= n; i++)
    {
        printf("%d ",a[i]);
    }
    printf("\nTotal Time Taken is: %lf",ts);    
}
