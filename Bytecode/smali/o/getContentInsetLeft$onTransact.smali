.class public final Lo/getContentInsetLeft$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetLeft;->onNavigationEvent(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/androidapp/onboarding/viewmodel/CardDetailViewModel$validateCard$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic onMessageChannelReady:Ljava/util/HashMap;

.field private synthetic onNavigationEvent:Lo/setActive;


# direct methods
.method constructor <init>(Lo/setActive;Ljava/util/HashMap;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/getContentInsetLeft$onTransact;->onNavigationEvent:Lo/setActive;

    iput-object p2, p0, Lo/getContentInsetLeft$onTransact;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 120
    check-cast p1, Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessResponse;

    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lo/getContentInsetLeft$onTransact;->onNavigationEvent:Lo/setActive;

    new-instance v1, Lo/AbstractMultiSelectListPreference;

    .line 1081
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/control/helper/InstrumentValidationSuccessResponse;->ICustomTabsCallback:Z

    .line 122
    iget-object v2, p0, Lo/getContentInsetLeft$onTransact;->onMessageChannelReady:Ljava/util/HashMap;

    const/4 v4, 0x4

    invoke-direct {v1, p1, v2, v3, v4}, Lo/AbstractMultiSelectListPreference;-><init>(ZLjava/util/HashMap;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lo/getContentInsetLeft$onTransact;->onNavigationEvent:Lo/setActive;

    new-instance v0, Lo/AbstractMultiSelectListPreference;

    const-string v4, "Something went wrong"

    invoke-direct {v0, v2, v3, v4, v1}, Lo/AbstractMultiSelectListPreference;-><init>(ZLjava/util/HashMap;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 128
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lo/getContentInsetLeft$onTransact;->onNavigationEvent:Lo/setActive;

    new-instance v4, Lo/AbstractMultiSelectListPreference;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 2014
    iget-object v5, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 3014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 129
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v5, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v2, v3, p1, v1}, Lo/AbstractMultiSelectListPreference;-><init>(ZLjava/util/HashMap;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
