.class public Lo/setClientAuthToken;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private extraCallback:Lo/getRewardsClosingBalance;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Landroid/os/Bundle;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/setClientAuthToken;->onNavigationEvent:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthToken;->onNavigationEvent:Landroid/os/Bundle;

    return-object v0
.end method

.method public final ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final asBinder()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final asInterface()V
    .locals 0

    return-void
.end method

.method public final extraCallback(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/getRewardsClosingBalance;)V
    .locals 0

    iput-object p1, p0, Lo/setClientAuthToken;->extraCallback:Lo/getRewardsClosingBalance;

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    iget-boolean v0, p0, Lo/setClientAuthToken;->onMessageChannelReady:Z

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/setClientAuthToken;->onMessageChannelReady:Z

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    iget-boolean v0, p0, Lo/setClientAuthToken;->onPostMessage:Z

    return v0
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/setClientAuthToken;->onPostMessage:Z

    return-void
.end method

.method public final onRelationshipValidationResult()Lo/getRewardsClosingBalance;
    .locals 1

    iget-object v0, p0, Lo/setClientAuthToken;->extraCallback:Lo/getRewardsClosingBalance;

    return-object v0
.end method

.method public final onTransact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
