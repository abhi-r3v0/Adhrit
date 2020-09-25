.class public final Lo/getMaxAvailableHeight$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/dispatchAddStarting$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxAvailableHeight;-><init>()V
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
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016J\u0016\u0010\u000b\u001a\u00020\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/cred/pay/ui/PaymentContainerFragment$appUpiCommunication$1",
        "Lcom/dreamplug/upi/UpiFragment$IAppUpiCommunication;",
        "accountLinked",
        "",
        "payload",
        "",
        "",
        "dismiss",
        "isProcessing",
        "value",
        "",
        "onValidAccountsLoaded",
        "vpaAccounts",
        "",
        "Lcom/cred/pay/repository/models/VpaAccount;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getMaxAvailableHeight;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 761
    iput-object p1, p0, Lo/getMaxAvailableHeight$onMessageChannelReady;->extraCallback:Lo/getMaxAvailableHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/VpaAccount;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "vpaAccounts"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object p1, p0, Lo/getMaxAvailableHeight$onMessageChannelReady;->extraCallback:Lo/getMaxAvailableHeight;

    .line 1000
    iget-object p1, p1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 1050
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    .line 775
    new-instance v0, Lo/throwIfInMutationOperation;

    new-instance v1, Lo/onItemHoverExit$extraCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lo/onItemHoverExit$extraCallback;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 770
    iget-object v0, p0, Lo/getMaxAvailableHeight$onMessageChannelReady;->extraCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->extraCallback(Lo/getMaxAvailableHeight;)V

    .line 771
    iget-object v0, p0, Lo/getMaxAvailableHeight$onMessageChannelReady;->extraCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
