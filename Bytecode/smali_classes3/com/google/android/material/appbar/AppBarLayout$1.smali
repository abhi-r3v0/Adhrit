.class final Lcom/google/android/material/appbar/AppBarLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ArrayCreatingInputMerger$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$1;->ICustomTabsCallback:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;
    .locals 3

    .line 267
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$1;->ICustomTabsCallback:Lcom/google/android/material/appbar/AppBarLayout;

    .line 1985
    invoke-static {p1}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1991
    :goto_0
    iget-object v1, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-static {v1, v0}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1992
    iput-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    .line 2489
    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->asBinder:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2967
    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/material/appbar/AppBarLayout;->ICustomTabsCallback:Lo/getVolumeAttributes;

    invoke-virtual {v0}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    xor-int/lit8 v0, v2, 0x1

    .line 2485
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1994
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-object p2
.end method
