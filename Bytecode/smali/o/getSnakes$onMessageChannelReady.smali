.class public final Lo/getSnakes$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSnakes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field final synthetic extraCallback:Lo/onDisconnectSetValue;


# direct methods
.method public constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/getSnakes$onMessageChannelReady;->extraCallback:Lo/onDisconnectSetValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    instance-of p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 1038
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/getSnakes$onMessageChannelReady$2;

    invoke-direct {v0, p0}, Lo/getSnakes$onMessageChannelReady$2;-><init>(Lo/getSnakes$onMessageChannelReady;)V

    check-cast v0, Lo/getServerTime;

    invoke-static {p1, v0}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    .line 25
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
