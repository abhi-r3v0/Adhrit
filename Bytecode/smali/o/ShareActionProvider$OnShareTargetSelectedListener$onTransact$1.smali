.class public final Lo/ShareActionProvider$OnShareTargetSelectedListener$onTransact$1;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ShareActionProvider$OnShareTargetSelectedListener$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/androidapp/BankInfo$upiBankListMutableLiveData$2$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        "onActive",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 4

    .line 39
    invoke-super {p0}, Lo/setActive;->onPostMessage()V

    .line 1320
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    const-string v0, "UPI"

    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    sget-object v1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    const-class v1, Lo/getContentInsetStartWithNavigation;

    invoke-static {v1}, Lo/factorInBindTime;->onPostMessage(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getContentInsetStartWithNavigation;

    invoke-interface {v1, v0}, Lo/getContentInsetStartWithNavigation;->onMessageChannelReady(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    .line 2050
    new-instance v1, Lo/ShareActionProvider$OnShareTargetSelectedListener$extraCallback;

    invoke-direct {v1}, Lo/ShareActionProvider$OnShareTargetSelectedListener$extraCallback;-><init>()V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string v2, "UPIBankList"

    const-string/jumbo v3, "tag"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5044
    iget-object v0, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v2, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v2, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 2067
    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onMessageChannelReady()Landroidx/lifecycle/LiveData;

    :cond_1
    return-void
.end method
