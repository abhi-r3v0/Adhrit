.class public final Lo/setOnItemClickListener$ICustomTabsCallback;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setOnItemClickListener;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        ">;",
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
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0004\u0012\u00020\u00050\u00020\u0001J2\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2 \u0010\n\u001a\u001c\u0012\u0018\u0008\u0000\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0004\u0012\u00020\u00050\u00020\u000bH\u0016J*\u0010\u000c\u001a\u00020\u00072 \u0010\n\u001a\u001c\u0012\u0018\u0008\u0000\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0004\u0012\u00020\u00050\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/cred/pay/repository/BankInfoType$upiBankListMutableLiveDataWithErrorSupport$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
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

    .line 20
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
            "Ljava/util/List<",
            "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
            ">;",
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

    .line 22
    :goto_0
    instance-of v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {p0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 25
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
            "Ljava/util/List<",
            "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
            ">;",
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

    .line 29
    :goto_0
    instance-of v0, v0, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 32
    :cond_1
    invoke-super {p0, p1}, Lo/setActive;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    return-void
.end method
