.class public final Lo/animateChangeImpl$onPostMessage;
.super Lo/PlaybackStateCompat$ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateChangeImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/digest/DigestSlideViewPager$onPageChangeListener$1",
        "Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageSelected",
        "position",
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
.field private synthetic ICustomTabsCallback:Lo/animateChangeImpl;


# direct methods
.method constructor <init>(Lo/animateChangeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lo/animateChangeImpl$onPostMessage;->ICustomTabsCallback:Lo/animateChangeImpl;

    invoke-direct {p0}, Lo/PlaybackStateCompat$ICustomTabsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lo/PlaybackStateCompat$ICustomTabsCallback$Stub;->extraCallback(I)V

    .line 28
    iget-object v0, p0, Lo/animateChangeImpl$onPostMessage;->ICustomTabsCallback:Lo/animateChangeImpl;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lo/animateChangeImpl;->extraCallback(Lo/animateChangeImpl;Z)V

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lo/PlaybackStateCompat$ICustomTabsCallback$Stub;->onMessageChannelReady(I)V

    .line 22
    iget-object v0, p0, Lo/animateChangeImpl$onPostMessage;->ICustomTabsCallback:Lo/animateChangeImpl;

    invoke-static {v0}, Lo/animateChangeImpl;->onPostMessage(Lo/animateChangeImpl;)V

    .line 23
    iget-object v0, p0, Lo/animateChangeImpl$onPostMessage;->ICustomTabsCallback:Lo/animateChangeImpl;

    .line 1016
    iget-object v0, v0, Lo/animateChangeImpl;->onPostMessage:Lo/endChangeAnimationIfNecessary;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1}, Lo/endChangeAnimationIfNecessary;->ICustomTabsCallback(I)V

    :cond_0
    return-void
.end method
