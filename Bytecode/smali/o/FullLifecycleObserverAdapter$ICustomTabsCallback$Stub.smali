.class public final Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PlaybackStateCompat$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FullLifecycleObserverAdapter;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/festives/GreetingCarousalFragment$onViewCreated$1$1",
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
.field private synthetic extraCallback:Lo/FullLifecycleObserverAdapter;


# direct methods
.method constructor <init>(Lo/FullLifecycleObserverAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v3, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    invoke-static {v3}, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback(Lo/FullLifecycleObserverAdapter;)Lo/onActivityPostStarted;

    move-result-object v3

    .line 8054
    invoke-virtual {v3, v1}, Lo/onActivityPostStarted;->onPostMessage(I)V

    .line 8055
    invoke-virtual {v3, v2}, Lo/onActivityPostStarted;->onMessageChannelReady(I)V

    const/4 v2, 0x3

    .line 8056
    invoke-virtual {v3, v2}, Lo/onActivityPostStarted;->onPostMessage(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    invoke-static {v3}, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback(Lo/FullLifecycleObserverAdapter;)Lo/onActivityPostStarted;

    move-result-object v3

    .line 7054
    invoke-virtual {v3, v0}, Lo/onActivityPostStarted;->onPostMessage(I)V

    .line 7055
    invoke-virtual {v3, v1}, Lo/onActivityPostStarted;->onMessageChannelReady(I)V

    .line 7056
    invoke-virtual {v3, v2}, Lo/onActivityPostStarted;->onPostMessage(I)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    invoke-static {v2}, Lo/FullLifecycleObserverAdapter;->ICustomTabsCallback(Lo/FullLifecycleObserverAdapter;)Lo/onActivityPostStarted;

    move-result-object v2

    const/4 v3, -0x1

    .line 6054
    invoke-virtual {v2, v3}, Lo/onActivityPostStarted;->onPostMessage(I)V

    .line 6055
    invoke-virtual {v2, v0}, Lo/onActivityPostStarted;->onMessageChannelReady(I)V

    .line 6056
    invoke-virtual {v2, v1}, Lo/onActivityPostStarted;->onPostMessage(I)V

    :goto_0
    new-array v2, v1, [Lo/addWrite;

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 9043
    new-instance v3, Lo/addWrite;

    const-string v4, "position"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const-string p1, "pairs"

    .line 83
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "greeting_carousel_card_land"

    .line 83
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 7

    .line 63
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {v0, v1}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getUseCompatPadding;

    const-string v1, "creativeList"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/PlaybackStateCompat;

    add-int/lit8 v2, p1, -0x2

    .line 1160
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v3, v2, :cond_1

    .line 1161
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v4

    :goto_1
    const v2, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 64
    :cond_2
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {v0, v3}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getUseCompatPadding;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/PlaybackStateCompat;

    add-int/lit8 v3, p1, -0x1

    .line 2160
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-gez v3, :cond_3

    goto :goto_2

    :cond_3
    if-le v5, v3, :cond_4

    .line 2161
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_2
    move-object v0, v4

    :goto_3
    const v3, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_5

    mul-float v5, p2, v3

    add-float/2addr v5, v2

    .line 64
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 65
    :cond_5
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {v0, v5}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getUseCompatPadding;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/PlaybackStateCompat;

    .line 3160
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-gez p1, :cond_6

    goto :goto_4

    :cond_6
    if-le v5, p1, :cond_7

    .line 3161
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, v4

    :goto_5
    if-eqz v0, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    mul-float v5, v5, v3

    add-float/2addr v5, v2

    .line 65
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 66
    :cond_8
    iget-object v0, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {v0, v5}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/getUseCompatPadding;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/PlaybackStateCompat;

    add-int/lit8 v5, p1, 0x1

    .line 4160
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-gez v5, :cond_9

    goto :goto_6

    :cond_9
    if-le v6, v5, :cond_a

    .line 4161
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    :cond_a
    :goto_6
    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_b

    mul-float p2, p2, v3

    add-float/2addr p2, v2

    .line 66
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 67
    :cond_b
    iget-object p2, p0, Lo/FullLifecycleObserverAdapter$ICustomTabsCallback$Stub;->extraCallback:Lo/FullLifecycleObserverAdapter;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->creativeList:I

    invoke-virtual {p2, v0}, Lo/FullLifecycleObserverAdapter;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/getUseCompatPadding;

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lo/PlaybackStateCompat;

    add-int/lit8 p1, p1, 0x2

    .line 5160
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gez p1, :cond_c

    goto :goto_8

    :cond_c
    if-le v0, p1, :cond_d

    .line 5161
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :cond_d
    :goto_8
    if-eqz v4, :cond_e

    .line 67
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_e
    return-void
.end method
