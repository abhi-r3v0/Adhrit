.class final Lo/onTargetFound$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onTargetFound;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/createAbtInstance;

.field private synthetic onMessageChannelReady:Lo/onTargetFound;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;


# direct methods
.method constructor <init>(Lo/onTargetFound;Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;Lo/createAbtInstance;)V
    .locals 0

    iput-object p1, p0, Lo/onTargetFound$warmup;->onMessageChannelReady:Lo/onTargetFound;

    iput-object p2, p0, Lo/onTargetFound$warmup;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    iput-object p3, p0, Lo/onTargetFound$warmup;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 160
    iget-object p1, p0, Lo/onTargetFound$warmup;->onMessageChannelReady:Lo/onTargetFound;

    invoke-static {p1}, Lo/onTargetFound;->onPostMessage(Lo/onTargetFound;)Lo/LinearSmoothScroller;

    move-result-object p1

    iget-object v0, p0, Lo/onTargetFound$warmup;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    const-string v1, "data"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "compass_liked_rewards_dismiss"

    .line 1129
    invoke-static {v1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1130
    iget-object v1, p1, Lo/LinearSmoothScroller;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 1131
    invoke-static {p1}, Lo/LinearSmoothScroller;->onNavigationEvent(Lo/LinearSmoothScroller;)V

    .line 1132
    sget-object p1, Lo/getHorizontalSnapPreference;->ICustomTabsCallback:Lo/getHorizontalSnapPreference;

    .line 2000
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeItemDecoration;

    .line 2396
    iget-object v0, v0, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    .line 1132
    invoke-virtual {p1, v0}, Lo/getHorizontalSnapPreference;->extraCallback(Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lo/onTargetFound$warmup;->ICustomTabsCallback:Lo/createAbtInstance;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
