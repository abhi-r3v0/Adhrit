.class final Lo/getReturnTransition$onRelationshipValidationResult$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getReturnTransition$onRelationshipValidationResult;
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
        "<no name provided>",
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
.field final synthetic onMessageChannelReady:Lo/getReturnTransition$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/getReturnTransition$onRelationshipValidationResult;)V
    .locals 0

    iput-object p1, p0, Lo/getReturnTransition$onRelationshipValidationResult$onPostMessage;->onMessageChannelReady:Lo/getReturnTransition$onRelationshipValidationResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1083
    sget-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 3000
    sget-object v0, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 2028
    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 1083
    iget-object v1, p0, Lo/getReturnTransition$onRelationshipValidationResult$onPostMessage;->onMessageChannelReady:Lo/getReturnTransition$onRelationshipValidationResult;

    iget-object v1, v1, Lo/getReturnTransition$onRelationshipValidationResult;->onNavigationEvent:Lo/getReturnTransition;

    check-cast v1, Lo/toLegacyStreamType;

    new-instance v2, Lo/getReturnTransition$onRelationshipValidationResult$onPostMessage$2;

    invoke-direct {v2, p0}, Lo/getReturnTransition$onRelationshipValidationResult$onPostMessage$2;-><init>(Lo/getReturnTransition$onRelationshipValidationResult$onPostMessage;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 47
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
