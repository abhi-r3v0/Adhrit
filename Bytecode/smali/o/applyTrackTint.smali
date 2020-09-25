.class public final Lo/applyTrackTint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001e\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR$\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012\"\u0004\u0008\u001f\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0012\"\u0004\u0008!\u0010\u0014R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0012\u00a8\u0006)"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/ElevatedFlatPlatformHelper;",
        "",
        "baseColor",
        "",
        "shadowOffset",
        "",
        "cornerRadius",
        "spread",
        "pressed",
        "",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "(IFFFZLcom/dreamplug/ui/neu/internals/PaintHelper;)V",
        "getBaseColor",
        "()I",
        "clipOffset",
        "value",
        "getCornerRadius",
        "()F",
        "setCornerRadius",
        "(F)V",
        "darkShadow",
        "Lcom/dreamplug/ui/neu/internals/BlurHelper;",
        "finalCornerRadiusF",
        "lightShadow",
        "mainPlatformHelper",
        "Lcom/dreamplug/ui/neu/internals/BlurGradientHelper;",
        "getPressed",
        "()Z",
        "shadowBlur",
        "getShadowBlur",
        "setShadowBlur",
        "getShadowOffset",
        "setShadowOffset",
        "getSpread",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "height",
        "width",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/createPayloadsIfNeeded;

.field private ICustomTabsCallback$Stub:F

.field private final asBinder:I

.field private final extraCallback:Lo/createPayloadsIfNeeded;

.field private onMessageChannelReady:F

.field private onNavigationEvent:I

.field private final onPostMessage:Lo/addChangePayload;

.field private final onRelationshipValidationResult:F

