.class public abstract Lo/containsKey$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/containsKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Landroid/graphics/Typeface;)V
.end method

.method public final onMessageChannelReady(ILandroid/os/Handler;)V
    .locals 1

    if-nez p2, :cond_0

    .line 298
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 300
    :cond_0
    new-instance v0, Lo/containsKey$ICustomTabsCallback$4;

    invoke-direct {v0, p0, p1}, Lo/containsKey$ICustomTabsCallback$4;-><init>(Lo/containsKey$ICustomTabsCallback;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .locals 1

    if-nez p2, :cond_0

    .line 279
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    :cond_0
    new-instance v0, Lo/containsKey$ICustomTabsCallback$1;

    invoke-direct {v0, p0, p1}, Lo/containsKey$ICustomTabsCallback$1;-><init>(Lo/containsKey$ICustomTabsCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract onNavigationEvent(I)V
.end method
