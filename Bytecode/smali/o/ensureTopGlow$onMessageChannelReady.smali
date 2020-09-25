.class public final Lo/ensureTopGlow$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PlaybackStateCompat$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureTopGlow;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/referal/FabrikReferralIntroDialogFragment$onViewCreated$1",
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
.field private synthetic onNavigationEvent:Lo/ensureTopGlow;


# direct methods
.method constructor <init>(Lo/ensureTopGlow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    add-int/lit8 v2, p1, 0x1

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "screen_name"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 91
    iget-object v3, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-static {v3}, Lo/ensureTopGlow;->onPostMessage(Lo/ensureTopGlow;)Ljava/lang/String;

    move-result-object v3

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v1, v3

    const-string v4, "pairs"

    .line 91
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "booster_coins_intro_load"

    .line 91
    invoke-static {v1, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    const-string v1, "pagerAdapter"

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    .line 5029
    iget-object p1, p1, Lo/ensureTopGlow;->onPostMessage:Lo/ensureBottomGlow;

    if-nez p1, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p1, v0}, Lo/ensureBottomGlow;->onMessageChannelReady(I)V

    :goto_0
    return-void

    .line 97
    :cond_2
    iget-object p1, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    .line 4029
    iget-object p1, p1, Lo/ensureTopGlow;->onPostMessage:Lo/ensureBottomGlow;

    if-nez p1, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 97
    :cond_3
    invoke-virtual {p1, v3}, Lo/ensureBottomGlow;->onMessageChannelReady(I)V

    return-void

    .line 94
    :cond_4
    iget-object p1, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    .line 3029
    iget-object p1, p1, Lo/ensureTopGlow;->onPostMessage:Lo/ensureBottomGlow;

    if-nez p1, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 94
    :cond_5
    invoke-virtual {p1, v2}, Lo/ensureBottomGlow;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 4

    .line 83
    iget-object v0, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-static {v0}, Lo/ensureTopGlow;->ICustomTabsCallback(Lo/ensureTopGlow;)Lo/PlaybackStateCompat;

    move-result-object v0

    add-int/lit8 v1, p1, -0x2

    invoke-static {v0, v1}, Lo/extraCallback$ICustomTabsCallback;->onNavigationEvent(Lo/PlaybackStateCompat;I)Landroid/view/View;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 84
    :cond_0
    iget-object v0, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-static {v0}, Lo/ensureTopGlow;->ICustomTabsCallback(Lo/ensureTopGlow;)Lo/PlaybackStateCompat;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v0, v2}, Lo/extraCallback$ICustomTabsCallback;->onNavigationEvent(Lo/PlaybackStateCompat;I)Landroid/view/View;

    move-result-object v0

    const v2, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_1

    mul-float v3, p2, v2

    add-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 85
    :cond_1
    iget-object v0, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-static {v0}, Lo/ensureTopGlow;->ICustomTabsCallback(Lo/ensureTopGlow;)Lo/PlaybackStateCompat;

    move-result-object v0

    invoke-static {v0, p1}, Lo/extraCallback$ICustomTabsCallback;->onNavigationEvent(Lo/PlaybackStateCompat;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 86
    :cond_2
    iget-object v0, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-static {v0}, Lo/ensureTopGlow;->ICustomTabsCallback(Lo/ensureTopGlow;)Lo/PlaybackStateCompat;

    move-result-object v0

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3}, Lo/extraCallback$ICustomTabsCallback;->onNavigationEvent(Lo/PlaybackStateCompat;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    mul-float p2, p2, v2

    add-float/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 87
    :cond_3
    iget-object p2, p0, Lo/ensureTopGlow$onMessageChannelReady;->onNavigationEvent:Lo/ensureTopGlow;

    invoke-static {p2}, Lo/ensureTopGlow;->ICustomTabsCallback(Lo/ensureTopGlow;)Lo/PlaybackStateCompat;

    move-result-object p2

    add-int/lit8 p1, p1, 0x2

    invoke-static {p2, p1}, Lo/extraCallback$ICustomTabsCallback;->onNavigationEvent(Lo/PlaybackStateCompat;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method
