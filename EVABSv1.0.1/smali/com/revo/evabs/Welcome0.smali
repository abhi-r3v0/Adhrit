.class public Lcom/revo/evabs/Welcome0;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Welcome0.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002b

    .line 16
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Welcome0;->setContentView(I)V

    const p1, 0x7f0a0126

    .line 18
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Welcome0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "Welcome, \n\n\n Humanity is in it\'s persuit of a new planet for Earthlings. \nThe SpaceBit ship, with a skilled hacker/scientist on board, has been sent to find a planet near the Cygnus X1 system. \nUntil yesterday, everything was under control. \nBut, few hours before, the ship lost all sorts of communication lines.\nScientists then found a strange space-time warp, which they doubt would be the reason for the crash. \n\nHowever, we have a log of a message from the ship, which was the last transmission, before the communication broke. Have a look! "

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0041

    .line 21
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Welcome0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 22
    new-instance v0, Lcom/revo/evabs/Welcome0$1;

    invoke-direct {v0, p0}, Lcom/revo/evabs/Welcome0$1;-><init>(Lcom/revo/evabs/Welcome0;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
