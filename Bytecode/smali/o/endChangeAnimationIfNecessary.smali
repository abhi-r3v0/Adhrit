.class public interface abstract Lo/endChangeAnimationIfNecessary;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/endChangeAnimationIfNecessary$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestSlideViewPagerListener;",
        "",
        "nextTapped",
        "",
        "pageChanged",
        "index",
        "",
        "pageFinished",
        "isUserTriggered",
        "",
        "paused",
        "previousTapped",
        "resume",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(I)V
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onNavigationEvent(I)V
.end method

.method public abstract onNavigationEvent(Z)V
.end method

.method public abstract onPostMessage()V
.end method

.method public abstract onPostMessage(I)V
.end method
