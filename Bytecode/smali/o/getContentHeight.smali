.class public final Lo/getContentHeight;
.super Lo/setItemInvoker;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final extraCallback:Lo/setOverlayMode;

.field private final onNavigationEvent:Z

.field private final onRelationshipValidationResult:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/generateLayoutParams;)V
    .locals 11

    .line 1109
    iget-object v0, p3, Lo/generateLayoutParams;->onTransact:Lo/generateLayoutParams$extraCallback;

    .line 28
    invoke-virtual {v0}, Lo/generateLayoutParams$extraCallback;->onNavigationEvent()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 1113
    iget-object v0, p3, Lo/generateLayoutParams;->asBinder:Lo/generateLayoutParams$onMessageChannelReady;

    .line 29
    invoke-virtual {v0}, Lo/generateLayoutParams$onMessageChannelReady;->onMessageChannelReady()Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 1117
    iget v6, p3, Lo/generateLayoutParams;->onRelationshipValidationResult:F

    .line 2093
    iget-object v7, p3, Lo/generateLayoutParams;->extraCallback:Lo/getTabContainer;

    .line 2097
    iget-object v8, p3, Lo/generateLayoutParams;->ICustomTabsCallback$Stub:Lo/setTransitioning;

    .line 2101
    iget-object v9, p3, Lo/generateLayoutParams;->ICustomTabsCallback:Ljava/util/List;

    .line 2105
    iget-object v10, p3, Lo/generateLayoutParams;->onPostMessage:Lo/setTransitioning;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 28
    invoke-direct/range {v1 .. v10}, Lo/setItemInvoker;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLo/getTabContainer;Lo/setTransitioning;Ljava/util/List;Lo/setTransitioning;)V

    .line 31
    iput-object p2, p0, Lo/getContentHeight;->extraCallback:Lo/setOverlayMode;

    .line 3085
    iget-object p1, p3, Lo/generateLayoutParams;->onNavigationEvent:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lo/getContentHeight;->ICustomTabsCallback:Ljava/lang/String;

    .line 3121
    iget-boolean p1, p3, Lo/generateLayoutParams;->asInterface:Z

    .line 33
    iput-boolean p1, p0, Lo/getContentHeight;->onNavigationEvent:Z

    .line 4089
    iget-object p1, p3, Lo/generateLayoutParams;->onMessageChannelReady:Lo/verifyDrawable;

    .line 5015
    new-instance p3, Lo/postShowOverflowMenu;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p3, p1}, Lo/postShowOverflowMenu;-><init>(Ljava/util/List;)V

    .line 34
    iput-object p3, p0, Lo/getContentHeight;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    .line 5045
    iget-object p1, p3, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lo/getContentHeight;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_0

    .line 5173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2}, Lo/setItemInvoker;->extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V

    .line 58
    sget-object v0, Lo/createRatingBar;->onNavigationEvent:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 59
    iget-object p1, p0, Lo/getContentHeight;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 60
    :cond_0
    sget-object v0, Lo/createRatingBar;->cancel:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 61
    iget-object p1, p0, Lo/getContentHeight;->onTransact:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 62
    iget-object v0, p0, Lo/getContentHeight;->extraCallback:Lo/setOverlayMode;

    .line 5177
    iget-object v0, v0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lo/getContentHeight;->onTransact:Lo/isOverflowMenuShowPending;

    return-void

    .line 68
    :cond_2
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/getContentHeight;->onTransact:Lo/isOverflowMenuShowPending;

    .line 6045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lo/getContentHeight;->extraCallback:Lo/setOverlayMode;

    iget-object p2, p0, Lo/getContentHeight;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_3

    .line 6173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/getContentHeight;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 40
    iget-boolean v0, p0, Lo/getContentHeight;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/getContentHeight;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    check-cast v1, Lo/postShowOverflowMenu;

    invoke-virtual {v1}, Lo/postShowOverflowMenu;->onTransact()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lo/getContentHeight;->onTransact:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lo/setItemInvoker;->onMessageChannelReady:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/getContentHeight;->onTransact:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 47
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lo/setItemInvoker;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
