.class final Lo/DefaultItemAnimator$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultItemAnimator;
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
.field private synthetic extraCallback:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$asInterface;->extraCallback:Lo/DefaultItemAnimator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 53
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1154
    new-instance p1, Lo/onDataRefresh;

    iget-object v0, p0, Lo/DefaultItemAnimator$asInterface;->extraCallback:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->ICustomTabsCallback(Lo/DefaultItemAnimator;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fragment.requireContext()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/DefaultItemAnimator$asInterface;->extraCallback:Lo/DefaultItemAnimator;

    invoke-static {v1}, Lo/DefaultItemAnimator;->asBinder(Lo/DefaultItemAnimator;)Lo/onAddFocusables$extraCallback;

    move-result-object v1

    .line 1228
    iget-object v1, v1, Lo/onAddFocusables$extraCallback;->newSession:Ljava/lang/String;

    .line 1154
    iget-object v2, p0, Lo/DefaultItemAnimator$asInterface;->extraCallback:Lo/DefaultItemAnimator;

    invoke-static {v2}, Lo/DefaultItemAnimator;->asBinder(Lo/DefaultItemAnimator;)Lo/onAddFocusables$extraCallback;

    move-result-object v2

    .line 2227
    iget-object v2, v2, Lo/onAddFocusables$extraCallback;->warmup:Ljava/lang/String;

    .line 1154
    invoke-direct {p1, v0, v1, v2}, Lo/onDataRefresh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 53
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
