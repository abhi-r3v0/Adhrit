.class public final Lo/postShowOverflowMenu;
.super Lo/measureChildView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/measureChildView<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private onMessageChannelReady(Lo/ActionMenuView;F)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionMenuView<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 24
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 28
    iget-object p1, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 30
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    .line 33
    invoke-virtual {p0}, Lo/postShowOverflowMenu;->onNavigationEvent()F

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    .line 1058
    invoke-virtual {v1}, Lo/onMeasureExactFormat;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    invoke-static {p2, v1, v2}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result p2

    invoke-static {p2, v0, p1}, Lo/extraCallback$onPostMessage;->onMessageChannelReady(FII)I

    move-result p1

    return p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 0

    .line 3017
    invoke-direct {p0, p1, p2}, Lo/postShowOverflowMenu;->onMessageChannelReady(Lo/ActionMenuView;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()I
    .locals 2

    .line 46
    invoke-virtual {p0}, Lo/postShowOverflowMenu;->onPostMessage()Lo/ActionMenuView;

    move-result-object v0

    invoke-virtual {p0}, Lo/postShowOverflowMenu;->onMessageChannelReady()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lo/postShowOverflowMenu;->onMessageChannelReady(Lo/ActionMenuView;F)I

    move-result v0

    return v0
.end method
