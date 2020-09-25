.class public final Lo/showOverflowMenu;
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

    .line 11
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/ActionMenuView;F)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionMenuView<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 23
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    .line 31
    invoke-virtual {p0}, Lo/showOverflowMenu;->onNavigationEvent()F

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    .line 1058
    invoke-virtual {v0}, Lo/onMeasureExactFormat;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 2118
    :cond_0
    iget v0, p1, Lo/ActionMenuView;->onRelationshipValidationResult:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_1

    .line 2119
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p1, Lo/ActionMenuView;->onRelationshipValidationResult:I

    .line 2121
    :cond_1
    iget v0, p1, Lo/ActionMenuView;->onRelationshipValidationResult:I

    .line 2128
    iget v2, p1, Lo/ActionMenuView;->asBinder:I

    if-ne v2, v1, :cond_2

    .line 2129
    iget-object v1, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, p1, Lo/ActionMenuView;->asBinder:I

    .line 2131
    :cond_2
    iget p1, p1, Lo/ActionMenuView;->asBinder:I

    .line 37
    invoke-static {v0, p1, p2}, Lo/onContentScrollStopped;->onPostMessage(IIF)I

    move-result p1

    return p1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 0

    .line 3016
    invoke-direct {p0, p1, p2}, Lo/showOverflowMenu;->ICustomTabsCallback(Lo/ActionMenuView;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lo/showOverflowMenu;->onPostMessage()Lo/ActionMenuView;

    move-result-object v0

    invoke-virtual {p0}, Lo/showOverflowMenu;->onMessageChannelReady()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lo/showOverflowMenu;->ICustomTabsCallback(Lo/ActionMenuView;F)I

    move-result v0

    return v0
.end method
