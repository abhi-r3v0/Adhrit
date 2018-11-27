.class public Lcom/revo/evabs/FileRead;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FileRead.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 18
    invoke-virtual {p0, p1}, Lcom/revo/evabs/FileRead;->setContentView(I)V

    const p1, 0x7f0a002e

    .line 20
    invoke-virtual {p0, p1}, Lcom/revo/evabs/FileRead;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a0112

    .line 21
    invoke-virtual {p0, v0}, Lcom/revo/evabs/FileRead;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0}, Lcom/revo/evabs/FileRead;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/revo/evabs/FileRead$1;

    invoke-direct {v2, p0, v0}, Lcom/revo/evabs/FileRead$1;-><init>(Lcom/revo/evabs/FileRead;Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    const-string p1, "secrets"

    .line 33
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 35
    new-array v0, v0, [B

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 37
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 38
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
