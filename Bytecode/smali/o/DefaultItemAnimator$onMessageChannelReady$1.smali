.class final Lo/DefaultItemAnimator$onMessageChannelReady$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator$onMessageChannelReady;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic onPostMessage:Lo/DefaultItemAnimator$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator$onMessageChannelReady;I)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$onMessageChannelReady$1;->onPostMessage:Lo/DefaultItemAnimator$onMessageChannelReady;

    iput p2, p0, Lo/DefaultItemAnimator$onMessageChannelReady$1;->ICustomTabsCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 107
    iget-object v0, p0, Lo/DefaultItemAnimator$onMessageChannelReady$1;->onPostMessage:Lo/DefaultItemAnimator$onMessageChannelReady;

    iget-object v0, v0, Lo/DefaultItemAnimator$onMessageChannelReady;->onNavigationEvent:Lo/DefaultItemAnimator;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cashbackCard:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateRemoveImpl;

    const-string v1, "cashbackCard"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lo/DefaultItemAnimator$onMessageChannelReady$1;->onPostMessage:Lo/DefaultItemAnimator$onMessageChannelReady;

    iget-object v2, v2, Lo/DefaultItemAnimator$onMessageChannelReady;->onNavigationEvent:Lo/DefaultItemAnimator;

    invoke-static {v2}, Lo/DefaultItemAnimator;->extraCallback(Lo/DefaultItemAnimator;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1753
    iget-boolean v3, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onPostMessage:Z

    if-eqz v3, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onNavigationEvent:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 108
    :goto_0
    iget v3, p0, Lo/DefaultItemAnimator$onMessageChannelReady$1;->ICustomTabsCallback:I

    sub-int/2addr v2, v3

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/high16 v5, 0x41a00000    # 20.0f

    .line 2010
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 109
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v2, v3, :cond_2

    .line 110
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    :cond_2
    iget-object v2, p0, Lo/DefaultItemAnimator$onMessageChannelReady$1;->onPostMessage:Lo/DefaultItemAnimator$onMessageChannelReady;

    iget-object v2, v2, Lo/DefaultItemAnimator$onMessageChannelReady;->onNavigationEvent:Lo/DefaultItemAnimator;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->cashbackCard:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/animateRemoveImpl;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
