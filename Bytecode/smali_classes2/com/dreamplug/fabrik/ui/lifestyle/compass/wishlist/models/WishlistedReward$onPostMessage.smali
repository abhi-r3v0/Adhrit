.class final Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/BackGround;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/removeItemDecoration;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RewardIdentifier;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1041
    new-instance v0, Lo/removeItemDecoration;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    .line 2022
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->onPostMessage:Ljava/lang/String;

    .line 1041
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward$onPostMessage;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;

    .line 2024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/models/WishlistedReward;->onMessageChannelReady:Ljava/lang/String;

    .line 1041
    invoke-direct {v0, v1, v2}, Lo/removeItemDecoration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
