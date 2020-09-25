.class public final Lo/ActionBarContextView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onLayout<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setTransitioning;

.field private final onPostMessage:Lo/setTransitioning;


# direct methods
.method public constructor <init>(Lo/setTransitioning;Lo/setTransitioning;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lo/ActionBarContextView;->extraCallback:Lo/setTransitioning;

    .line 20
    iput-object p2, p0, Lo/ActionBarContextView;->onPostMessage:Lo/setTransitioning;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lo/ActionBarContextView;->extraCallback:Lo/setTransitioning;

    invoke-virtual {v0}, Lo/setCustomView;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ActionBarContextView;->onPostMessage:Lo/setTransitioning;

    invoke-virtual {v0}, Lo/setCustomView;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/isOverflowMenuShowPending;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Lo/onAnimationStart;

    iget-object v1, p0, Lo/ActionBarContextView;->extraCallback:Lo/setTransitioning;

    .line 1020
    new-instance v2, Lo/isOverflowMenuShowing;

    iget-object v1, v1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v2, v1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 35
    iget-object v1, p0, Lo/ActionBarContextView;->onPostMessage:Lo/setTransitioning;

    .line 2020
    new-instance v3, Lo/isOverflowMenuShowing;

    iget-object v1, v1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v3, v1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 35
    invoke-direct {v0, v2, v3}, Lo/onAnimationStart;-><init>(Lo/isOverflowMenuShowPending;Lo/isOverflowMenuShowPending;)V

    return-object v0
.end method
