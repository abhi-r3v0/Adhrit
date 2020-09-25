.class public final Lo/isInvalid;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001Bc\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\tH\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\tH\u0016J\u0012\u0010!\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006$"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/drawables/ElevatedFlatButtonDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "pressed",
        "",
        "cornerRadius",
        "",
        "baseColor",
        "",
        "neuButtonStartColor",
        "neuButtonEndColor",
        "neuButtonBorder1StartColor",
        "neuButtonBorder1EndColor",
        "neuButtonBorder2StartColor",
        "neuButtonBorder2EndColor",
        "neuButtonPressedDarkShadowColor",
        "(Lcom/dreamplug/ui/neu/internals/PaintHelper;ZFIIIIIIII)V",
        "backgroundPlatformDrawable",
        "Lcom/dreamplug/ui/neu/internals/ElevatedFlatPlatformHelper;",
        "buttonHelper",
        "Lcom/dreamplug/ui/neu/internals/ElevatedFlatButtonHelper;",
        "buttonRadius",
        "clipOffset",
        "getPressed",
        "()Z",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
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
.field private ICustomTabsCallback:Lo/applyTrackTint;

.field private final asInterface:I

.field private extraCallback:Lo/setTrackTintList$extraCallback;

.field private final onMessageChannelReady:F

.field private final onNavigationEvent:Z

.field private onPostMessage:I


# direct methods
.method private constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFIIIIIIII)V
    .locals 14

    move-object v0, p0

    const-string v1, "paintHelper"

    move-object v9, p1

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    move/from16 v1, p2

    iput-boolean v1, v0, Lo/isInvalid;->onNavigationEvent:Z

    move/from16 v1, p4

    iput v1, v0, Lo/isInvalid;->asInterface:I

    .line 37
    new-instance v1, Lo/applyTrackTint;

    iget v3, v0, Lo/isInvalid;->asInterface:I

    iget-boolean v6, v0, Lo/isInvalid;->onNavigationEvent:Z

    const/4 v4, 0x0

    const/16 v8, 0xa

    move-object v2, v1

    move/from16 v5, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lo/applyTrackTint;-><init>(IFFZLo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v1, v0, Lo/isInvalid;->ICustomTabsCallback:Lo/applyTrackTint;

    .line 38
    sget-object v1, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v1

    sub-float v4, p3, v1

    iput v4, v0, Lo/isInvalid;->onMessageChannelReady:F

    .line 39
    new-instance v1, Lo/setTrackTintList$extraCallback;

    .line 40
    iget v3, v0, Lo/isInvalid;->asInterface:I

    .line 43
    iget-boolean v5, v0, Lo/isInvalid;->onNavigationEvent:Z

    move-object v2, v1

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    .line 39
    invoke-direct/range {v2 .. v13}, Lo/setTrackTintList$extraCallback;-><init>(IFZLo/MediaSessionCompat$1$onMessageChannelReady;IIIIIII)V

    iput-object v1, v0, Lo/isInvalid;->extraCallback:Lo/setTrackTintList$extraCallback;

    .line 52
    iget v1, v0, Lo/isInvalid;->onMessageChannelReady:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v1, v2

    sget-object v2, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lo/isInvalid;->onPostMessage:I

    return-void
.end method

.method public synthetic constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFIIIIIIIII)V
    .locals 13

    and-int/lit8 v0, p12, 0x1

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {v0}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v0, p12, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_2

    const v0, -0xdedcdc

    const v5, -0xdedcdc

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    move-object v1, p0

    move/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    .line 27
    invoke-direct/range {v1 .. v12}, Lo/isInvalid;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFIIIIIIII)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 56
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 57
    iget v3, p0, Lo/isInvalid;->onPostMessage:I

    sub-int v4, v2, v3

    sub-int v5, v1, v3

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 76
    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->clipOutRect(IIII)Z

    .line 58
    :try_start_0
    iget-object v3, p0, Lo/isInvalid;->ICustomTabsCallback:Lo/applyTrackTint;

    invoke-virtual {v3, p1, v1, v2}, Lo/applyTrackTint;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 80
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 60
    sget-object v3, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v3

    sget-object v4, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v4

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 84
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    :try_start_1
    iget-object v3, p0, Lo/isInvalid;->extraCallback:Lo/setTrackTintList$extraCallback;

    int-to-float v1, v1

    sget-object v4, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v4, v4, v6

    sub-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    sget-object v4, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v4

    mul-float v4, v4, v6

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    iget v0, v3, Lo/setTrackTintList$extraCallback;->asInterface:F

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    .line 1073
    iget v4, v3, Lo/setTrackTintList$extraCallback;->asInterface:F

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v2

    int-to-float v12, v1

    int-to-float v13, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1076
    sget-object v11, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v6, p1

    move v9, v13

    move v10, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1078
    iget v6, v3, Lo/setTrackTintList$extraCallback;->asInterface:F

    neg-float v6, v6

    iget v7, v3, Lo/setTrackTintList$extraCallback;->asInterface:F

    neg-float v7, v7

    .line 1097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 1098
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1079
    :try_start_2
    iget-object v6, v3, Lo/setTrackTintList$extraCallback;->onNavigationEvent:Lo/addChangePayload;

    invoke-virtual {v6, p1, v0, v4}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V

    .line 1080
    iget-boolean v6, v3, Lo/setTrackTintList$extraCallback;->asBinder:Z

    if-eqz v6, :cond_2

    .line 1081
    iget-object v0, v3, Lo/setTrackTintList$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v13

    if-nez v0, :cond_0

    iget-object v0, v3, Lo/setTrackTintList$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v12

    if-eqz v0, :cond_1

    .line 1082
    :cond_0
    iget-object v0, v3, Lo/setTrackTintList$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1083
    iget-object v0, v3, Lo/setTrackTintList$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1084
    iget-object v0, v3, Lo/setTrackTintList$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Path;

    iget-object v4, v3, Lo/setTrackTintList$extraCallback;->ICustomTabsCallback$Stub:Landroid/graphics/RectF;

    iget v6, v3, Lo/setTrackTintList$extraCallback;->onTransact:F

    iget v7, v3, Lo/setTrackTintList$extraCallback;->onTransact:F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v6, v7, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1086
    :cond_1
    iget-object v0, v3, Lo/setTrackTintList$extraCallback;->onRelationshipValidationResult:Landroid/graphics/Path;

    .line 1101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1102
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1087
    :try_start_3
    iget-object v0, v3, Lo/setTrackTintList$extraCallback;->onMessageChannelReady:Lo/createPayloadsIfNeeded;

    iget v6, v3, Lo/setTrackTintList$extraCallback;->onPostMessage:F

    float-to-int v6, v6

    add-int/2addr v1, v6

    iget v3, v3, Lo/setTrackTintList$extraCallback;->onPostMessage:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1106
    :try_start_4
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    .line 1090
    :cond_2
    iget-object v1, v3, Lo/setTrackTintList$extraCallback;->extraCallback:Lo/addChangePayload;

    invoke-virtual {v1, p1, v0, v4}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V

    .line 1091
    iget-object v1, v3, Lo/setTrackTintList$extraCallback;->ICustomTabsCallback:Lo/addChangePayload;

    invoke-virtual {v1, p1, v0, v4}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1109
    :goto_0
    :try_start_5
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :catchall_3
    move-exception v0

    .line 80
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
