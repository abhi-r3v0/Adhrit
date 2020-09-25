.class final Lo/unregisterForContextMenu$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterForContextMenu;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onMessageChannelReady:Lo/unregisterForContextMenu;


# direct methods
.method constructor <init>(Lo/unregisterForContextMenu;)V
    .locals 0

    iput-object p1, p0, Lo/unregisterForContextMenu$onRelationshipValidationResult;->onMessageChannelReady:Lo/unregisterForContextMenu;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 43
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ad_setup_fail_retry_click"

    .line 1200
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1201
    iget-object p1, p0, Lo/unregisterForContextMenu$onRelationshipValidationResult;->onMessageChannelReady:Lo/unregisterForContextMenu;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lo/unregisterForContextMenu$onRelationshipValidationResult;->onMessageChannelReady:Lo/unregisterForContextMenu;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lo/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1203
    new-instance v1, Lo/setPopupClipToScreenEnabled;

    .line 1204
    iget-object v2, p0, Lo/unregisterForContextMenu$onRelationshipValidationResult;->onMessageChannelReady:Lo/unregisterForContextMenu;

    invoke-static {v2}, Lo/unregisterForContextMenu;->onPostMessage(Lo/unregisterForContextMenu;)Ljava/lang/String;

    move-result-object v4

    .line 1205
    iget-object v2, p0, Lo/unregisterForContextMenu$onRelationshipValidationResult;->onMessageChannelReady:Lo/unregisterForContextMenu;

    invoke-static {v2}, Lo/unregisterForContextMenu;->ICustomTabsCallback(Lo/unregisterForContextMenu;)Ljava/lang/String;

    move-result-object v5

    .line 1207
    iget-object v2, p0, Lo/unregisterForContextMenu$onRelationshipValidationResult;->onMessageChannelReady:Lo/unregisterForContextMenu;

    invoke-static {v2}, Lo/unregisterForContextMenu;->onNavigationEvent(Lo/unregisterForContextMenu;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const/4 v8, 0x0

    const/16 v9, 0x10

    const-string v6, "1.0"

    move-object v3, v1

    .line 1203
    invoke-direct/range {v3 .. v9}, Lo/setPopupClipToScreenEnabled;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "extraInfo"

    .line 1202
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0x9c43

    .line 1201
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 43
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
