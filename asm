#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <string.h>

void kiemTraSoNguyen(int x) {
    printf("\n");
    if (x == (int)x)
        printf("- %d la so nguyen.\n", x);
    else
        printf("- %d khong phai la so nguyen. \n", x);

    int count = 0;
    for (int i = 1; i <= x; i++) {
        if (x % i == 0)  
            count++;
        }
        if (count == 2)
            printf("- %d la so nguyen to \n", x);
        else
            printf("- %d khong phai la so nguyen to. \n", x);

        if (x * x != x || x < 0)
            printf("- %d khong phai la so chinh phuong. \n", x);
        else if (x * x == x)
            printf("- %d la so chinh phuong. \n", x);
        printf("\n");
    return;
}

void uocVaBoi(int x, int y) {
    if (x <= 0 || y <= 0) {
        printf("\nX va Y phai la so nguyen duong! \n\n");
        return;
    }

    int ucln = 1;
    for (int i = 1; i <= x && i <= y; i++) {
        if (x % i == 0 && y % i == 0) {
            ucln = i;
        }
    }

    int bcnn = x;
    while (bcnn % y != 0) {
        bcnn += x;
    }
    printf("\n");
    printf("UCLN cua hai so %d, %d la: %d \n", x, y, ucln);
    printf("BCNN cua hai so %d, %d la : %d \n", x, y, bcnn);
    printf("\n");

    return;
}

void karaoke(int gioVao, int gioKetThuc) {
    if (gioVao < 12 || gioVao > 23) {
        printf("\n");
        printf("Quan khong hoat dong vao khung gio nay!");
        printf("\n\n");
        return;
    }

    if (gioKetThuc <= gioVao) {
        printf("\nGio ket thuc phai lon hon gio vao! \n\n");
        return;
    }

    int gioHat = gioKetThuc - gioVao;
    int tongTien;
    if (gioHat > 3) {
        tongTien = 150000 * 3 + (gioHat - 3) * 150000 * 0.3;
    } else {
        tongTien = 150000 * gioHat;
    }
    if (gioVao >= 14 && gioVao <= 17) {
        tongTien -= tongTien * 0.1;
    }

    printf("\n");
    printf("Gio vao: %d, gio ket thuc: %d, tong gio hat: %d, tong tien: %d", gioVao, gioKetThuc, gioHat, tongTien);
    printf("\n\n");

    return;
}

void tinhDien(int soDien) {
    if (soDien < 0) {
        printf("So dien tieu thu khong hop le \n");
        return;
    }

    float tienDien;
    if (soDien <= 50) {
        tienDien = soDien * 1.678;
    } else if (soDien <= 100) {
        tienDien = 50 * 1.678 + (soDien - 50) * 1.734;
    } else if (soDien <= 200) {
        tienDien = 50 * 1.678 + 50 * 1.734 + (soDien - 100) * 2.014;
    } else if (soDien <= 300) {
        tienDien = 50 * 1.678 + 50 * 1.734 + 100 * 2.014 + (soDien - 200) * 2.536;
    } else if (soDien <= 400) {
        tienDien = 50 * 1.678 + 50 * 1.734 + 100 * 2.014 + 100 * 2.536 + (soDien - 300) * 2.834;
    } else {
        tienDien = 50 * 1.678 + 50 * 1.734 + 100 * 2.014 + 100 * 2.536 + 100 * 2.834 + (soDien - 400) * 2.927;
    }
    printf("\n");
    printf("So tien dien phai tra: %.2f VND \n", tienDien);
    printf("\n");

    return;
}

void doiTien(int soTienDoi) {
    printf("\n");
    if (soTienDoi == 500) {
        printf("Ban doi duoc 2 to 200k va 1 to 100k \n");
    } else if (soTienDoi == 200) {
        printf("Ban doi duoc 2 to 100k \n");
    } else if (soTienDoi == 100) {
        printf("Ban doi duoc 2 to 50k \n");
    } else if (soTienDoi == 50) {
        printf("Ban doi duoc 2 to 20k va 1 to 10k \n");
    } else if (soTienDoi == 20) {
        printf("Ban doi duoc 2 to 10k \n");
    } else if (soTienDoi == 10) {
        printf("Ban doi duoc 2 to 5k \n");
    } else if (soTienDoi == 5) {
        printf("Ban doi duoc 2 to 2k va 1 to 1k \n");
    } else if (soTienDoi == 2) {
        printf("Ban doi duoc 2 to 1k \n");
    } else if (soTienDoi == 1) {
        printf("Ban doi duoc 2 to 500d \n");
    } else {
        printf("Menh gia nay khong ho tro doi! \n");
    }
    printf("\n");

    return;
}

