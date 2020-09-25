.class public final Lo/setVisibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChecked;
.implements Lo/setForceShowIcon;
.implements Lo/setContentHeight;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Path;

.field private final ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/withFinalVisibility;

.field private final extraCallback:Lo/createCheckedTextView;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Landroid/graphics/Matrix;

.field private final onPostMessage:Lo/setOverlayMode;

.field private final onRelationshipValidationResult:Z

.field private onTransact:Lo/setCheckable;


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/newArray;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setVisibility;->onNavigationEvent:Landroid/graphics/Matrix;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    .line 40
    iput-object p1, p0, Lo/setVisibility;->extraCallback:Lo/createCheckedTextView;

    .line 41
    iput-object p2, p0, Lo/setVisibility;->onPostMessage:Lo/setOverlayMode;

    .line 1029
    iget-object p1, p3, Lo/newArray;->extraCallback:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lo/setVisibility;->onMessageChannelReady:Ljava/lang/String;

    .line 1045
    iget-boolean p1, p3, Lo/newArray;->onMessageChannelReady:Z

    .line 43
    iput-boolean p1, p0, Lo/setVisibility;->onRelationshipValidationResult:Z

    .line 2033
    iget-object p1, p3, Lo/newArray;->ICustomTabsCallback:Lo/setTransitioning;

    .line 3020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 44
    iput-object v0, p0, Lo/setVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_0

    .line 3173
    iget-object p1, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    iget-object p1, p0, Lo/setVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 4045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5037
    iget-object p1, p3, Lo/newArray;->onNavigationEvent:Lo/setTransitioning;

    .line 6020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 48
    iput-object v0, p0, Lo/setVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_1

    .line 6173
    iget-object p1, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_1
    iget-object p1, p0, Lo/setVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 7045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8041
    iget-object p1, p3, Lo/newArray;->onPostMessage:Lo/onMeasure;

    .line 8100
    new-instance p3, Lo/withFinalVisibility;

    invoke-direct {p3, p1}, Lo/withFinalVisibility;-><init>(Lo/onMeasure;)V

    .line 52
    iput-object p3, p0, Lo/setVisibility;->asInterface:Lo/withFinalVisibility;

    .line 53
    invoke-virtual {p3, p2}, Lo/withFinalVisibility;->onPostMessage(Lo/setOverlayMode;)V

    .line 54
    iget-object p1, p0, Lo/setVisibility;->asInterface:Lo/withFinalVisibility;

    invoke-virtual {p1, p0}, Lo/withFinalVisibility;->onMessageChannelReady(Lo/isOverflowMenuShowPending$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 126
    iget-object v0, p0, Lo/setVisibility;->extraCallback:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

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

    .line 137
    iget-object v0, p0, Lo/setVisibility;->asInterface:Lo/withFinalVisibility;

    invoke-virtual {v0, p1, p2}, Lo/withFinalVisibility;->onNavigationEvent(Ljava/lang/Object;Lo/onMeasureExactFormat;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    sget-object v0, Lo/createRatingBar;->mayLaunchUrl:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 142
    iget-object p1, p0, Lo/setVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 143
    :cond_1
    sget-object v0, Lo/createRatingBar;->updateVisuals:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 144
    iget-object p1, p0, Lo/setVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    :cond_2
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lo/setVisibility;->onTransact:Lo/setCheckable;

    invoke-virtual {v0, p1, p2}, Lo/setCheckable;->extraCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/Path;
    .locals 6

    .line 95
    iget-object v0, p0, Lo/setVisibility;->onTransact:Lo/setCheckable;

    invoke-virtual {v0}, Lo/setCheckable;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lo/setVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 97
    iget-object v1, p0, Lo/setVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 98
    iget-object v2, p0, Lo/setVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 100
    iget-object v3, p0, Lo/setVisibility;->onNavigationEvent:Landroid/graphics/Matrix;

    iget-object v4, p0, Lo/setVisibility;->asInterface:Lo/withFinalVisibility;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lo/withFinalVisibility;->onNavigationEvent(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 101
    iget-object v3, p0, Lo/setVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v4, p0, Lo/setVisibility;->onNavigationEvent:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lo/setVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/setVisibility;->onTransact:Lo/setCheckable;

    invoke-virtual {v0, p1, p2, p3}, Lo/setCheckable;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lo/setVisibility;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 107
    iget-object v0, p0, Lo/setVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 108
    iget-object v1, p0, Lo/setVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 110
    iget-object v2, p0, Lo/setVisibility;->asInterface:Lo/withFinalVisibility;

    .line 8158
    iget-object v2, v2, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 110
    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 112
    iget-object v4, p0, Lo/setVisibility;->asInterface:Lo/withFinalVisibility;

    .line 8162
    iget-object v4, v4, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 112
    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 114
    iget-object v5, p0, Lo/setVisibility;->onNavigationEvent:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 115
    iget-object v5, p0, Lo/setVisibility;->onNavigationEvent:Landroid/graphics/Matrix;

    iget-object v6, p0, Lo/setVisibility;->asInterface:Lo/withFinalVisibility;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lo/withFinalVisibility;->onNavigationEvent(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    .line 116
    invoke-static {v2, v4, v7}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v6

    mul-float v5, v5, v6

    .line 117
    iget-object v6, p0, Lo/setVisibility;->onTransact:Lo/setCheckable;

    iget-object v7, p0, Lo/setVisibility;->onNavigationEvent:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lo/setCheckable;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lo/setVisibility;->onTransact:Lo/setCheckable;

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 77
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 83
    new-instance p1, Lo/setCheckable;

    iget-object v2, p0, Lo/setVisibility;->extraCallback:Lo/createCheckedTextView;

    iget-object v3, p0, Lo/setVisibility;->onPostMessage:Lo/setOverlayMode;

    iget-boolean v5, p0, Lo/setVisibility;->onRelationshipValidationResult:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lo/setCheckable;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Ljava/lang/String;ZLjava/util/List;Lo/onMeasure;)V

    iput-object p1, p0, Lo/setVisibility;->onTransact:Lo/setCheckable;

    return-void
.end method

.method public final onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            "I",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;",
            "Lo/ActionBarContainer;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-static {p1, p2, p3, p4, p0}, Lo/onContentScrollStopped;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V

    return-void
.end method
