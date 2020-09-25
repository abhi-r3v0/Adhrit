.class final Lo/layoutDecoratedWithMargins$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/layoutDecoratedWithMargins;->extraCallback(Z)V
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
.field private synthetic ICustomTabsCallback:Z

.field private synthetic onPostMessage:Lo/layoutDecoratedWithMargins;


# direct methods
.method constructor <init>(Lo/layoutDecoratedWithMargins;Z)V
    .locals 0

    iput-object p1, p0, Lo/layoutDecoratedWithMargins$extraCallback;->onPostMessage:Lo/layoutDecoratedWithMargins;

    iput-boolean p2, p0, Lo/layoutDecoratedWithMargins$extraCallback;->ICustomTabsCallback:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 40
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    iget-boolean p1, p0, Lo/layoutDecoratedWithMargins$extraCallback;->ICustomTabsCallback:Z

    if-eqz p1, :cond_0

    .line 1146
    iget-object p1, p0, Lo/layoutDecoratedWithMargins$extraCallback;->onPostMessage:Lo/layoutDecoratedWithMargins;

    .line 2040
    iget-object p1, p1, Lo/layoutDecoratedWithMargins;->onRelationshipValidationResult:Lo/onReset;

    .line 2537
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-static {}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->extraCallback()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2538
    new-instance v0, Lo/onAbandon;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/onReset$asInterface;

    invoke-direct {v2, p1}, Lo/onReset$asInterface;-><init>(Lo/onReset;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-direct {v0, v1, v2}, Lo/onAbandon;-><init>(Landroid/content/Context;Lo/onDisconnectSetValue;)V

    .line 40
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
