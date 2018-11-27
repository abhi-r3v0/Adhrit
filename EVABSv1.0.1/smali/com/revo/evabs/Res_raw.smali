.class public Lcom/revo/evabs/Res_raw;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Res_raw.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0025

    .line 14
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Res_raw;->setContentView(I)V

    const p1, 0x7f0a0042

    .line 16
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Res_raw;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a011c

    .line 17
    invoke-virtual {p0, v0}, Lcom/revo/evabs/Res_raw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    new-instance v1, Lcom/revo/evabs/Res_raw$1;

    invoke-direct {v1, p0, v0}, Lcom/revo/evabs/Res_raw$1;-><init>(Lcom/revo/evabs/Res_raw;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
