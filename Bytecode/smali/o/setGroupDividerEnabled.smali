.class public final Lo/setGroupDividerEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setForceShowIcon;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;


# instance fields
.field private final ICustomTabsCallback:Lo/createCheckedTextView;

.field private final ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsService:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroid/graphics/Path;

.field private getInterfaceDescriptor:Z

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/shouldDelayChildPressedState$onPostMessage;

.field private final onRelationshipValidationResult:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/shouldDelayChildPressedState;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    .line 43
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;-><init>()V

    iput-object v0, p0, Lo/setGroupDividerEnabled;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 48
    iput-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback:Lo/createCheckedTextView;

    .line 1062
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->onMessageChannelReady:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lo/setGroupDividerEnabled;->onNavigationEvent:Ljava/lang/String;

    .line 1066
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->onNavigationEvent:Lo/shouldDelayChildPressedState$onPostMessage;

    .line 51
    iput-object p1, p0, Lo/setGroupDividerEnabled;->onPostMessage:Lo/shouldDelayChildPressedState$onPostMessage;

    .line 1098
    iget-boolean p1, p3, Lo/shouldDelayChildPressedState;->asInterface:Z

    .line 52
    iput-boolean p1, p0, Lo/setGroupDividerEnabled;->onMessageChannelReady:Z

    .line 2070
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->ICustomTabsCallback:Lo/setTransitioning;

    .line 3020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 53
    iput-object v0, p0, Lo/setGroupDividerEnabled;->asInterface:Lo/isOverflowMenuShowPending;

    .line 3074
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->extraCallback:Lo/onLayout;

    .line 54
    invoke-interface {p1}, Lo/onLayout;->onPostMessage()Lo/isOverflowMenuShowPending;

    move-result-object p1

    iput-object p1, p0, Lo/setGroupDividerEnabled;->onTransact:Lo/isOverflowMenuShowPending;

    .line 3078
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->onPostMessage:Lo/setTransitioning;

    .line 4020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 55
    iput-object v0, p0, Lo/setGroupDividerEnabled;->asBinder:Lo/isOverflowMenuShowPending;

    .line 4086
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->onTransact:Lo/setTransitioning;

    .line 5020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 56
    iput-object v0, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 5094
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->asBinder:Lo/setTransitioning;

    .line 6020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 57
    iput-object v0, p0, Lo/setGroupDividerEnabled;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    .line 58
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onPostMessage:Lo/shouldDelayChildPressedState$onPostMessage;

    sget-object v0, Lo/shouldDelayChildPressedState$onPostMessage;->onMessageChannelReady:Lo/shouldDelayChildPressedState$onPostMessage;

    if-ne p1, v0, :cond_0

    .line 6082
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->onRelationshipValidationResult:Lo/setTransitioning;

    .line 7020
    new-instance v0, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 59
    iput-object v0, p0, Lo/setGroupDividerEnabled;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    .line 7090
    iget-object p1, p3, Lo/shouldDelayChildPressedState;->ICustomTabsCallback$Stub:Lo/setTransitioning;

    .line 8020
    new-instance p3, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p3, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 60
    iput-object p3, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lo/setGroupDividerEnabled;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    .line 63
    iput-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    .line 66
    :goto_0
    iget-object p1, p0, Lo/setGroupDividerEnabled;->asInterface:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 8173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onTransact:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 9173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    iget-object p1, p0, Lo/setGroupDividerEnabled;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_3

    .line 10173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_4

    .line 11173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_4
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_5

    .line 12173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_5
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onPostMessage:Lo/shouldDelayChildPressedState$onPostMessage;

    sget-object p3, Lo/shouldDelayChildPressedState$onPostMessage;->onMessageChannelReady:Lo/shouldDelayChildPressedState$onPostMessage;

    if-ne p1, p3, :cond_7

    .line 72
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_6

    .line 13173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_6
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_7

    .line 14173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_7
    iget-object p1, p0, Lo/setGroupDividerEnabled;->asInterface:Lo/isOverflowMenuShowPending;

    .line 15045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onTransact:Lo/isOverflowMenuShowPending;

    .line 16045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lo/setGroupDividerEnabled;->asBinder:Lo/isOverflowMenuShowPending;

    .line 17045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    .line 18045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    .line 19045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onPostMessage:Lo/shouldDelayChildPressedState$onPostMessage;

    sget-object p2, Lo/shouldDelayChildPressedState$onPostMessage;->onMessageChannelReady:Lo/shouldDelayChildPressedState$onPostMessage;

    if-ne p1, p2, :cond_8

    .line 82
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    .line 20045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    .line 21045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 21092
    iput-boolean v0, p0, Lo/setGroupDividerEnabled;->getInterfaceDescriptor:Z

    .line 21093
    iget-object v0, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback:Lo/createCheckedTextView;

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

    .line 309
    sget-object v0, Lo/createRatingBar;->postMessage:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    .line 310
    iget-object p1, p0, Lo/setGroupDividerEnabled;->asInterface:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 311
    :cond_0
    sget-object v0, Lo/createRatingBar;->extraCommand:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 312
    iget-object p1, p0, Lo/setGroupDividerEnabled;->asBinder:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 313
    :cond_1
    sget-object v0, Lo/createRatingBar;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    .line 314
    iget-object p1, p0, Lo/setGroupDividerEnabled;->onTransact:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 315
    :cond_2
    sget-object v0, Lo/createRatingBar;->validateRelationship:Ljava/lang/Float;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lo/setGroupDividerEnabled;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {v0, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 317
    :cond_3
    sget-object v0, Lo/createRatingBar;->IPostMessageService$Stub:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 318
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 319
    :cond_4
    sget-object v0, Lo/createRatingBar;->ICustomTabsService$Stub$Proxy:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz v0, :cond_5

    .line 320
    invoke-virtual {v0, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 321
    :cond_5
    sget-object v0, Lo/createRatingBar;->IPostMessageService:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 322
    iget-object p1, p0, Lo/setGroupDividerEnabled;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    :cond_6
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    const/4 p2, 0x0

    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 98
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 99
    instance-of v1, v0, Lo/setupAnimatorToVisibility;

    if-eqz v1, :cond_0

    check-cast v0, Lo/setupAnimatorToVisibility;

    .line 22056
    iget-object v1, v0, Lo/setupAnimatorToVisibility;->onMessageChannelReady:Lo/init$ICustomTabsCallback;

    .line 100
    sget-object v2, Lo/init$ICustomTabsCallback;->onPostMessage:Lo/init$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    .line 102
    iget-object v1, p0, Lo/setGroupDividerEnabled;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 23014
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23052
    iget-object v0, v0, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/Path;
    .locals 44

    move-object/from16 v0, p0

    .line 109
    iget-boolean v1, v0, Lo/setGroupDividerEnabled;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    return-object v1

    .line 113
    :cond_0
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 115
    iget-boolean v1, v0, Lo/setGroupDividerEnabled;->onMessageChannelReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 116
    iput-boolean v2, v0, Lo/setGroupDividerEnabled;->getInterfaceDescriptor:Z

    .line 117
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    return-object v1

    .line 120
    :cond_1
    sget-object v1, Lo/setGroupDividerEnabled$5;->ICustomTabsCallback:[I

    iget-object v3, v0, Lo/setGroupDividerEnabled;->onPostMessage:Lo/shouldDelayChildPressedState$onPostMessage;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v5, 0x4056800000000000L    # 90.0

    const-wide/16 v7, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v13, 0x0

    if-eq v1, v2, :cond_6

    const/4 v14, 0x2

    if-eq v1, v14, :cond_2

    goto/16 :goto_11

    .line 23248
    :cond_2
    iget-object v1, v0, Lo/setGroupDividerEnabled;->asInterface:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v1, v14

    .line 23249
    iget-object v14, v0, Lo/setGroupDividerEnabled;->asBinder:Lo/isOverflowMenuShowPending;

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v14}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    float-to-double v7, v7

    :goto_0
    sub-double/2addr v7, v5

    .line 23253
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    int-to-double v7, v1

    div-double/2addr v3, v7

    double-to-float v1, v3

    .line 23257
    iget-object v3, v0, Lo/setGroupDividerEnabled;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    invoke-virtual {v3}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    div-float/2addr v3, v10

    .line 23258
    iget-object v4, v0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v4}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    float-to-double v14, v4

    .line 23263
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v9, v14, v16

    double-to-float v9, v9

    .line 23264
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v11, v14, v16

    double-to-float v10, v11

    .line 23265
    iget-object v11, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v11, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    float-to-double v11, v1

    add-double/2addr v5, v11

    .line 23268
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    move/from16 v17, v3

    move v1, v9

    const/4 v9, 0x0

    :goto_1
    int-to-double v2, v9

    cmpg-double v18, v2, v7

    if-gez v18, :cond_5

    .line 23272
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v14

    double-to-float v2, v2

    .line 23273
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    move-wide/from16 v26, v7

    mul-double v7, v14, v19

    double-to-float v3, v7

    cmpl-float v7, v17, v13

    if-eqz v7, :cond_4

    float-to-double v7, v10

    move-wide/from16 v28, v14

    float-to-double v13, v1

    .line 23276
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    const-wide v13, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v7, v13

    double-to-float v7, v7

    float-to-double v7, v7

    .line 23277
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 23278
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v14, v3

    move/from16 v18, v9

    float-to-double v8, v2

    .line 23280
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v8, v14

    double-to-float v8, v8

    float-to-double v8, v8

    .line 23281
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    .line 23282
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v9, v4, v17

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float v9, v9, v15

    mul-float v13, v13, v9

    mul-float v7, v7, v9

    mul-float v14, v14, v9

    mul-float v9, v9, v8

    .line 23288
    iget-object v8, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    sub-float v20, v1, v13

    sub-float v21, v10, v7

    add-float v22, v2, v14

    add-float v23, v3, v9

    move-object/from16 v19, v8

    move/from16 v24, v2

    move/from16 v25, v3

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_4
    move/from16 v18, v9

    move-wide/from16 v28, v14

    .line 23290
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    add-double/2addr v5, v11

    add-int/lit8 v9, v18, 0x1

    move v1, v2

    move v10, v3

    move-wide/from16 v7, v26

    move-wide/from16 v14, v28

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 23296
    :cond_5
    iget-object v1, v0, Lo/setGroupDividerEnabled;->onTransact:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 23297
    iget-object v2, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 23298
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_11

    .line 23142
    :cond_6
    iget-object v1, v0, Lo/setGroupDividerEnabled;->asInterface:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 23143
    iget-object v2, v0, Lo/setGroupDividerEnabled;->asBinder:Lo/isOverflowMenuShowPending;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v7, v2

    :goto_3
    sub-double/2addr v7, v5

    .line 23147
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    float-to-double v7, v1

    div-double/2addr v3, v7

    double-to-float v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    float-to-int v9, v1

    int-to-float v9, v9

    sub-float/2addr v1, v9

    const/4 v9, 0x0

    cmpl-float v11, v1, v9

    if-eqz v11, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v1

    mul-float v9, v9, v4

    float-to-double v12, v9

    add-double/2addr v5, v12

    .line 23156
    :cond_8
    iget-object v9, v0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub:Lo/isOverflowMenuShowPending;

    invoke-virtual {v9}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    .line 23158
    iget-object v12, v0, Lo/setGroupDividerEnabled;->onRelationshipValidationResult:Lo/isOverflowMenuShowPending;

    invoke-virtual {v12}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    .line 23161
    iget-object v13, v0, Lo/setGroupDividerEnabled;->ICustomTabsCallback$Stub$Proxy:Lo/isOverflowMenuShowPending;

    if-eqz v13, :cond_9

    .line 23162
    invoke-virtual {v13}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    div-float/2addr v13, v10

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    .line 23165
    :goto_4
    iget-object v14, v0, Lo/setGroupDividerEnabled;->ICustomTabsService:Lo/isOverflowMenuShowPending;

    if-eqz v14, :cond_a

    .line 23166
    invoke-virtual {v14}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    move-result v14

    div-float v10, v14, v10

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    if-eqz v11, :cond_b

    sub-float v14, v9, v12

    mul-float v14, v14, v1

    add-float/2addr v14, v12

    move/from16 v17, v4

    float-to-double v3, v14

    .line 23176
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    move/from16 v21, v14

    mul-double v14, v3, v19

    double-to-float v14, v14

    .line 23177
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v3, v3, v19

    double-to-float v3, v3

    .line 23178
    iget-object v4, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v4, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v4, v2, v1

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v4, v15

    move/from16 v19, v3

    float-to-double v3, v4

    add-double/2addr v5, v3

    move/from16 v4, v17

    move/from16 v3, v19

    goto :goto_6

    :cond_b
    move/from16 v17, v4

    float-to-double v3, v9

    .line 23181
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v14, v3, v19

    double-to-float v14, v14

    .line 23182
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v3, v3, v19

    double-to-float v3, v3

    .line 23183
    iget-object v4, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v4, v14, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v4, v17

    move/from16 v17, v14

    float-to-double v14, v4

    add-double/2addr v5, v14

    move/from16 v14, v17

    const/16 v21, 0x0

    .line 23189
    :goto_6
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v19

    move/from16 v17, v11

    move/from16 v23, v12

    move v15, v14

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_7
    int-to-double v11, v14

    cmpg-double v24, v11, v7

    if-gez v24, :cond_16

    if-eqz v18, :cond_c

    move/from16 v24, v9

    goto :goto_8

    :cond_c
    move/from16 v24, v23

    :goto_8
    const/16 v25, 0x0

    cmpl-float v26, v21, v25

    if-eqz v26, :cond_d

    sub-double v28, v7, v19

    cmpl-double v25, v11, v28

    if-nez v25, :cond_d

    mul-float v25, v2, v1

    const/high16 v22, 0x40000000    # 2.0f

    div-float v25, v25, v22

    move/from16 v43, v25

    move/from16 v25, v2

    move/from16 v2, v43

    goto :goto_9

    :cond_d
    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v25, v2

    move v2, v4

    :goto_9
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    if-eqz v26, :cond_e

    sub-double v26, v7, v28

    cmpl-double v30, v11, v26

    if-nez v30, :cond_e

    move/from16 v26, v4

    move-wide/from16 v30, v11

    move/from16 v4, v21

    goto :goto_a

    :cond_e
    move/from16 v26, v4

    move-wide/from16 v30, v11

    move/from16 v4, v24

    :goto_a
    float-to-double v11, v4

    .line 23201
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v32

    move-wide/from16 v34, v7

    mul-double v7, v11, v32

    double-to-float v4, v7

    .line 23202
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v11, v11, v7

    double-to-float v7, v11

    const/4 v8, 0x0

    cmpl-float v11, v13, v8

    if-nez v11, :cond_f

    cmpl-float v11, v10, v8

    if-nez v11, :cond_f

    .line 23205
    iget-object v3, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v24, v9

    move/from16 v32, v10

    move/from16 v27, v13

    goto/16 :goto_10

    :cond_f
    float-to-double v11, v3

    move/from16 v24, v9

    float-to-double v8, v15

    .line 23207
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v11, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v8, v11

    double-to-float v8, v8

    float-to-double v8, v8

    .line 23208
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 23209
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    move v12, v10

    float-to-double v9, v7

    move/from16 v32, v12

    move/from16 v27, v13

    float-to-double v12, v4

    .line 23211
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    const-wide v12, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v9, v12

    double-to-float v9, v9

    float-to-double v9, v9

    .line 23212
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    .line 23213
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    if-eqz v18, :cond_10

    move/from16 v10, v27

    goto :goto_b

    :cond_10
    move/from16 v10, v32

    :goto_b
    if-eqz v18, :cond_11

    move/from16 v13, v32

    goto :goto_c

    :cond_11
    move/from16 v13, v27

    :goto_c
    if-eqz v18, :cond_12

    move/from16 v33, v23

    goto :goto_d

    :cond_12
    move/from16 v33, v24

    :goto_d
    if-eqz v18, :cond_13

    move/from16 v36, v24

    goto :goto_e

    :cond_13
    move/from16 v36, v23

    :goto_e
    mul-float v33, v33, v10

    const v10, 0x3ef4e26d    # 0.47829f

    mul-float v33, v33, v10

    mul-float v11, v11, v33

    mul-float v33, v33, v8

    mul-float v36, v36, v13

    mul-float v36, v36, v10

    mul-float v12, v12, v36

    mul-float v36, v36, v9

    if-eqz v17, :cond_15

    if-nez v14, :cond_14

    mul-float v11, v11, v1

    mul-float v33, v33, v1

    goto :goto_f

    :cond_14
    sub-double v8, v34, v28

    cmpl-double v10, v30, v8

    if-nez v10, :cond_15

    mul-float v12, v12, v1

    mul-float v36, v36, v1

    .line 23234
    :cond_15
    :goto_f
    iget-object v8, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    sub-float v37, v15, v11

    sub-float v38, v3, v33

    add-float v39, v4, v12

    add-float v40, v7, v36

    move-object/from16 v36, v8

    move/from16 v41, v4

    move/from16 v42, v7

    invoke-virtual/range {v36 .. v42}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_10
    float-to-double v2, v2

    add-double/2addr v5, v2

    xor-int/lit8 v18, v18, 0x1

    add-int/lit8 v14, v14, 0x1

    move v15, v4

    move v3, v7

    move/from16 v9, v24

    move/from16 v2, v25

    move/from16 v4, v26

    move/from16 v13, v27

    move/from16 v10, v32

    move-wide/from16 v7, v34

    goto/16 :goto_7

    .line 23242
    :cond_16
    iget-object v1, v0, Lo/setGroupDividerEnabled;->onTransact:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 23243
    iget-object v2, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 23244
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 129
    :goto_11
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 131
    iget-object v1, v0, Lo/setGroupDividerEnabled;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    iget-object v2, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->ICustomTabsCallback(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    .line 133
    iput-boolean v1, v0, Lo/setGroupDividerEnabled;->getInterfaceDescriptor:Z

    .line 134
    iget-object v1, v0, Lo/setGroupDividerEnabled;->extraCallback:Landroid/graphics/Path;

    return-object v1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lo/setGroupDividerEnabled;->onNavigationEvent:Ljava/lang/String;

    return-object v0
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

    .line 303
    invoke-static {p1, p2, p3, p4, p0}, Lo/onContentScrollStopped;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V

    return-void
.end method
