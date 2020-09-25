.class public final Lo/ShareActionProvider$OnShareTargetSelectedListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ShareActionProvider$OnShareTargetSelectedListener;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        ">;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u00060\u0003R\u00020\u00040\u0002\u0012\u0004\u0012\u00020\u00050\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u000b\u001a\u00020\u00072\u0010\u0010\u000c\u001a\u000c\u0012\u0008\u0012\u00060\u0003R\u00020\u00040\u0002H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/dreamplug/androidapp/BankInfo$getAllBankList$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    const-string/jumbo p2, "t"

    .line 102
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 3

    .line 102
    check-cast p1, Ljava/util/List;

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {p1}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent(Ljava/util/List;)V

    .line 1109
    check-cast p1, Ljava/lang/Iterable;

    .line 1135
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    .line 1110
    sget-object v1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->ICustomTabsCallback()Ljava/util/HashMap;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, v0, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->code:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1112
    :cond_1
    sget-object p1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    .line 2000
    sget-object p1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 1112
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->ICustomTabsCallback()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
