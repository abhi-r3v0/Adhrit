.class final Lo/getContentInsetStart$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetStart;->onNavigationEvent(Z)V
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
.field private synthetic onMessageChannelReady:Lo/getContentInsetStart;


# direct methods
.method constructor <init>(Lo/getContentInsetStart;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetStart$getInterfaceDescriptor;->onMessageChannelReady:Lo/getContentInsetStart;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1626
    iget-object v0, p0, Lo/getContentInsetStart$getInterfaceDescriptor;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 2072
    iget-object v0, v0, Lo/getContentInsetStart;->onMessageChannelReady:Lo/setActive;

    .line 1626
    iget-object v1, p0, Lo/getContentInsetStart$getInterfaceDescriptor;->onMessageChannelReady:Lo/getContentInsetStart;

    invoke-static {v1}, Lo/getContentInsetStart;->onMessageChannelReady(Lo/getContentInsetStart;)Lo/getContentInsetStart$onPostMessage;

    .line 3000
    new-instance v1, Lo/getContentInsetStart$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lo/getContentInsetStart$onPostMessage;-><init>(II)V

    .line 1626
    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 67
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
