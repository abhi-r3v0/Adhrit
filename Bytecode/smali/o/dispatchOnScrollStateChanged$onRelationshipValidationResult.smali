.class final Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchOnScrollStateChanged;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/dispatchOnScrollStateChanged;


# direct methods
.method constructor <init>(Lo/dispatchOnScrollStateChanged;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 68
    check-cast p1, Ljava/util/List;

    .line 1107
    iget-object v0, p0, Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1109
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineForeGround:I

    invoke-virtual {p1, v1}, Lo/dispatchOnScrollStateChanged;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "machineForeGround"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void

    .line 1112
    :cond_0
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    .line 2039
    iput-boolean v0, p1, Lo/findNestedRecyclerView;->onRelationshipValidationResult:Z

    const/4 p1, 0x1

    new-array v1, p1, [Lo/addWrite;

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "outcome"

    const-string v4, "neutral"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    const-string v0, "pairs"

    .line 1113
    invoke-static {v1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1114
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lo/findNestedRecyclerView;->asInterface()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1115
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;->extraCallback:Lo/dispatchOnScrollStateChanged;

    invoke-static {p1}, Lo/dispatchOnScrollStateChanged;->onNavigationEvent(Lo/dispatchOnScrollStateChanged;)Lo/findNestedRecyclerView;

    move-result-object p1

    .line 3054
    iget-object p1, p1, Lo/findNestedRecyclerView;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 1115
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4043
    :cond_2
    new-instance p1, Lo/addWrite;

    const-string v1, "number_of_tickets"

    invoke-direct {p1, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5027
    iget-object v1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 5028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1115
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "construct_ui_outcome_load"

    .line 1113
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1117
    sget-object p1, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-virtual {p1}, Lo/onPanelClosed;->onNavigationEvent()Lo/setActive;

    .line 1118
    iget-object p1, p0, Lo/dispatchOnScrollStateChanged$onRelationshipValidationResult;->extraCallback:Lo/dispatchOnScrollStateChanged;

    sget-object v0, Lo/findNestedRecyclerView$extraCallback$onMessageChannelReady;->onNavigationEvent:Lo/findNestedRecyclerView$extraCallback$onMessageChannelReady;

    check-cast v0, Lo/findNestedRecyclerView$extraCallback;

    invoke-static {p1, v0}, Lo/dispatchOnScrollStateChanged;->ICustomTabsCallback(Lo/dispatchOnScrollStateChanged;Lo/findNestedRecyclerView$extraCallback;)V

    return-void
.end method
