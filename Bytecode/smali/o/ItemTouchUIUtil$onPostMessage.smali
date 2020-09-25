.class final Lo/ItemTouchUIUtil$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ItemTouchUIUtil;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/ItemTouchUIUtil;


# direct methods
.method constructor <init>(Lo/ItemTouchUIUtil;)V
    .locals 0

    iput-object p1, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 29
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1079
    iget-object p1, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 1080
    iget-object p1, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/cachePreLayoutSpanMapping;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/cachePreLayoutSpanMapping;

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    new-array v3, v2, [Lo/addWrite;

    .line 2043
    new-instance v4, Lo/addWrite;

    const-string v5, "flow"

    const-string v6, "auto_fill"

    invoke-direct {v4, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v0

    const-string v4, "pairs"

    .line 1080
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v3, "stash_okyc_pitch_click_cta"

    .line 1080
    invoke-interface {p1, v3, v4}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1081
    :cond_1
    iget-object p1, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-static {p1}, Lo/ItemTouchUIUtil;->ICustomTabsCallback(Lo/ItemTouchUIUtil;)Z

    move-result p1

    const-string/jumbo v3, "sim"

    const-string v4, "extra"

    if-eqz p1, :cond_2

    .line 1082
    sget-object p1, Lo/interpolateOutOfBoundsScroll;->onNavigationEvent:Lo/interpolateOutOfBoundsScroll$onMessageChannelReady;

    new-instance p1, Lo/interpolateOutOfBoundsScroll$extraCallback;

    iget-object v0, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-static {v0}, Lo/ItemTouchUIUtil;->onMessageChannelReady(Lo/ItemTouchUIUtil;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-static {v1}, Lo/ItemTouchUIUtil;->onPostMessage(Lo/ItemTouchUIUtil;)Lo/onDetach$write;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/interpolateOutOfBoundsScroll$extraCallback;-><init>(Ljava/util/List;Lo/onDetach$write;)V

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2130
    new-instance v0, Lo/interpolateOutOfBoundsScroll;

    invoke-direct {v0}, Lo/interpolateOutOfBoundsScroll;-><init>()V

    .line 2131
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 3016
    invoke-static {v1, p1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1082
    iget-object p1, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    :cond_2
    sget-object p1, Lo/ItemTouchHelper$ViewDropHandler;->ICustomTabsCallback:Lo/ItemTouchHelper$ViewDropHandler$extraCallback;

    new-instance p1, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;

    iget-object v5, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-static {v5}, Lo/ItemTouchUIUtil;->onMessageChannelReady(Lo/ItemTouchUIUtil;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "$this$getOrNull"

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "$this$lastIndex"

    .line 3266
    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-ltz v6, :cond_3

    .line 3266
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1084
    :cond_3
    check-cast v1, Lo/setExactMeasureSpecsFrom;

    :cond_4
    iget-object v0, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-static {v0}, Lo/ItemTouchUIUtil;->onPostMessage(Lo/ItemTouchUIUtil;)Lo/onDetach$write;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lo/ItemTouchHelper$ViewDropHandler$onNavigationEvent;-><init>(Lo/setExactMeasureSpecsFrom;Lo/onDetach$write;)V

    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5123
    new-instance v0, Lo/ItemTouchHelper$ViewDropHandler;

    invoke-direct {v0}, Lo/ItemTouchHelper$ViewDropHandler;-><init>()V

    .line 5124
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 6016
    invoke-static {v1, p1, v4}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1085
    iget-object p1, p0, Lo/ItemTouchUIUtil$onPostMessage;->onPostMessage:Lo/ItemTouchUIUtil;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 29
    :cond_5
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
