.class public Lcom/revo/evabs/SmaliInject;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SmaliInject.java"


# instance fields
.field SIGNAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 52
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "LAB_OFF"

    .line 11
    iput-object v0, p0, Lcom/revo/evabs/SmaliInject;->SIGNAL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0027

    .line 15
    invoke-virtual {p0, p1}, Lcom/revo/evabs/SmaliInject;->setContentView(I)V

    const p1, 0x7f0a0034

    .line 17
    invoke-virtual {p0, p1}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a0033

    .line 18
    invoke-virtual {p0, v0}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a011b

    .line 19
    invoke-virtual {p0, v1}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a011e

    .line 20
    invoke-virtual {p0, v2}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a011a

    .line 21
    invoke-virtual {p0, v3}, Lcom/revo/evabs/SmaliInject;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 23
    new-instance v4, Lcom/revo/evabs/SmaliInject$1;

    invoke-direct {v4, p0, v2}, Lcom/revo/evabs/SmaliInject$1;-><init>(Lcom/revo/evabs/SmaliInject;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance v0, Lcom/revo/evabs/SmaliInject$2;

    invoke-direct {v0, p0, v3, v1}, Lcom/revo/evabs/SmaliInject$2;-><init>(Lcom/revo/evabs/SmaliInject;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method
