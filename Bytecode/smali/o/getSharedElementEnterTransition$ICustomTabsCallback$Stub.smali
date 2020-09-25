.class public final Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSharedElementEnterTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/autodebit/AutoDebitViewModel$getEligibleInstruments$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
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
.field private synthetic onMessageChannelReady:Lo/getSharedElementEnterTransition;


# direct methods
.method constructor <init>(Lo/getSharedElementEnterTransition;)V
    .locals 0

    iput-object p1, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 215
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 215
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    .line 217
    iget-object v0, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 2000
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->extraCommand:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    if-eqz p1, :cond_0

    .line 2010
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3010
    :goto_0
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 4000
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->extraCommand:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    if-eqz p1, :cond_1

    .line 4012
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 5012
    :goto_1
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 219
    iget-object v0, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 6000
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->extraCommand:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    if-eqz p1, :cond_2

    .line 6014
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onPostMessage:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 7014
    :goto_2
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onPostMessage:Ljava/lang/Boolean;

    .line 220
    iget-object v0, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 8000
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->extraCommand:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    if-eqz p1, :cond_3

    .line 8016
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 9016
    :goto_3
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    .line 221
    iget-object v0, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 10000
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->extraCommand:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    if-eqz p1, :cond_4

    .line 10017
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    .line 11017
    :cond_4
    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    .line 222
    iget-object v0, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    invoke-static {v0}, Lo/getSharedElementEnterTransition;->asBinder(Lo/getSharedElementEnterTransition;)Lo/setActive;

    move-result-object v0

    iget-object v1, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    .line 12000
    iget-object v1, v1, Lo/getSharedElementEnterTransition;->extraCommand:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    .line 222
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    if-nez p1, :cond_7

    .line 225
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object p1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 12122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object p1

    if-nez p1, :cond_5

    const-string v0, "context"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    const v0, 0x7f130412

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "DreamApplication.context\u2026ing.something_went_wrong)"

    invoke-static {v3, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 227
    :cond_6
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v1, :cond_7

    .line 228
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 14014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 13010
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    .line 228
    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 229
    iget-object p1, p0, Lo/getSharedElementEnterTransition$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getSharedElementEnterTransition;

    invoke-static {p1}, Lo/getSharedElementEnterTransition;->asBinder(Lo/getSharedElementEnterTransition;)Lo/setActive;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