.field private onTransact:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IFFFLo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    const-string v2, "paintHelper"

    move-object/from16 v9, p5

    invoke-static {v9, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move/from16 v2, p1

    iput v2, v0, Lo/applyTrackTint;->asBinder:I

    const/4 v2, 0x0

    iput v2, v0, Lo/applyTrackTint;->onRelationshipValidationResult:F

    add-float v3, v1, v2

    .line 2023
    iput v3, v0, Lo/applyTrackTint;->onMessageChannelReady:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 2024
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lo/applyTrackTint;->onNavigationEvent:I

    .line 2026
    new-instance v11, Lo/createPayloadsIfNeeded;

    iget v5, v0, Lo/applyTrackTint;->onMessageChannelReady:F

    iget v3, v0, Lo/applyTrackTint;->asBinder:I

    const-wide v6, 0x3fd3333333333333L    # 0.3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v6, v7, v4}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v6

    const/16 v8, 0x8

    move-object v3, v11

    move/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v11, v0, Lo/applyTrackTint;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    .line 2027
    new-instance v11, Lo/createPayloadsIfNeeded;

    iget v5, v0, Lo/applyTrackTint;->onMessageChannelReady:F

    iget v3, v0, Lo/applyTrackTint;->asBinder:I

    const-wide v6, 0x3fe3333333333333L    # 0.6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v6, 0x3fe999999999999aL    # 0.8

    invoke-static {v3, v6, v7, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    move-object v3, v11

    move/from16 v4, p2

    move-object/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v11, v0, Lo/applyTrackTint;->extraCallback:Lo/createPayloadsIfNeeded;

    .line 2028
    new-instance v11, Lo/addChangePayload;

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v12, "Resources.getSystem()"

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v13, 0x1

    .line 3010
    invoke-static {v13, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 2028
    iget v5, v0, Lo/applyTrackTint;->onMessageChannelReady:F

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/4 v6, 0x0

    const/4 v14, 0x4

    move-object v3, v11

    move v9, v14

    invoke-direct/range {v3 .. v9}, Lo/addChangePayload;-><init>(FFZLo/MediaSessionCompat$1$onMessageChannelReady;Landroid/graphics/BlurMaskFilter$Blur;I)V

    iput-object v11, v0, Lo/applyTrackTint;->onPostMessage:Lo/addChangePayload;

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 4010
    invoke-static {v13, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 2046
    iget-object v2, v0, Lo/applyTrackTint;->onPostMessage:Lo/addChangePayload;

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v12}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 5010
    invoke-static {v13, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 5025
    iput v3, v2, Lo/addChangePayload;->ICustomTabsCallback:F

    .line 5026
    iget-object v3, v2, Lo/addChangePayload;->onMessageChannelReady:Landroid/graphics/Paint;

    iget v2, v2, Lo/addChangePayload;->ICustomTabsCallback:F

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5040
    iput v1, v0, Lo/applyTrackTint;->onTransact:F

    .line 5041
    iget-object v2, v0, Lo/applyTrackTint;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    iget v3, v0, Lo/applyTrackTint;->onRelationshipValidationResult:F

    add-float/2addr v1, v3

    .line 6027
    iput v1, v2, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    .line 5042
    iget-object v1, v0, Lo/applyTrackTint;->extraCallback:Lo/createPayloadsIfNeeded;

    iget v2, v0, Lo/applyTrackTint;->onTransact:F

    iget v3, v0, Lo/applyTrackTint;->onRelationshipValidationResult:F

    add-float/2addr v2, v3

    .line 7027
    iput v2, v1, Lo/createPayloadsIfNeeded;->onNavigationEvent:F

    move/from16 v1, p2

    .line 2048
    iput v1, v0, Lo/applyTrackTint;->ICustomTabsCallback$Stub:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2051
    iget v3, v0, Lo/applyTrackTint;->asBinder:I

    const/4 v4, 0x0

    const-wide v5, 0x3faeb851eb851eb8L    # 0.06

    .line 8009
    invoke-static {v3, v5, v6, v4}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v3

    const/4 v5, 0x0

    aput v3, v2, v5

    .line 2052
    iget v3, v0, Lo/applyTrackTint;->asBinder:I

    const-wide v5, 0x3fc999999999999aL    # 0.2

    .line 8024
    invoke-static {v3, v5, v6, v4}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v3

    aput v3, v2, v13

    new-array v1, v1, [F

    .line 2054
    fill-array-data v1, :array_0

    .line 2055
    iget-object v3, v0, Lo/applyTrackTint;->onPostMessage:Lo/addChangePayload;

    .line 9017
    iput-object v2, v3, Lo/addChangePayload;->onPostMessage:[I

    .line 2056
    iget-object v2, v0, Lo/applyTrackTint;->onPostMessage:Lo/addChangePayload;

    .line 10016
    iput-object v1, v2, Lo/addChangePayload;->extraCallback:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(IFFZLo/MediaSessionCompat$1$onMessageChannelReady;I)V
    .locals 8

    and-int/lit8 p4, p6, 0x2

    const/4 v0, 0x1

    const-string v1, "Resources.getSystem()"

    if-eqz p4, :cond_0

    .line 12009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p4, 0x41400000    # 12.0f

    .line 12010
    invoke-static {v0, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    :cond_0
    move v4, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 13009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x41a00000    # 20.0f

    .line 13010
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    :cond_1
    move v5, p3

    and-int/lit8 p2, p6, 0x20

    if-eqz p2, :cond_2

    .line 11020
    new-instance p2, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {p2}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    move-object p5, p2

    check-cast p5, Lo/MediaSessionCompat$1$onMessageChannelReady;

    :cond_2
    move-object v7, p5

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lo/applyTrackTint;-><init>(IFFFLo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iget v0, p0, Lo/applyTrackTint;->onRelationshipValidationResult:F

    float-to-int v1, v0

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr p2, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr p3, v0

    int-to-float v3, p3

    int-to-float v4, p2

    .line 1063
    sget-object v5, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    iget v0, p0, Lo/applyTrackTint;->onRelationshipValidationResult:F

    neg-float v1, v0

    neg-float v0, v0

    .line 1081
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1082
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1067
    :try_start_0
    iget v0, p0, Lo/applyTrackTint;->onNavigationEvent:I

    iget v1, p0, Lo/applyTrackTint;->onNavigationEvent:I

    iget v3, p0, Lo/applyTrackTint;->onNavigationEvent:I

    sub-int v3, p3, v3

    iget v4, p0, Lo/applyTrackTint;->onNavigationEvent:I

    sub-int v4, p2, v4

    .line 1085
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1086
    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->clipOutRect(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1068
    :try_start_1
    iget v0, p0, Lo/applyTrackTint;->ICustomTabsCallback$Stub:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v3, p0, Lo/applyTrackTint;->ICustomTabsCallback$Stub:F

    div-float/2addr v3, v1

    .line 1089
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1090
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1069
    :try_start_2
    iget-object v0, p0, Lo/applyTrackTint;->extraCallback:Lo/createPayloadsIfNeeded;

    invoke-virtual {v0, p1, p2, p3}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1094
    :try_start_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1071
    iget v0, p0, Lo/applyTrackTint;->ICustomTabsCallback$Stub:F

    neg-float v0, v0

    div-float/2addr v0, v1

    iget v3, p0, Lo/applyTrackTint;->ICustomTabsCallback$Stub:F

    neg-float v3, v3

    div-float/2addr v3, v1

    .line 1097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1098
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1072
    :try_start_4
    iget-object v0, p0, Lo/applyTrackTint;->ICustomTabsCallback:Lo/createPayloadsIfNeeded;

    invoke-virtual {v0, p1, p2, p3}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1102
    :try_start_5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1105
    :try_start_6
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1076
    iget-object v0, p0, Lo/applyTrackTint;->onPostMessage:Lo/addChangePayload;

    invoke-virtual {v0, p1, p2, p3}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1108
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p2

    .line 1102
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2

    :catchall_1
    move-exception p2

    .line 1094
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p2

    .line 1105
    :try_start_8
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p2

    .line 1108
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p2

    :cond_0
    return-void
.end method
