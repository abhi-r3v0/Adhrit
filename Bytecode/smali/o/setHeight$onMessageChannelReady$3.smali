.class public final Lo/setHeight$onMessageChannelReady$3;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHeight$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001J,\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u001a\u0010\t\u001a\u0016\u0012\u0012\u0008\u0000\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\nH\u0016J$\u0010\u000b\u001a\u00020\u00062\u001a\u0010\t\u001a\u0016\u0012\u0012\u0008\u0000\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/cred/pay/repository/BankInfo$upiConfigMutableLiveData$2$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "observe",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "observeForever",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toLegacyStreamType;",
            "Lo/setPlaybackToRemote<",
            "-",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/JuspaySessionToken;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 32
    :goto_0
    instance-of v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 34
    sget-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    invoke-static {v0}, Lo/setHeight;->extraCallback(Lo/setHeight;)V

    .line 36
    :cond_1
    invoke-super {p0, p1, p2}, Lo/setActive;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/setPlaybackToRemote;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPlaybackToRemote<",
            "-",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/cred/pay/repository/models/JuspaySessionToken;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 40
    :goto_0
    instance-of v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    invoke-static {v0}, Lo/setHeight;->extraCallback(Lo/setHeight;)V

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lo/setActive;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    return-void
.end method
