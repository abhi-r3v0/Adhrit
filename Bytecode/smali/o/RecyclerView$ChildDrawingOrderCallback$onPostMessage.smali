.class public final Lo/RecyclerView$ChildDrawingOrderCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$ChildDrawingOrderCallback;-><init>(Lo/isSessionReady;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/menu/MenuDialog$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;


# direct methods
.method constructor <init>(Lo/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$onPostMessage;->onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 6

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of p1, p2, Lo/isFullSpan;

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$onPostMessage;->onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;

    .line 1120
    iget-object p3, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    const v0, 0x800005

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 1121
    iget-object p1, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    invoke-virtual {p1}, Lo/isSessionReady;->onNavigationEvent()V

    .line 47
    iget-object p1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$onPostMessage;->onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;

    check-cast p2, Lo/isFullSpan;

    const/4 p3, 0x4

    new-array v0, p3, [Lo/addWrite;

    const/4 v2, 0x0

    .line 2101
    iget-object v3, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "section"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    .line 2102
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f1301d9

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 4043
    new-instance v3, Lo/addWrite;

    const-string v4, "icon_text"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 2103
    iget-object p1, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->onTransact:Ljava/lang/String;

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "trigger_section"

    invoke-direct {v2, v3, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 p1, 0x3

    .line 6010
    iget-object v1, p2, Lo/isFullSpan;->onNavigationEvent:Ljava/lang/String;

    .line 6043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "target_section"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, p1

    const-string p1, "pairs"

    .line 2100
    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {p3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p3, "fab_details_screen_cta_click"

    .line 2098
    invoke-static {p3, p1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    iget-object p1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$onPostMessage;->onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;

    .line 7025
    iget-object p1, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->ICustomTabsCallback:Lo/notifyItemRangeInserted;

    if-eqz p1, :cond_0

    .line 48
    invoke-interface {p1, p2}, Lo/notifyItemRangeInserted;->onPostMessage(Lo/isFullSpan;)V

    :cond_0
    return-void
.end method
