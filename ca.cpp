#include<bits/stdc++.h>
typedef long long ll;
using namespace std;
void solve(){
	int n,k;
	cin>>n>>k;
	vector<int> a(n),v(n);
	for(int i=0; i<n; ++i){
		cin>>a[i];
	}	
	int ans = 0;
	for(int i=0; i<k; ++i){
		v[i] = k-i;
	}
	bool ok = false;
	for(int i=0; i<n; ++i){
		int m = 0;
		for(int j=i; j<i+k && m < k; ++j){
			if(a[j]==v[m]){
				ok = true;
				m++;
			}
			else{
				ok = false;
				break;
			}
		}
		ans+=(ok)?1:0;
	}
	cout<<ans<<endl;
}
int main(){
	ios::sync_with_stdio(0);
	cin.tie(0);

	int T;
	cin >> T;
	for(int i=1; i<=T; ++i){
		cout<<"Case #"<<i<<": ";
		solve();
	}
	return 0;
}
