.class public final Lo/onTargetFound$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onTargetFound;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/compass/wishlist/RewardWishlistFragment$clickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onNavigationEvent:Lo/onTargetFound;


# direct methods
.method constructor <init>(Lo/onTargetFound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lo/onTargetFound$ICustomTabsCallback;->onNavigationEvent:Lo/onTargetFound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 0

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item_click"

    .line 131
    invoke-static {p3, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    if-eqz p1, :cond_2

    .line 132
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    .line 1038
    iget-object p1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->onTransact:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/State;

    if-eqz p1, :cond_0

    .line 1051
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/State;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p3, "active"

    .line 132
    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 133
    iget-object p1, p0, Lo/onTargetFound$ICustomTabsCallback;->onNavigationEvent:Lo/onTargetFound;

    invoke-static {p1, p2}, Lo/onTargetFound;->onPostMessage(Lo/onTargetFound;Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;)V

    return-void

    .line 135
    :cond_1
    iget-object p1, p0, Lo/onTargetFound$ICustomTabsCallback;->onNavigationEvent:Lo/onTargetFound;

    invoke-static {p1, p2}, Lo/onTargetFound;->extraCallback(Lo/onTargetFound;Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;)V

    :cond_2
    return-void
.end method
