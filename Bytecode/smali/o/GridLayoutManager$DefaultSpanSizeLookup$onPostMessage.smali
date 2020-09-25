.class final Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GridLayoutManager$DefaultSpanSizeLookup;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic onMessageChannelReady:Lo/StaggeredGridLayoutManager;

.field private synthetic onNavigationEvent:Lo/GridLayoutManager$DefaultSpanSizeLookup;


# direct methods
.method constructor <init>(Lo/GridLayoutManager$DefaultSpanSizeLookup;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;->onNavigationEvent:Lo/GridLayoutManager$DefaultSpanSizeLookup;

    iput-object p2, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 121
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 1156
    iget-object v1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lo/computeHorizontalScrollOffset;

    .line 2054
    iget-object v1, v1, Lo/computeHorizontalScrollOffset;->extraCallback:Ljava/lang/CharSequence;

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "key"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1156
    iget-object v1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lo/computeHorizontalScrollOffset;

    .line 3054
    iget-object v1, v1, Lo/computeHorizontalScrollOffset;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "value"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1156
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_final_summary_details_click"

    .line 1156
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1157
    iget-object p1, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lo/computeHorizontalScrollOffset;

    .line 5054
    iget-object p1, p1, Lo/computeHorizontalScrollOffset;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$BreakDownData;

    if-eqz p1, :cond_0

    .line 1157
    iget-object v0, p0, Lo/GridLayoutManager$DefaultSpanSizeLookup$onPostMessage;->onNavigationEvent:Lo/GridLayoutManager$DefaultSpanSizeLookup;

    .line 5123
    iget-object v0, v0, Lo/GridLayoutManager$DefaultSpanSizeLookup;->extraCallback:Lo/hasGapsToFix$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 1157
    check-cast p1, Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string v2, "charges"

    .line 6066
    invoke-interface {v0, v2, p1, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 121
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
