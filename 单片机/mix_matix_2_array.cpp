#include<bits/stdc++.h>

using namespace std;
long long sss[16][16];
long long aaa[16][16];
void rev(){
    for(int i = 0; i < 16; i++) for(int j = 0; j < i; j++) {
		swap(sss[j][i],sss[i][j]);
	}
	for(int i = 1; i < 16; i+=2) {
		for(int j = 0; j <8; j++)
			swap(sss[i][j],sss[i][15-j]);
	}
}
int main()
{
	freopen("C:\\Users\\P\\Desktop\\ans","w",stdout);
	for(int tt = 1; tt <=111; tt+=2) {
		string add1="C:\\Users\\P\\Desktop\\新建文件夹\\1\\";
		string add2=".txt";
		string addn;
		stringstream num;
		num << tt;
		num >> addn;
		add1=add1+addn;
		cout <<'{';
		for(int i = 0; i < 16; i++)for(int j = 0; j < 16; j++) sss[i][j]=0L;
		for(int i = 1; i <= 3; i++){
			string ans;
			stringstream num1;
			num1 << i;
			num1 >> ans;
			ans=add1+ans+add2;
			freopen(ans.c_str(),"r",stdin);
			for(int k = 0; k < 16; k++)
				for(int j = 0; j < 16; j++) {
					int a;
					cin >> a;
					if(a<45) a=0;
					else if(a>210) a=255;
					sss[k][j]<<=8;
					sss[k][j]+=(255-a);
				}
		}
		rev();
		for(int i = 0; i< 16; i++) {
			for(int j = 0; j < 16; j++) {
				if(j||i)
					cout << ',';
				cout << sss[i][j];
			}
			cout << endl;
		}
		cout <<"},";
	}
	return 0;
}
