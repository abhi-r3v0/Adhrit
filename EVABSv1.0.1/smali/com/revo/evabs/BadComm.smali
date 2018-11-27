.class public Lcom/revo/evabs/BadComm;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BadComm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revo/evabs/BadComm$AsyncLogin;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x186a0

.field public static final READ_TIMEOUT:I = 0x249f0


# instance fields
.field GETIT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "evabs_admin"

    .line 30
    iput-object v0, p0, Lcom/revo/evabs/BadComm;->GETIT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001b

    .line 35
    invoke-virtual {p0, p1}, Lcom/revo/evabs/BadComm;->setContentView(I)V

    const p1, 0x7f0a0108

    .line 37
    invoke-virtual {p0, p1}, Lcom/revo/evabs/BadComm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0a0028

    .line 39
    invoke-virtual {p0, v0}, Lcom/revo/evabs/BadComm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    new-instance v1, Lcom/revo/evabs/BadComm$1;

    invoke-direct {v1, p0, p1}, Lcom/revo/evabs/BadComm$1;-><init>(Lcom/revo/evabs/BadComm;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0026

    .line 47
    invoke-virtual {p0, p1}, Lcom/revo/evabs/BadComm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 48
    new-instance v0, Lcom/revo/evabs/BadComm$2;

    invoke-direct {v0, p0}, Lcom/revo/evabs/BadComm$2;-><init>(Lcom/revo/evabs/BadComm;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public sendCreds()V
    .locals 4

    .line 60
    new-instance v0, Lcom/revo/evabs/BadComm$AsyncLogin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/revo/evabs/BadComm$AsyncLogin;-><init>(Lcom/revo/evabs/BadComm;Lcom/revo/evabs/BadComm$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/revo/evabs/BadComm;->GETIT:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/revo/evabs/BadComm$AsyncLogin;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
