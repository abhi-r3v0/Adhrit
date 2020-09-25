.class public final Lo/setIcon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setChecked;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;


# instance fields
.field private final ICustomTabsCallback:Z

.field private final ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setForceShowIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/setOverlayMode;

.field private final onNavigationEvent:Landroid/graphics/Paint;

.field private final onPostMessage:Landroid/graphics/Path;

.field private onRelationshipValidationResult:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/createCheckedTextView;


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/onInitializeAccessibilityEvent;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    .line 32
    new-instance v0, Lo/createViewByPrefix;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/createViewByPrefix;-><init>(I)V

    iput-object v0, p0, Lo/setIcon;->onNavigationEvent:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setIcon;->asBinder:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lo/setIcon;->onMessageChannelReady:Lo/setOverlayMode;

    .line 1032
    iget-object v0, p3, Lo/onInitializeAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lo/setIcon;->extraCallback:Ljava/lang/String;

    .line 1048
    iget-boolean v0, p3, Lo/onInitializeAccessibilityEvent;->onNavigationEvent:Z

    .line 45
    iput-boolean v0, p0, Lo/setIcon;->ICustomTabsCallback:Z

    .line 46
    iput-object p1, p0, Lo/setIcon;->onTransact:Lo/createCheckedTextView;

    .line 2036
    iget-object p1, p3, Lo/onInitializeAccessibilityEvent;->onMessageChannelReady:Lo/verifyDrawable;

    if-eqz p1, :cond_3

    .line 2040
    iget-object p1, p3, Lo/onInitializeAccessibilityEvent;->ICustomTabsCallback:Lo/getTabContainer;

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    .line 2044
    iget-object v0, p3, Lo/onInitializeAccessibilityEvent;->extraCallback:Landroid/graphics/Path$FillType;

    .line 53
    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3036
    iget-object p1, p3, Lo/onInitializeAccessibilityEvent;->onMessageChannelReady:Lo/verifyDrawable;

    .line 4015
    new-instance v0, Lo/postShowOverflowMenu;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/postShowOverflowMenu;-><init>(Ljava/util/List;)V

    .line 55
    iput-object v0, p0, Lo/setIcon;->asInterface:Lo/isOverflowMenuShowPending;

    .line 4045
    iget-object p1, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p1, p0, Lo/setIcon;->asInterface:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 4173
    iget-object v0, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5040
    :cond_1
    iget-object p1, p3, Lo/onInitializeAccessibilityEvent;->ICustomTabsCallback:Lo/getTabContainer;

    .line 6020
    new-instance p3, Lo/showOverflowMenu;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p3, p1}, Lo/showOverflowMenu;-><init>(Ljava/util/List;)V

    .line 58
    iput-object p3, p0, Lo/setIcon;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 6045
    iget-object p1, p3, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lo/setIcon;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 6173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lo/setIcon;->asInterface:Lo/isOverflowMenuShowPending;

    .line 49
    iput-object p1, p0, Lo/setIcon;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/setIcon;->onTransact:Lo/createCheckedTextView;

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

    .line 126
    sget-object v0, Lo/createRatingBar;->onPostMessage:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lo/setIcon;->asInterface:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 128
    :cond_0
    sget-object v0, Lo/createRatingBar;->extraCallback:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 129
    iget-object p1, p0, Lo/setIcon;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 130
    :cond_1
    sget-object v0, Lo/createRatingBar;->cancel:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 131
    iget-object p1, p0, Lo/setIcon;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 132
    iget-object v0, p0, Lo/setIcon;->onMessageChannelReady:Lo/setOverlayMode;

    .line 6177
    iget-object v0, v0, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lo/setIcon;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    return-void

    .line 138
    :cond_3
    new-instance p1, Lo/onAnimationEnd;

    invoke-direct {p1, p2}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;)V

    iput-object p1, p0, Lo/setIcon;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    .line 7045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object p1, p0, Lo/setIcon;->onMessageChannelReady:Lo/setOverlayMode;

    iget-object p2, p0, Lo/setIcon;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    if-eqz p2, :cond_4

    .line 7173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 70
    instance-of v1, v0, Lo/setForceShowIcon;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lo/setIcon;->asBinder:Ljava/util/List;

    check-cast v0, Lo/setForceShowIcon;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 104
    iget-object p3, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v1, p0, Lo/setIcon;->asBinder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    iget-object v2, p0, Lo/setIcon;->asBinder:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setForceShowIcon;

    invoke-interface {v2}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 110
    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/setIcon;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 81
    iget-boolean v0, p0, Lo/setIcon;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {}, Lo/createEditText;->onPostMessage()V

    .line 85
    iget-object v0, p0, Lo/setIcon;->onNavigationEvent:Landroid/graphics/Paint;

    iget-object v1, p0, Lo/setIcon;->asInterface:Lo/isOverflowMenuShowPending;

    check-cast v1, Lo/postShowOverflowMenu;

    invoke-virtual {v1}, Lo/postShowOverflowMenu;->onTransact()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    .line 86
    iget-object v1, p0, Lo/setIcon;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float p3, p3, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p3, v1

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 87
    iget-object v0, p0, Lo/setIcon;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-static {p3}, Lo/onContentScrollStopped;->ICustomTabsCallback(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object p3, p0, Lo/setIcon;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    if-eqz p3, :cond_1

    .line 90
    iget-object v0, p0, Lo/setIcon;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    :cond_1
    iget-object p3, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    .line 94
    :goto_0
    iget-object v0, p0, Lo/setIcon;->asBinder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 95
    iget-object v0, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    iget-object v1, p0, Lo/setIcon;->asBinder:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setForceShowIcon;

    invoke-interface {v1}, Lo/setForceShowIcon;->onMessageChannelReady()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 98
    :cond_2
    iget-object p2, p0, Lo/setIcon;->onPostMessage:Landroid/graphics/Path;

    iget-object p3, p0, Lo/setIcon;->onNavigationEvent:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 100
    invoke-static {}, Lo/createEditText;->onMessageChannelReady()F

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

    .line 120
    invoke-static {p1, p2, p3, p4, p0}, Lo/onContentScrollStopped;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V

    return-void
.end method
