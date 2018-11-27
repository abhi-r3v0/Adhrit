.class public Lcom/revo/evabs/Frida1;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Frida1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:I

.field b:I

.field x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x19

    .line 14
    iput v0, p0, Lcom/revo/evabs/Frida1;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/revo/evabs/Frida1;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const p1, 0x7f0a00bc

    .line 35
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0a0139

    .line 36
    invoke-virtual {p0, v0}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a013b

    .line 37
    invoke-virtual {p0, v1}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0142

    .line 38
    invoke-virtual {p0, v2}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 40
    iget v3, p0, Lcom/revo/evabs/Frida1;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget v0, p0, Lcom/revo/evabs/Frida1;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget v0, p0, Lcom/revo/evabs/Frida1;->a:I

    iget v1, p0, Lcom/revo/evabs/Frida1;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/revo/evabs/Frida1;->x:I

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x46

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x96

    .line 47
    iget v1, p0, Lcom/revo/evabs/Frida1;->x:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget v1, p0, Lcom/revo/evabs/Frida1;->x:I

    if-le v1, v0, :cond_0

    const-string v0, "VIBRAN IS RESDY TO FLY! YOU ARE GOING HOME!"

    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "Co-ordinates Not Found!"

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0024

    .line 18
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Frida1;->setContentView(I)V

    const p1, 0x7f0a0066

    .line 19
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0032

    .line 22
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a0118

    .line 23
    invoke-virtual {p0, v0}, Lcom/revo/evabs/Frida1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    new-instance v1, Lcom/revo/evabs/Frida1$1;

    invoke-direct {v1, p0, v0}, Lcom/revo/evabs/Frida1$1;-><init>(Lcom/revo/evabs/Frida1;Landroid/widget/TextView;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
