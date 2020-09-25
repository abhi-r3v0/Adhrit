.class final Lo/setTitleMarginTop$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginTop;->onPostMessage(Ljava/lang/String;Lo/TintInfo;Z)V
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
.field private synthetic extraCallback:Z

.field private synthetic onNavigationEvent:Lo/TintInfo;

.field private synthetic onPostMessage:Lo/setTitleMarginTop;


# direct methods
.method constructor <init>(Lo/setTitleMarginTop;Lo/TintInfo;Z)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginTop$onMessageChannelReady;->onPostMessage:Lo/setTitleMarginTop;

    iput-object p2, p0, Lo/setTitleMarginTop$onMessageChannelReady;->onNavigationEvent:Lo/TintInfo;

    iput-boolean p3, p0, Lo/setTitleMarginTop$onMessageChannelReady;->extraCallback:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1493
    iget-object v0, p0, Lo/setTitleMarginTop$onMessageChannelReady;->onNavigationEvent:Lo/TintInfo;

    .line 2032
    iget-object v0, v0, Lo/TintInfo;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1493
    iget-boolean v0, p0, Lo/setTitleMarginTop$onMessageChannelReady;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 1494
    sget-object v0, Lo/getWrappedTypeArray;->asBinder:Lo/getWrappedTypeArray;

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/getIndexCount;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/getIndexCount;-><init>(I)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1495
    iget-object v0, p0, Lo/setTitleMarginTop$onMessageChannelReady;->onPostMessage:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1497
    :cond_0
    iget-object v0, p0, Lo/setTitleMarginTop$onMessageChannelReady;->onPostMessage:Lo/setTitleMarginTop;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->extraCallback(Landroid/app/Activity;)V

    .line 82
    :goto_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
