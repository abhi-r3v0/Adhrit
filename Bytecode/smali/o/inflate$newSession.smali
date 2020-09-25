.class final Lo/inflate$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/inflate;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic onMessageChannelReady:Lo/inflate;


# direct methods
.method constructor <init>(Lo/inflate;)V
    .locals 0

    iput-object p1, p0, Lo/inflate$newSession;->onMessageChannelReady:Lo/inflate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1673
    iget-object v0, p0, Lo/inflate$newSession;->onMessageChannelReady:Lo/inflate;

    .line 2073
    iget-object v1, v0, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    if-eqz v1, :cond_0

    .line 2915
    iget-object v1, v1, Lo/inflate$ICustomTabsCallback;->onPostMessage:Lcom/cred/pay/repository/models/checkout/CardDetails;

    if-eqz v1, :cond_0

    .line 3234
    iget-object v1, v1, Lcom/cred/pay/repository/models/checkout/CardDetails;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1673
    :goto_0
    iget-object v2, p0, Lo/inflate$newSession;->onMessageChannelReady:Lo/inflate;

    invoke-virtual {v2}, Lo/inflate;->asBinder()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lo/inflate;->onMessageChannelReady(Ljava/lang/String;D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1674
    iget-object v0, p0, Lo/inflate$newSession;->onMessageChannelReady:Lo/inflate;

    .line 4073
    iget-object v1, v0, Lo/inflate;->extraCommand:Lo/inflate$ICustomTabsCallback;

    .line 1674
    invoke-virtual {v0, v1}, Lo/inflate;->onPostMessage(Lo/inflate$ICustomTabsCallback;)V

    .line 1676
    :cond_1
    iget-object v0, p0, Lo/inflate$newSession;->onMessageChannelReady:Lo/inflate;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lo/extraCallback;->extraCallback(Lo/inflate;ZZZI)V

    .line 44
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