void vayTien(int soTienVay) {
    if (soTienVay <= 0) {
        printf("\nSo tien vay phai lon hon 0! \n\n");
        return;
    }

    printf("\n");
    int gocTra = soTienVay / 12;
    printf("Ky han \t Lai phai tra \t Goc phai tra \t So tien phai tra \t So tien con lai \n");
    for (int i = 1; i <= 12; i++) {
        int laiTra = soTienVay * 0.05;
        int tongTra = laiTra + gocTra;
        soTienVay -= gocTra;
        printf("%2d \t %12d \t %12d \t %15d \t %15d\n", i, laiTra, gocTra, tongTra, soTienVay);
    }
    printf("\n");

    return;
}

void vayTienMuaXe(int phanTramVay) {
    const long GIA_XE = 500000000;
    float phanTramTraTruoc = (float)(100 - phanTramVay) / 100.0f;
    long tienVay = (long)(GIA_XE - GIA_XE * phanTramTraTruoc);
    long soTienTraLanDau = GIA_XE - tienVay;

    float laiSuatThang = 7.2f / 12.0f / 100.0f;
    long tongLaiPhaiTra = (long)(tienVay * laiSuatThang * 24);
    long tienTraHangThang = (tienVay + tongLaiPhaiTra) / 24;

    printf("\n");
    printf("So tien phai tra lan dau: %ld VND \n", soTienTraLanDau);
    printf("So tien phai tra hang thang (24 thang, lai %.2f%%/thang): %ld VND \n", laiSuatThang * 100, tienTraHangThang);
    printf("\n");

    return;
}

struct SinhVien {
    char hoTen[50];
    float diem;
    char hocLuc[50];
};

void thongTinSinhVien(struct SinhVien mangSV[], int *n) {
    for (int i = 0; i < *n; i++) {
        printf("Nhap ten sinh vien thu %d: ", i + 1);
        fgets(mangSV[i].hoTen, sizeof(mangSV[i].hoTen), stdin);
        mangSV[i].hoTen[strcspn(mangSV[i].hoTen, "\n")] = '\0';

        printf("Nhap diem cua sinh vien thu %d: ", i + 1);
        scanf("%f", &mangSV[i].diem);
        getchar();
    }
    for (int i = 0; i < *n; i++) {
        if (mangSV[i].diem >= 9.0)
            strcpy(mangSV[i].hocLuc, "Xuat sac");
        else if (mangSV[i].diem >= 8.0)
            strcpy(mangSV[i].hocLuc, "Gioi");
        else if (mangSV[i].diem >= 6.5)
            strcpy(mangSV[i].hocLuc, "Kha");
        else if (mangSV[i].diem >= 5.0)
            strcpy(mangSV[i].hocLuc, "Trung binh");
        else
            strcpy(mangSV[i].hocLuc, "Yeu");
    }

    for (int i = 0; i < *n - 1; i++) {
        for (int j = 0; j < *n - i - 1; j++) {
            if (mangSV[j].diem < mangSV[j + 1].diem) {
                struct SinhVien temp = mangSV[j];
                mangSV[j] = mangSV[j + 1];
                mangSV[j + 1] = temp;
            }
        }
    }

    printf("Danh sach sinh vien sau khi sap xep: \n");
    for (int i = 0; i < *n; i++) {
        printf("Sinh vien thu %d: | Ho ten: %s | Diem: %.1f | Hoc luc: %s \n", i + 1, mangSV[i].hoTen, mangSV[i].diem, mangSV[i].hocLuc);
    }

    return;
}

void ngauNhien(int so1, int so2) {
    srand((unsigned int)time(NULL));

    int random1 = rand() % 15 + 1;
    int random2 = rand() % 15 + 1;
    printf("So ngau nhien: %d, %d \n", random1, random2);
    if ((so1 == random1 && so2 == random2) || (so1 == random2 && so2 == random1))
        printf("Chuc mung ban da trung giai nhat. \n");
    else if (so1 == random1 || so1 == random2 || so2 == random1 || so2 == random2)
        printf("Chuc mung ban da trung giai nhi. \n");
    else
        printf("Chuc mung ban may man lan sau. \n");

    return;
}

struct PhanSo {
    int tu;
    int mau;
};

