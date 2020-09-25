.class public interface abstract Lo/removeCallbacks$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/adapter/control/SlidingNBACard$InteractionListener;",
        "",
        "onCtaClick",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "onDismissRequested",
        "onSnoozeRequested",
        "onSwipeEnd",
        "direction",
        "",
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
.method public abstract ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
.end method

.method public abstract onMessageChannelReady(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
.end method

.method public abstract onNavigationEvent(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
.end method
