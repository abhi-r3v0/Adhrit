.class public final Lo/onActivitySaveInstanceState$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onActivitySaveInstanceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;",
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
        "com/dreamplug/fabrik/ui/contacts/festives/FestiveGreetingsViewModel$generateReferralLink$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;",
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
.field private synthetic onMessageChannelReady:Lo/onActivitySaveInstanceState;

.field private synthetic onNavigationEvent:Lo/LifecycleController$observer$1$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/onActivitySaveInstanceState;Lo/LifecycleController$observer$1$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LifecycleController$observer$1$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lo/onActivitySaveInstanceState$onPostMessage;->onMessageChannelReady:Lo/onActivitySaveInstanceState;

    iput-object p2, p0, Lo/onActivitySaveInstanceState$onPostMessage;->onNavigationEvent:Lo/LifecycleController$observer$1$ICustomTabsCallback;

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
            "Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 71
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lo/onActivitySaveInstanceState$onPostMessage;->onMessageChannelReady:Lo/onActivitySaveInstanceState;

    iget-object v1, p0, Lo/onActivitySaveInstanceState$onPostMessage;->onNavigationEvent:Lo/LifecycleController$observer$1$ICustomTabsCallback;

    .line 1190
    iget-object v1, v1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    .line 2077
    iget-object v1, v1, Lo/onActivityDestroyed;->onPostMessage:Ljava/lang/String;

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 72
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;

    .line 3046
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->ICustomTabsCallback:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lo/onActivitySaveInstanceState$onPostMessage;->onNavigationEvent:Lo/LifecycleController$observer$1$ICustomTabsCallback;

    .line 3190
    iget-object v2, v2, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    .line 4079
    iget-object v2, v2, Lo/onActivityDestroyed;->onMessageChannelReady:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1, p1, v2}, Lo/onActivitySaveInstanceState;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lo/onActivitySaveInstanceState$onPostMessage;->onMessageChannelReady:Lo/onActivitySaveInstanceState;

    invoke-static {v0}, Lo/onActivitySaveInstanceState;->onNavigationEvent(Lo/onActivitySaveInstanceState;)Lo/setActive;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 5043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "status"

    const-string v5, "failure"

    invoke-direct {v3, v4, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 80
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 6014
    iget-object v3, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 7014
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 80
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    .line 7043
    new-instance v4, Lo/addWrite;

    const-string v5, "reason"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    .line 81
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string v5, "is_resend"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const-string v2, "pairs"

    .line 78
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "greeting_send_result"

    .line 78
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 83
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 9014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 10014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 83
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_2
    return-void
.end method
