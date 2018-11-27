.class public Lcom/revo/evabs/Decode;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Decode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 13
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 14
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Decode;->setContentView(I)V

    const-string p1, "RVZBQlN7bmV2M3Jfc3QwcmU="

    const-string v0, "X3MzbnMhdGl2M19kYXRh"

    const-string v1, "XzFuXzdoM19zMHVyY2VjMGRl"

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const p1, 0x7f0a0030

    .line 22
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Decode;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a0119

    .line 23
    invoke-virtual {p0, v0}, Lcom/revo/evabs/Decode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    new-instance v1, Lcom/revo/evabs/Decode$1;

    invoke-direct {v1, p0, v0}, Lcom/revo/evabs/Decode$1;-><init>(Lcom/revo/evabs/Decode;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
