.class final Lo/isRefreshPending$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isRefreshPending;
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
.field private synthetic extraCallback:Lo/isRefreshPending;


# direct methods
.method constructor <init>(Lo/isRefreshPending;)V
    .locals 0

    iput-object p1, p0, Lo/isRefreshPending$onRelationshipValidationResult;->extraCallback:Lo/isRefreshPending;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1131
    iget-object v0, p0, Lo/isRefreshPending$onRelationshipValidationResult;->extraCallback:Lo/isRefreshPending;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->payCustomOnly:I

    invoke-virtual {v0, v1}, Lo/isRefreshPending;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/AsyncListUtil$DataCallback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/AsyncListUtil$DataCallback;->onPostMessage(Lo/AsyncListUtil$DataCallback;Z)V

    .line 63
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
