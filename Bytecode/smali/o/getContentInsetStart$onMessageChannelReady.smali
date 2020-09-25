.class final Lo/getContentInsetStart$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/dreamplug/androidapp/profile/WhatsappConsentState;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;",
        "Lo/addWrites;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/androidapp/profile/WhatsappConsentState;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getContentInsetStart;


# direct methods
.method constructor <init>(Lo/getContentInsetStart;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$onMessageChannelReady;->onNavigationEvent:Lo/getContentInsetStart;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 67
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1260
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 1261
    iget-object v0, p0, Lo/getContentInsetStart$onMessageChannelReady;->onNavigationEvent:Lo/getContentInsetStart;

    .line 2084
    iget-object v0, v0, Lo/getContentInsetStart;->asInterface:Lo/setActive;

    .line 1261
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1261
    check-cast p1, Lcom/dreamplug/androidapp/profile/WhatsappConsentState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/WhatsappConsentState;->getOptedIn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_1

    .line 1263
    :cond_1
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz p1, :cond_2

    .line 1264
    iget-object p1, p0, Lo/getContentInsetStart$onMessageChannelReady;->onNavigationEvent:Lo/getContentInsetStart;

    .line 3084
    iget-object p1, p1, Lo/getContentInsetStart;->asInterface:Lo/setActive;

    .line 1264
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 67
    :cond_2
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
