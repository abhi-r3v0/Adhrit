.class public final Lo/computeScrollRange$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PlaybackStateCompat$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/MachinePullDownFragment$onViewCreated$6",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/computeScrollRange;


# direct methods
.method constructor <init>(Lo/computeScrollRange;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lo/computeScrollRange$getInterfaceDescriptor;->onMessageChannelReady:Lo/computeScrollRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 4

    .line 263
    iget-object v0, p0, Lo/computeScrollRange$getInterfaceDescriptor;->onMessageChannelReady:Lo/computeScrollRange;

    invoke-static {v0, p1}, Lo/computeScrollRange;->ICustomTabsCallback(Lo/computeScrollRange;I)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 264
    iget-object v1, p0, Lo/computeScrollRange$getInterfaceDescriptor;->onMessageChannelReady:Lo/computeScrollRange;

    invoke-static {v1}, Lo/computeScrollRange;->onNavigationEvent(Lo/computeScrollRange;)Lo/updateLayoutState;

    move-result-object v1

    .line 1080
    iget-object v1, v1, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-eqz v1, :cond_0

    .line 2000
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/removeItemDecoration;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2043
    :goto_0
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "reward_ID"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 264
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "reward_mystery_reward_screen_swipe"

    .line 264
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 0

    return-void
.end method
