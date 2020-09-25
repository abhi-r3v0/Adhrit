.class public final Lo/withFinalVisibility;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:[F

.field private final ICustomTabsService:Landroid/graphics/Matrix;

.field public asBinder:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Landroid/graphics/Matrix;

.field public extraCallback:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Landroid/graphics/Matrix;

.field private final newSession:Landroid/graphics/Matrix;

.field public onMessageChannelReady:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "Lo/getIconUri$onMessageChannelReady;",
            "Lo/getIconUri$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:Lo/isOverflowMenuShowing;

.field public onTransact:Lo/isOverflowMenuShowing;


# direct methods
.method public constructor <init>(Lo/onMeasure;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    .line 1056
    iget-object v0, p1, Lo/onMeasure;->onNavigationEvent:Lo/isCollapsed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2056
    :cond_0
    iget-object v0, p1, Lo/onMeasure;->onNavigationEvent:Lo/isCollapsed;

    .line 46
    invoke-virtual {v0}, Lo/isCollapsed;->onPostMessage()Lo/isOverflowMenuShowPending;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    .line 2061
    iget-object v0, p1, Lo/onMeasure;->ICustomTabsCallback:Lo/onLayout;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 3061
    :cond_1
    iget-object v0, p1, Lo/onMeasure;->ICustomTabsCallback:Lo/onLayout;

    .line 47
    invoke-interface {v0}, Lo/onLayout;->onPostMessage()Lo/isOverflowMenuShowPending;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    .line 3066
    iget-object v0, p1, Lo/onMeasure;->onMessageChannelReady:Lo/setTabContainer;

    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_2

    .line 4066
    :cond_2
    iget-object v0, p1, Lo/onMeasure;->onMessageChannelReady:Lo/setTabContainer;

    .line 5025
    new-instance v2, Lo/positionChild;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v2, v0}, Lo/positionChild;-><init>(Ljava/util/List;)V

    .line 48
    :goto_2
    iput-object v2, p0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    .line 5071
    iget-object v0, p1, Lo/onMeasure;->extraCallback:Lo/setTransitioning;

    if-nez v0, :cond_3

    move-object v2, v1

    goto :goto_3

    .line 6071
    :cond_3
    iget-object v0, p1, Lo/onMeasure;->extraCallback:Lo/setTransitioning;

    .line 7020
    new-instance v2, Lo/isOverflowMenuShowing;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v2, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 49
    :goto_3
    iput-object v2, p0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    .line 7091
    iget-object v0, p1, Lo/onMeasure;->ICustomTabsCallback$Stub:Lo/setTransitioning;

    if-nez v0, :cond_4

    move-object v2, v1

    goto :goto_4

    .line 8091
    :cond_4
    iget-object v0, p1, Lo/onMeasure;->ICustomTabsCallback$Stub:Lo/setTransitioning;

    .line 9020
    new-instance v2, Lo/isOverflowMenuShowing;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v2, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 50
    check-cast v2, Lo/isOverflowMenuShowing;

    :goto_4
    iput-object v2, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    if-eqz v2, :cond_5

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/withFinalVisibility;->getInterfaceDescriptor:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/withFinalVisibility;->ICustomTabsService:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/withFinalVisibility;->newSession:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 55
    iput-object v0, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    goto :goto_5

    .line 57
    :cond_5
    iput-object v1, p0, Lo/withFinalVisibility;->getInterfaceDescriptor:Landroid/graphics/Matrix;

    .line 58
    iput-object v1, p0, Lo/withFinalVisibility;->ICustomTabsService:Landroid/graphics/Matrix;

    .line 59
    iput-object v1, p0, Lo/withFinalVisibility;->newSession:Landroid/graphics/Matrix;

    .line 60
    iput-object v1, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    .line 9096
    :goto_5
    iget-object v0, p1, Lo/onMeasure;->asInterface:Lo/setTransitioning;

    if-nez v0, :cond_6

    move-object v2, v1

    goto :goto_6

    .line 10096
    :cond_6
    iget-object v0, p1, Lo/onMeasure;->asInterface:Lo/setTransitioning;

    .line 11020
    new-instance v2, Lo/isOverflowMenuShowing;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v2, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 62
    check-cast v2, Lo/isOverflowMenuShowing;

    :goto_6
    iput-object v2, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    .line 11076
    iget-object v0, p1, Lo/onMeasure;->onPostMessage:Lo/getTabContainer;

    if-eqz v0, :cond_7

    .line 12076
    iget-object v0, p1, Lo/onMeasure;->onPostMessage:Lo/getTabContainer;

    .line 13020
    new-instance v2, Lo/showOverflowMenu;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v2, v0}, Lo/showOverflowMenu;-><init>(Ljava/util/List;)V

    .line 64
    iput-object v2, p0, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    .line 13081
    :cond_7
    iget-object v0, p1, Lo/onMeasure;->onRelationshipValidationResult:Lo/setTransitioning;

    if-eqz v0, :cond_8

    .line 14081
    iget-object v0, p1, Lo/onMeasure;->onRelationshipValidationResult:Lo/setTransitioning;

    .line 15020
    new-instance v2, Lo/isOverflowMenuShowing;

    iget-object v0, v0, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v2, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 67
    iput-object v2, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    goto :goto_7

    .line 69
    :cond_8
    iput-object v1, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 15086
    :goto_7
    iget-object v0, p1, Lo/onMeasure;->asBinder:Lo/setTransitioning;

    if-eqz v0, :cond_9

    .line 16086
    iget-object p1, p1, Lo/onMeasure;->asBinder:Lo/setTransitioning;

    .line 17020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 72
    iput-object v0, p0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    return-void

    .line 74
    :cond_9
    iput-object v1, p0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/isOverflowMenuShowPending$onMessageChannelReady;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_0

    .line 26045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    iget-object v0, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_1

    .line 27045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    iget-object v0, p0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_2

    .line 28045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    iget-object v0, p0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_3

    .line 29045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    iget-object v0, p0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_4

    .line 30045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    iget-object v0, p0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_5

    .line 31045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_5
    iget-object v0, p0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_6

    .line 32045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_6
    iget-object v0, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    if-eqz v0, :cond_7

    .line 33045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_7
    iget-object v0, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    if-eqz v0, :cond_8

    .line 34045
    iget-object v0, v0, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public final onNavigationEvent()Landroid/graphics/Matrix;
    .locals 14

    .line 166
    iget-object v0, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 167
    iget-object v0, p0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 169
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    iget-object v2, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 174
    :cond_1
    iget-object v0, p0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_3

    .line 176
    instance-of v2, v0, Lo/onAnimationEnd;

    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    .line 179
    :cond_2
    check-cast v0, Lo/isOverflowMenuShowing;

    invoke-virtual {v0}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 186
    :cond_3
    iget-object v0, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 188
    :goto_1
    iget-object v4, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    if-nez v4, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 189
    :goto_2
    iget-object v4, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    invoke-virtual {v4}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0x9

    if-ge v6, v7, :cond_6

    .line 34235
    iget-object v7, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    aput v1, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 191
    :cond_6
    iget-object v6, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    aput v0, v6, v5

    const/4 v8, 0x1

    .line 192
    aput v3, v6, v8

    neg-float v9, v3

    const/4 v10, 0x3

    .line 193
    aput v9, v6, v10

    const/4 v11, 0x4

    .line 194
    aput v0, v6, v11

    const/16 v12, 0x8

    .line 195
    aput v2, v6, v12

    .line 196
    iget-object v13, p0, Lo/withFinalVisibility;->getInterfaceDescriptor:Landroid/graphics/Matrix;

    invoke-virtual {v13, v6}, Landroid/graphics/Matrix;->setValues([F)V

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v7, :cond_7

    .line 35235
    iget-object v13, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    aput v1, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 198
    :cond_7
    iget-object v6, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    aput v2, v6, v5

    .line 199
    aput v4, v6, v10

    .line 200
    aput v2, v6, v11

    .line 201
    aput v2, v6, v12

    .line 202
    iget-object v4, p0, Lo/withFinalVisibility;->ICustomTabsService:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->setValues([F)V

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_8

    .line 36235
    iget-object v6, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    aput v1, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 204
    :cond_8
    iget-object v4, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub$Proxy:[F

    aput v0, v4, v5

    .line 205
    aput v9, v4, v8

    .line 206
    aput v3, v4, v10

    .line 207
    aput v0, v4, v11

    .line 208
    aput v2, v4, v12

    .line 209
    iget-object v0, p0, Lo/withFinalVisibility;->newSession:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 210
    iget-object v0, p0, Lo/withFinalVisibility;->ICustomTabsService:Landroid/graphics/Matrix;

    iget-object v3, p0, Lo/withFinalVisibility;->getInterfaceDescriptor:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 211
    iget-object v0, p0, Lo/withFinalVisibility;->newSession:Landroid/graphics/Matrix;

    iget-object v3, p0, Lo/withFinalVisibility;->ICustomTabsService:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 213
    iget-object v0, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    iget-object v3, p0, Lo/withFinalVisibility;->newSession:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 216
    :cond_9
    iget-object v0, p0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_b

    .line 217
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getIconUri$onMessageChannelReady;

    .line 37017
    iget v3, v0, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_a

    .line 37021
    iget v3, v0, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_b

    .line 219
    :cond_a
    iget-object v2, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    .line 38017
    iget v3, v0, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    .line 38021
    iget v0, v0, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    .line 219
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 223
    :cond_b
    iget-object v0, p0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_d

    .line 224
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 225
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_c

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_d

    .line 226
    :cond_c
    iget-object v1, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 230
    :cond_d
    iget-object v0, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final onNavigationEvent(F)Landroid/graphics/Matrix;
    .locals 9

    .line 243
    iget-object v0, p0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 244
    :goto_0
    iget-object v2, p0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getIconUri$onMessageChannelReady;

    .line 246
    :goto_1
    iget-object v3, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    .line 248
    iget-object v3, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 251
    iget-object v0, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    .line 39017
    iget v3, v2, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    float-to-double v3, v3

    float-to-double v5, p1

    .line 252
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 39021
    iget v2, v2, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    float-to-double v7, v2

    .line 253
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 251
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 255
    :cond_3
    iget-object v0, p0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_7

    .line 256
    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 257
    iget-object v2, p0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 258
    :goto_2
    iget-object v2, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    mul-float v0, v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 261
    :cond_7
    iget-object p1, p0, Lo/withFinalVisibility;->asInterface:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/onMeasureExactFormat;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)Z"
        }
    .end annotation

    .line 269
    sget-object v0, Lo/createRatingBar;->onMessageChannelReady:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 270
    iget-object p1, p0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    if-nez p1, :cond_0

    .line 271
    new-instance p1, Lo/onAnimationEnd;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    iput-object p1, p0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    goto/16 :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto/16 :goto_0

    .line 275
    :cond_1
    sget-object v0, Lo/createRatingBar;->onRelationshipValidationResult:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    .line 276
    iget-object p1, p0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    if-nez p1, :cond_2

    .line 277
    new-instance p1, Lo/onAnimationEnd;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    iput-object p1, p0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    goto/16 :goto_0

    .line 279
    :cond_2
    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto/16 :goto_0

    .line 281
    :cond_3
    sget-object v0, Lo/createRatingBar;->getInterfaceDescriptor:Lo/getIconUri$onMessageChannelReady;

    if-ne p1, v0, :cond_5

    .line 282
    iget-object p1, p0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-nez p1, :cond_4

    .line 283
    new-instance p1, Lo/onAnimationEnd;

    new-instance v0, Lo/getIconUri$onMessageChannelReady;

    invoke-direct {v0}, Lo/getIconUri$onMessageChannelReady;-><init>()V

    invoke-direct {p1, p2, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    iput-object p1, p0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    goto/16 :goto_0

    .line 285
    :cond_4
    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto/16 :goto_0

    .line 287
    :cond_5
    sget-object v0, Lo/createRatingBar;->warmup:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 288
    iget-object p1, p0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    if-nez p1, :cond_6

    .line 289
    new-instance p1, Lo/onAnimationEnd;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    iput-object p1, p0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    goto/16 :goto_0

    .line 291
    :cond_6
    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto/16 :goto_0

    .line 293
    :cond_7
    sget-object v0, Lo/createRatingBar;->ICustomTabsCallback:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_9

    .line 294
    iget-object p1, p0, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    if-nez p1, :cond_8

    .line 295
    new-instance p1, Lo/onAnimationEnd;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    iput-object p1, p0, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    goto/16 :goto_0

    .line 297
    :cond_8
    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto/16 :goto_0

    .line 299
    :cond_9
    sget-object v0, Lo/createRatingBar;->ICustomTabsService$Stub:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_b

    if-nez v0, :cond_a

    .line 301
    new-instance p1, Lo/onAnimationEnd;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    iput-object p1, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    goto :goto_0

    .line 303
    :cond_a
    invoke-virtual {v0, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto :goto_0

    .line 305
    :cond_b
    sget-object v0, Lo/createRatingBar;->cancelAll:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_d

    if-nez v0, :cond_c

    .line 307
    new-instance p1, Lo/onAnimationEnd;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lo/onAnimationEnd;-><init>(Lo/onMeasureExactFormat;Ljava/lang/Object;)V

    iput-object p1, p0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    goto :goto_0

    .line 309
    :cond_c
    invoke-virtual {v0, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto :goto_0

    .line 311
    :cond_d
    sget-object v0, Lo/createRatingBar;->ICustomTabsService:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    if-eqz v0, :cond_f

    if-nez v0, :cond_e

    .line 313
    new-instance p1, Lo/isOverflowMenuShowing;

    new-instance v0, Lo/ActionMenuView;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    .line 315
    :cond_e
    iget-object p1, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    goto :goto_0

    .line 316
    :cond_f
    sget-object v0, Lo/createRatingBar;->newSession:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    if-eqz p1, :cond_11

    if-nez p1, :cond_10

    .line 318
    new-instance p1, Lo/isOverflowMenuShowing;

    new-instance v0, Lo/ActionMenuView;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    .line 320
    :cond_10
    iget-object p1, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Lo/setOverlayMode;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lo/withFinalVisibility;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_0

    .line 17173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    iget-object v0, p0, Lo/withFinalVisibility;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_1

    .line 18173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    iget-object v0, p0, Lo/withFinalVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_2

    .line 19173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    iget-object v0, p0, Lo/withFinalVisibility;->onMessageChannelReady:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_3

    .line 20173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    iget-object v0, p0, Lo/withFinalVisibility;->onPostMessage:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_4

    .line 21173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_4
    iget-object v0, p0, Lo/withFinalVisibility;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_5

    .line 22173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_5
    iget-object v0, p0, Lo/withFinalVisibility;->extraCallback:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_6

    .line 23173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_6
    iget-object v0, p0, Lo/withFinalVisibility;->onTransact:Lo/isOverflowMenuShowing;

    if-eqz v0, :cond_7

    .line 24173
    iget-object v1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_7
    iget-object v0, p0, Lo/withFinalVisibility;->onRelationshipValidationResult:Lo/isOverflowMenuShowing;

    if-eqz v0, :cond_8

    .line 25173
    iget-object p1, p1, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
