.class public final Lo/isOverflowMenuShowing;
.super Lo/measureChildView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/measureChildView<",
        "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private onPostMessage(Lo/ActionMenuView;F)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionMenuView<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 26
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    .line 30
    invoke-virtual {p0}, Lo/isOverflowMenuShowing;->onNavigationEvent()F

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    .line 1058
    invoke-virtual {v0}, Lo/onMeasureExactFormat;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    .line 2098
    :cond_0
    iget v0, p1, Lo/ActionMenuView;->asInterface:F

    const v1, -0x358c9d09

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2099
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p1, Lo/ActionMenuView;->asInterface:F

    .line 2101
    :cond_1
    iget v0, p1, Lo/ActionMenuView;->asInterface:F

    .line 2108
    iget v2, p1, Lo/ActionMenuView;->ICustomTabsCallback$Stub:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    .line 2109
    iget-object v1, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, p1, Lo/ActionMenuView;->ICustomTabsCallback$Stub:F

    .line 2111
    :cond_2
    iget p1, p1, Lo/ActionMenuView;->ICustomTabsCallback$Stub:F

    .line 36
    invoke-static {v0, p1, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result p1

    return p1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final asInterface()F
    .locals 2

    .line 43
    invoke-virtual {p0}, Lo/isOverflowMenuShowing;->onPostMessage()Lo/ActionMenuView;

    move-result-object v0

    invoke-virtual {p0}, Lo/isOverflowMenuShowing;->onMessageChannelReady()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lo/isOverflowMenuShowing;->onPostMessage(Lo/ActionMenuView;F)F

    move-result v0

    return v0
.end method

.method final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 0

    .line 3015
    invoke-direct {p0, p1, p2}, Lo/isOverflowMenuShowing;->onPostMessage(Lo/ActionMenuView;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
