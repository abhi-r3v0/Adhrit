.class public final Lo/setStateAfterAnimating$onNavigationEvent;
.super Lo/Fragment$2;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStateAfterAnimating;
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/cm/credprotect/CredProtectOptInViewModel$fetchResponse$1",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/CredProtectResponseCallback;",
        "onFailure",
        "",
        "fallbackResponse",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;",
        "onSuccess",
        "response",
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;",
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
.field final synthetic extraCallback:Lo/setStateAfterAnimating;


# direct methods
.method constructor <init>(Lo/setStateAfterAnimating;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lo/setStateAfterAnimating$onNavigationEvent;->extraCallback:Lo/setStateAfterAnimating;

    invoke-direct {p0}, Lo/Fragment$2;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;)V
    .locals 3

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lo/setStateAfterAnimating$onNavigationEvent;->extraCallback:Lo/setStateAfterAnimating;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Lo/setQueue;)Lo/isFromUser;

    move-result-object v0

    new-instance v1, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lo/setStateAfterAnimating$onNavigationEvent$onNavigationEvent;-><init>(Lo/setStateAfterAnimating$onNavigationEvent;Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards;Lo/setSessionPersistenceKey;)V

    check-cast v1, Lo/nextTransactionOrder;

    const/4 p1, 0x3

    .line 1001
    invoke-static {v0, v2, v2, v1, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method

.method public final onPostMessage(Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;)V
    .locals 3

    const-string v0, "fallbackResponse"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lo/setStateAfterAnimating$onNavigationEvent;->extraCallback:Lo/setStateAfterAnimating;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Lo/setQueue;)Lo/isFromUser;

    move-result-object v0

    new-instance v1, Lo/setStateAfterAnimating$onNavigationEvent$onMessageChannelReady;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lo/setStateAfterAnimating$onNavigationEvent$onMessageChannelReady;-><init>(Lo/setStateAfterAnimating$onNavigationEvent;Lcom/dreamplug/fabrik/ui/cm/credprotect/model/CredProtectResponse$Cards$Properties$Config;Lo/setSessionPersistenceKey;)V

    check-cast v1, Lo/nextTransactionOrder;

    const/4 p1, 0x3

    .line 2001
    invoke-static {v0, v2, v2, v1, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(Lo/isFromUser;Lo/isZombied;Lo/getQueryParams;Lo/nextTransactionOrder;I)Lo/assertValidTrackedQuery;

    return-void
.end method