void tinhToanPhanSo(struct PhanSo ps1, struct PhanSo ps2) {
    if (ps1.mau == 0 || ps2.mau == 0) {
        printf("Mau so khong duoc bang 0! \n");
        return;
    }

    struct PhanSo tong, hieu, tich, thuong;
    tong.tu = ps1.tu * ps2.mau + ps2.tu * ps1.mau;
    tong.mau = ps1.mau * ps2.mau;

    hieu.tu = ps1.tu * ps2.mau - ps2.tu * ps1.mau;
    hieu.mau = ps1.mau * ps2.mau;

    tich.tu = ps1.tu * ps2.tu;
    tich.mau = ps1.mau * ps2.mau;

    if (ps2.tu == 0) {
        printf("Tong: %d/%d\n", tong.tu, tong.mau);
        printf("Hieu: %d/%d\n", hieu.tu, hieu.mau);
        printf("Tich: %d/%d\n", tich.tu, tich.mau);
        printf("Thuong: khong xac dinh (chia cho 0)\n");
        return;
    }

    thuong.tu = ps1.tu * ps2.mau;
    thuong.mau = ps1.mau * ps2.tu;

    printf("Tong: %d/%d\n", tong.tu, tong.mau);
    printf("Hieu: %d/%d\n", hieu.tu, hieu.mau);
    printf("Tich: %d/%d\n", tich.tu, tich.mau);
    printf("Thuong: %d/%d\n", thuong.tu, thuong.mau);
}

int main() {
    int choice;
    do {
        printf("+-------------------------------+\n");
        printf("|       MENU CHUONG TRINH       |\n");
        printf("+-------------------------------+\n");
        printf("1. Kiem tra so nguyen \n");
        printf("2. Tim uoc so chung va boi so chung cua 2 so \n");
        printf("3. Chuong trinh tinh tien cho quan Karaoke \n");
        printf("4. Tinh tien dien \n");
        printf("5. Chuc nang doi tien \n");
        printf("6. Chuc nang tinh lai suat vay ngan hang vay tra gop \n");
        printf("7. Chuong trinh vay tien mua xe \n");
        printf("8. Sap xep thong tin sinh vien \n");
        printf("9. Game FPOLY-LOTT (2/15) \n");
        printf("10. Chuong trinh tinh toan phan so \n");
        printf("11. Thoat chuong trinh \n");
        printf("Moi chon chuc nang: ");
        if (scanf("%d", &choice) != 1) {
            printf("Vui long nhap so! \n");
            while (getchar() != '\n');
            continue;
        }

        switch (choice) {
            case 1: {
                int x1;
                printf("Nhap so nguyen x: ");
                scanf("%d", &x1);
                kiemTraSoNguyen(x1);
                break;
            }
            case 2: {
                int x2, y2;
                printf("Nhap vao 2 so x, y: ");
                scanf("%d %d", &x2, &y2);
                uocVaBoi(x2, y2);
                break;
            }
            case 3: {
                int gioVao, gioKetThuc;
                printf("Nhap gio vao va gio ket thuc: ");
                scanf("%d %d", &gioVao, &gioKetThuc);
                karaoke(gioVao, gioKetThuc);
                break;
            }
            case 4: {
                int soDien;
                printf("Nhap so dien tieu thu trong thang: ");
                scanf("%d", &soDien);
                tinhDien(soDien);
                break;
            }
            case 5: {
                int soTienDoi;
                printf("Nhap so tien can doi: ");
                scanf("%d", &soTienDoi);
                doiTien(soTienDoi);
                break;
            }
            case 6: {
                int soTienVay;
                printf("Nhap so tien muon vay: ");
                scanf("%d", &soTienVay);
                vayTien(soTienVay);
                break;
            }
            case 7: {
                int phanTramVay;
                printf("Nhap phan tram vay toi da: ");
                scanf("%d", &phanTramVay);
                if (phanTramVay < 0 || phanTramVay > 100)
                    printf("Phan tram vay khong hop le\n");
                else
                    vayTienMuaXe(phanTramVay);
                break;
            }
            case 8: {
                int n;
                printf("Nhap vao so luong sinh vien (toi da 100): ");
                scanf("%d", &n);
                getchar();

                if (n <= 0 || n > 100) {
                    printf("So luong sinh vien phai tu 1 den 100! \n");
                    break;
                }

                struct SinhVien mangSV[100];
                thongTinSinhVien(mangSV, &n);
                break;
            }
            case 9: {
                int so1, so2;
                printf("Nhap vao 2 so tu 01-15: ");
                scanf("%d %d", &so1, &so2);
                if (so1 < 1 || so1 > 15 || so2 < 1 || so2 > 15) {
                    printf("Vui long nhap lai 2 so theo dung yeu cau! \n");
                    break;
                }
                ngauNhien(so1, so2);
                break;
            }
            case 10: {
                struct PhanSo ps1, ps2;
                printf("Nhap vao phan so thu 1 (vi du: 1/2): \n");
                scanf("%d/%d", &ps1.tu, &ps1.mau);

                printf("Nhap vao phan so thu 2 (vi du: 1/2): \n");
                scanf("%d/%d", &ps2.tu, &ps2.mau);
                tinhToanPhanSo(ps1, ps2);
                break;
            }
            case 11:
                printf("Dang thoat chuong trinh \n");
                break;
            default:
                printf("Khong co chuc nang nay! Moi chon lai. \n");
                break;
        }
    } while (choice != 11);

    return 0;
}
