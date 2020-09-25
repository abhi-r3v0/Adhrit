.class final Lo/getContentInsetStart$newSession$onPostMessage$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetStart$newSession$onPostMessage;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/androidapp/login/LoginViewModel$refreshProfile$1$onResponse$1$1$onResponse$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getContentInsetStart$newSession$onPostMessage;


# direct methods
.method constructor <init>(Lo/getContentInsetStart$newSession$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$newSession$onPostMessage$1;->extraCallback:Lo/getContentInsetStart$newSession$onPostMessage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1549
    iget-object v0, p0, Lo/getContentInsetStart$newSession$onPostMessage$1;->extraCallback:Lo/getContentInsetStart$newSession$onPostMessage;

    iget-object v0, v0, Lo/getContentInsetStart$newSession$onPostMessage;->extraCallback:Lo/getContentInsetStart$newSession;

    iget-object v0, v0, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    iget-object v1, p0, Lo/getContentInsetStart$newSession$onPostMessage$1;->extraCallback:Lo/getContentInsetStart$newSession$onPostMessage;

    iget-object v1, v1, Lo/getContentInsetStart$newSession$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/profile/ProfileResponse;

    invoke-static {v0, v1}, Lo/getContentInsetStart;->extraCallback(Lo/getContentInsetStart;Lcom/dreamplug/androidapp/profile/ProfileResponse;)V

    .line 539
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
