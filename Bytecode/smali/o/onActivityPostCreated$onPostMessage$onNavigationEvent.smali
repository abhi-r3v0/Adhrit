.class public final Lo/onActivityPostCreated$onPostMessage$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPostCreated$onPostMessage;->onNavigationEvent(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactSyncResponse;",
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
        "com/dreamplug/fabrik/ui/contacts/manager/ContactBookManager$syncDelta$1$onReady$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactSyncResponse;",
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
.field private synthetic extraCallback:Lo/onActivityPostCreated$onPostMessage;

.field private synthetic onNavigationEvent:I


# direct methods
.method constructor <init>(ILo/onActivityPostCreated$onPostMessage;)V
    .locals 0

    iput p1, p0, Lo/onActivityPostCreated$onPostMessage$onNavigationEvent;->onNavigationEvent:I

    iput-object p2, p0, Lo/onActivityPostCreated$onPostMessage$onNavigationEvent;->extraCallback:Lo/onActivityPostCreated$onPostMessage;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/contacts/helper/ContactSyncResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const-string v1, "contact_invite"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sync ready api response"

    .line 45
    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 46
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/helper/ContactSyncResponse;

    if-eqz p1, :cond_1

    .line 1026
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/contacts/helper/ContactSyncResponse;->onPostMessage:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 48
    sget-object v0, Lo/setSubUiVisibilityListener;->extraCallback:Lo/setSubUiVisibilityListener$ICustomTabsCallback;

    .line 1029
    iget-object v0, v0, Lo/subUiVisibilityChanged;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 48
    check-cast v0, Lo/setSubUiVisibilityListener;

    invoke-static {p1}, Lo/extraCallback$ICustomTabsCallback;->onMessageChannelReady(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v2, "entities"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    sget-object v2, Lo/onPerformDefaultAction;->extraCallback:Lo/onPerformDefaultAction;

    new-instance v3, Lo/setSubUiVisibilityListener$onPostMessage;

    invoke-direct {v3, v0, p1}, Lo/setSubUiVisibilityListener$onPostMessage;-><init>(Lo/setSubUiVisibilityListener;Ljava/util/ArrayList;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1034
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "class not initialized"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 57
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "batch sync complete "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lo/onActivityPostCreated$onPostMessage$onNavigationEvent;->onNavigationEvent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lo/onActivityPostCreated$onPostMessage$onNavigationEvent;->extraCallback:Lo/onActivityPostCreated$onPostMessage;

    iget-object p1, p1, Lo/onActivityPostCreated$onPostMessage;->ICustomTabsCallback:Lo/ReflectiveGenericLifecycleObserver;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lo/ReflectiveGenericLifecycleObserver;->extraCallback()V

    :cond_2
    return-void
.end method
