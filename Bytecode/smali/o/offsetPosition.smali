.class public final Lo/offsetPosition;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0007H\u0002R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/ui/NeuImageButton;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "type",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "setContentDescription",
        "",
        "resId",
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
.field private onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/offsetPosition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/offsetPosition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v3, 0x2

    .line 29
    iput v3, v1, Lo/offsetPosition;->onPostMessage:I

    .line 32
    sget-object v4, Lo/shouldIgnore$onPostMessage;->NeuImageButton:[I

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [I

    const v7, 0x1010273

    const/4 v8, 0x0

    aput v7, v6, v8

    .line 34
    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Resources.getSystem()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x41800000    # 16.0f

    .line 1010
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 48
    :try_start_0
    sget v7, Lo/shouldIgnore$onPostMessage;->NeuImageButton_neuButtonType:I

    iget v9, v1, Lo/offsetPosition;->onPostMessage:I

    invoke-virtual {v4, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v1, Lo/offsetPosition;->onPostMessage:I

    .line 49
    sget v7, Lo/shouldIgnore$onPostMessage;->NeuImageButton_neuButtonRadius:I

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 50
    sget v7, Lo/shouldIgnore$onPostMessage;->NeuImageButton_neuBaseColor:I

    const v9, -0xdedbdb

    invoke-virtual {v4, v7, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 51
    sget v10, Lo/shouldIgnore$onPostMessage;->NeuImageButton_neuButtonColor:I

    invoke-virtual {v4, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 52
    sget v10, Lo/shouldIgnore$onPostMessage;->NeuImageButton_neuElevatedFlatAppearance:I

    sget v11, Lo/shouldIgnore$ICustomTabsCallback;->elevatedFlat_blueButton:I

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    if-eq v10, v12, :cond_0

    .line 54
    sget-object v12, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance:[I

    invoke-virtual {v0, v10, v12}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    sget v10, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonStartColor:I

    const-wide v12, 0x3fd1eb851eb851ecL    # 0.28

    .line 2009
    invoke-static {v9, v12, v13, v11}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v12

    .line 55
    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 56
    sget v12, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonEndColor:I

    invoke-virtual {v0, v12, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 57
    sget v13, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder1StartColor:I

    const-wide v14, 0x3fe6666666666666L    # 0.7

    .line 3009
    invoke-static {v9, v14, v15, v11}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v14

    .line 57
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 58
    sget v14, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder1EndColor:I

    move/from16 p2, v6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 3024
    invoke-static {v9, v5, v6, v11}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v15

    .line 58
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 59
    sget v15, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder2StartColor:I

    .line 4024
    invoke-static {v9, v5, v6, v11}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v5

    .line 59
    invoke-virtual {v0, v15, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 60
    sget v6, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder2EndColor:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 61
    sget v15, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonPressedDarkShadowColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v4

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 5024
    :try_start_1
    invoke-static {v9, v3, v4, v11}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v8

    .line 61
    invoke-virtual {v0, v15, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 62
    sget v15, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonCompatColor:I

    .line 6024
    invoke-static {v9, v3, v4, v11}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v3

    .line 62
    invoke-virtual {v0, v15, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v23, v8

    move v0, v10

    move v4, v13

    const/4 v10, 0x0

    move v8, v6

    move v6, v5

    move v5, v14

    move/from16 v26, v12

    move v12, v3

    move/from16 v3, v26

    goto :goto_0

    :cond_0
    move-object/from16 v17, v4

    move/from16 p2, v6

    const/4 v0, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v23, -0x1

    .line 65
    :goto_0
    invoke-virtual {v2, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_1

    .line 6144
    sget-object v10, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    sget-object v2, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    .line 7019
    invoke-static {}, Lo/clearOldPosition;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8000
    sget-object v2, Lo/clearOldPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    const/4 v10, 0x3

    if-nez v2, :cond_6

    .line 71
    iget v2, v1, Lo/offsetPosition;->onPostMessage:I

    const v9, 0x10100a7

    const/4 v11, 0x2

    if-ne v2, v11, :cond_4

    .line 72
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v2, 0x0

    aput v9, v3, v2

    .line 73
    new-instance v2, Lo/setScrapContainer;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-object v9, v2

    move/from16 v12, p2

    move v13, v7

    invoke-direct/range {v9 .. v14}, Lo/setScrapContainer;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFII)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, -0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 74
    new-instance v3, Lo/setScrapContainer;

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lo/setScrapContainer;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFII)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [I

    .line 75
    new-instance v3, Lo/setScrapContainer;

    const/4 v11, 0x0

    const/4 v14, 0x3

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lo/setScrapContainer;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFII)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 72
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lo/offsetPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    if-ne v2, v10, :cond_5

    .line 78
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v10, 0x1

    new-array v15, v10, [I

    const/4 v10, 0x0

    aput v9, v15, v10

    .line 79
    new-instance v24, Lo/isInvalid;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v21, 0x1

    move-object/from16 v9, v24

    move/from16 v12, p2

    move v13, v7

    move v14, v0

    move-object/from16 v25, v15

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    move/from16 v20, v23

    invoke-direct/range {v9 .. v21}, Lo/isInvalid;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFIIIIIIIII)V

    move-object/from16 v9, v24

    check-cast v9, Landroid/graphics/drawable/Drawable;

    move-object/from16 v10, v25

    invoke-virtual {v2, v10, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    new-array v15, v9, [I

    .line 90
    new-instance v22, Lo/isInvalid;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x3

    move-object/from16 v9, v22

    move-object v0, v15

    move v15, v3

    invoke-direct/range {v9 .. v21}, Lo/isInvalid;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFIIIIIIIII)V

    move-object/from16 v3, v22

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 78
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lo/offsetPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 102
    :cond_5
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v9, v2, v3

    .line 103
    new-instance v3, Lo/needsUpdate;

    const/4 v10, 0x0

    const/4 v12, 0x1

    iget v13, v1, Lo/offsetPosition;->onPostMessage:I

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x51

    move-object v9, v3

    move/from16 v11, p2

    move v15, v7

    invoke-direct/range {v9 .. v17}, Lo/needsUpdate;-><init>(FFZILo/MediaSessionCompat$1$onMessageChannelReady;III)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [I

    .line 104
    new-instance v3, Lo/needsUpdate;

    const/4 v12, 0x0

    iget v13, v1, Lo/offsetPosition;->onPostMessage:I

    const/16 v17, 0x55

    move-object v9, v3

    invoke-direct/range {v9 .. v17}, Lo/needsUpdate;-><init>(FFZILo/MediaSessionCompat$1$onMessageChannelReady;III)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 102
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lo/offsetPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 108
    :cond_6
    new-instance v0, Lo/isRemoved;

    .line 110
    iget v2, v1, Lo/offsetPosition;->onPostMessage:I

    if-ne v2, v10, :cond_7

    goto :goto_3

    :cond_7
    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    .line 8009
    invoke-static {v9, v2, v3, v11}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v2

    move v12, v2

    .line 115
    :goto_3
    iget v2, v1, Lo/offsetPosition;->onPostMessage:I

    if-ne v2, v10, :cond_8

    .line 116
    sget-object v2, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    const/4 v13, 0x0

    const/16 v14, 0x8

    move-object v9, v0

    move v10, v12

    move/from16 v11, p2

    move v12, v2

    .line 108
    invoke-direct/range {v9 .. v14}, Lo/isRemoved;-><init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lo/offsetPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v17, v4

    .line 68
    :goto_5
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lo/offsetPosition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget v0, p0, Lo/offsetPosition;->onPostMessage:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 131
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 132
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_3

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    .line 134
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x7

    .line 135
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 139
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setType(I)V
    .locals 0

    .line 29
    iput p1, p0, Lo/offsetPosition;->onPostMessage:I

    return-void
.end method
