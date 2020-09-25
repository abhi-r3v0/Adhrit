.class final Lo/dispatchOnScrollStateChanged$updateVisuals;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchOnScrollStateChanged;
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
.field private synthetic onNavigationEvent:Lo/dispatchOnScrollStateChanged;


# direct methods
.method constructor <init>(Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchOnScrollStateChanged$updateVisuals;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 68
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$updateVisuals;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    .line 2036
    iget p1, p1, Lo/findNestedRecyclerView;->onMessageChannelReady:I

    .line 1310
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$updateVisuals;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {v0}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object v0

    .line 3034
    iget v0, v0, Lo/findNestedRecyclerView;->extraCallback:I

    if-lt p1, v0, :cond_0

    .line 1311
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$updateVisuals;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xa

    .line 4014
    invoke-static {p1, v0, v1}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 1312
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$updateVisuals;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    .line 4036
    iget v0, p1, Lo/findNestedRecyclerView;->onMessageChannelReady:I

    add-int/lit8 v0, v0, -0x1

    .line 5036
    iput v0, p1, Lo/findNestedRecyclerView;->onMessageChannelReady:I

    .line 1313
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$updateVisuals;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->asInterface(Lo/dispatchOnScrollStateChanged;)V

    .line 1314
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$updateVisuals;->onNavigationEvent:Lo/dispatchOnScrollStateChanged;

    const-string v0, "remove_ticket"

    invoke-static {p1, v0}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;Ljava/lang/String;)V

    .line 68
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
