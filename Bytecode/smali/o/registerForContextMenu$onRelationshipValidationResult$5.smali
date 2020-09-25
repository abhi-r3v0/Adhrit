.class final Lo/registerForContextMenu$onRelationshipValidationResult$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/registerForContextMenu$onRelationshipValidationResult;
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
.field private synthetic ICustomTabsCallback:Lo/registerForContextMenu$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/registerForContextMenu$onRelationshipValidationResult;)V
    .locals 0

    iput-object p1, p0, Lo/registerForContextMenu$onRelationshipValidationResult$5;->ICustomTabsCallback:Lo/registerForContextMenu$onRelationshipValidationResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1162
    iget-object v0, p0, Lo/registerForContextMenu$onRelationshipValidationResult$5;->ICustomTabsCallback:Lo/registerForContextMenu$onRelationshipValidationResult;

    iget-object v0, v0, Lo/registerForContextMenu$onRelationshipValidationResult;->extraCallback:Lo/registerForContextMenu;

    .line 2000
    iget-object v0, v0, Lo/registerForContextMenu;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 1162
    new-instance v1, Lo/onDetach$onNavigationEvent;

    iget-object v2, p0, Lo/registerForContextMenu$onRelationshipValidationResult$5;->ICustomTabsCallback:Lo/registerForContextMenu$onRelationshipValidationResult;

    iget-object v2, v2, Lo/registerForContextMenu$onRelationshipValidationResult;->extraCallback:Lo/registerForContextMenu;

    invoke-static {v2}, Lo/registerForContextMenu;->onMessageChannelReady(Lo/registerForContextMenu;)Lo/onDetach$asInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2111
    iget-object v2, v2, Lo/onDetach$asInterface;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "AutoDebitBankDialog"

    .line 1162
    invoke-direct {v1, v3, v2}, Lo/onDetach$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extraData"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2367
    new-instance v2, Lo/onGetChildDrawingOrder$onPostMessage;

    invoke-direct {v2, v1}, Lo/onGetChildDrawingOrder$onPostMessage;-><init>(Lo/onDetach$onNavigationEvent;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v0, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 39
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
