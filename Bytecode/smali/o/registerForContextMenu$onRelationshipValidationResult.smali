.class final Lo/registerForContextMenu$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/registerForContextMenu;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field final synthetic extraCallback:Lo/registerForContextMenu;


# direct methods
.method constructor <init>(Lo/registerForContextMenu;)V
    .locals 0

    iput-object p1, p0, Lo/registerForContextMenu$onRelationshipValidationResult;->extraCallback:Lo/registerForContextMenu;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 39
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    iget-object p1, p0, Lo/registerForContextMenu$onRelationshipValidationResult;->extraCallback:Lo/registerForContextMenu;

    invoke-static {p1}, Lo/registerForContextMenu;->onMessageChannelReady(Lo/registerForContextMenu;)Lo/onDetach$asInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2118
    iget-boolean p1, p1, Lo/onDetach$asInterface;->onTransact:Z

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1165
    :cond_0
    iget-object p1, p0, Lo/registerForContextMenu$onRelationshipValidationResult;->extraCallback:Lo/registerForContextMenu;

    invoke-static {p1}, Lo/registerForContextMenu;->onMessageChannelReady(Lo/registerForContextMenu;)Lo/onDetach$asInterface;

    move-result-object v0

    const-string/jumbo v1, "upi_account"

    invoke-static {p1, v0, v1}, Lo/registerForContextMenu;->onPostMessage(Lo/registerForContextMenu;Lo/onDetach$asInterface;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "ad_setup_link_bank_proceed_click"

    .line 1160
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1161
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lo/registerForContextMenu$onRelationshipValidationResult;->extraCallback:Lo/registerForContextMenu;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0xc8

    new-instance v3, Lo/registerForContextMenu$onRelationshipValidationResult$5;

    invoke-direct {v3, p0}, Lo/registerForContextMenu$onRelationshipValidationResult$5;-><init>(Lo/registerForContextMenu$onRelationshipValidationResult;)V

    check-cast v3, Lo/getServerTime;

    invoke-static {p1, v0, v1, v2, v3}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 39
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
