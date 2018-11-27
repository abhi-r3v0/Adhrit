.class public Lcom/revo/evabs/Splash;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Splash.java"


# instance fields
.field private final SPLASH_DISPLAY_LENGTH:I

.field im:Landroid/widget/ImageView;

.field slide_down_anim:Landroid/view/animation/Animation;

.field slide_up_anim:Landroid/view/animation/Animation;

.field tv:Landroid/widget/TextView;

.field tv1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/16 v0, 0x7d0

    .line 14
    iput v0, p0, Lcom/revo/evabs/Splash;->SPLASH_DISPLAY_LENGTH:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0028

    .line 25
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Splash;->setContentView(I)V

    const p1, 0x7f0a008b

    .line 27
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Splash;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/revo/evabs/Splash;->im:Landroid/widget/ImageView;

    const p1, 0x7f0a011f

    .line 28
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Splash;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/revo/evabs/Splash;->tv:Landroid/widget/TextView;

    const p1, 0x7f0a0120

    .line 29
    invoke-virtual {p0, p1}, Lcom/revo/evabs/Splash;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/revo/evabs/Splash;->tv1:Landroid/widget/TextView;

    const p1, 0x7f01000f

    .line 31
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/revo/evabs/Splash;->slide_up_anim:Landroid/view/animation/Animation;

    .line 32
    iget-object p1, p0, Lcom/revo/evabs/Splash;->im:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/revo/evabs/Splash;->slide_up_anim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const p1, 0x7f01000e

    .line 34
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/revo/evabs/Splash;->slide_down_anim:Landroid/view/animation/Animation;

    .line 35
    iget-object p1, p0, Lcom/revo/evabs/Splash;->tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/revo/evabs/Splash;->slide_down_anim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 36
    iget-object p1, p0, Lcom/revo/evabs/Splash;->tv1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/revo/evabs/Splash;->slide_down_anim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/revo/evabs/Splash$1;

    invoke-direct {v0, p0}, Lcom/revo/evabs/Splash$1;-><init>(Lcom/revo/evabs/Splash;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
