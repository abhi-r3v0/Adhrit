.class public final Lo/saveOldPosition;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/ui/NeuButton;",
        "Landroidx/appcompat/widget/AppCompatButton;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "buttonColor",
        "iconPitRadius",
        "",
        "type",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "removeButtonIcon",
        "",
        "setButtonDrawable",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
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
.field private ICustomTabsCallback:F

.field private onMessageChannelReady:I

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/saveOldPosition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lo/saveOldPosition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "context"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x2

    .line 27
    iput v2, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "Resources.getSystem()"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x1

    .line 1010
    invoke-static {v6, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 28
    iput v3, v1, Lo/saveOldPosition;->ICustomTabsCallback:F

    const/4 v3, -0x1

    .line 29
    iput v3, v1, Lo/saveOldPosition;->onPostMessage:I

    .line 32
    sget-object v7, Lo/shouldIgnore$onPostMessage;->NeuButton:[I

    move-object/from16 v8, p2

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/high16 v9, 0x41800000    # 16.0f

    .line 2010
    invoke-static {v6, v9, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 45
    :try_start_0
    sget v9, Lo/shouldIgnore$onPostMessage;->NeuButton_neuButtonType:I

    iget v10, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    .line 46
    sget v9, Lo/shouldIgnore$onPostMessage;->NeuButton_neuButtonRadius:I

    invoke-virtual {v7, v9, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    .line 47
    sget v9, Lo/shouldIgnore$onPostMessage;->NeuButton_neuButtonDrawablePitRadius:I

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 3010
    invoke-static {v6, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    sub-float v4, v8, v4

    .line 47
    invoke-virtual {v7, v9, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, v1, Lo/saveOldPosition;->ICustomTabsCallback:F

    .line 48
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const/4 v9, 0x0

    if-ge v4, v5, :cond_1

    .line 49
    sget v4, Lo/shouldIgnore$onPostMessage;->NeuButton_neuButtonDrawable:I

    invoke-virtual {v7, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 51
    invoke-static {v0, v4}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v9

    goto :goto_0

    .line 54
    :cond_1
    sget v4, Lo/shouldIgnore$onPostMessage;->NeuButton_neuButtonDrawable:I

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 56
    :goto_0
    sget v5, Lo/shouldIgnore$onPostMessage;->NeuButton_neuBaseColor:I

    const v10, -0xdedbdb

    invoke-virtual {v7, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 57
    sget v10, Lo/shouldIgnore$onPostMessage;->NeuButton_neuButtonColor:I

    invoke-virtual {v7, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    iput v10, v1, Lo/saveOldPosition;->onPostMessage:I

    .line 58
    sget v10, Lo/shouldIgnore$onPostMessage;->NeuButton_neuElevatedFlatAppearance:I

    sget v11, Lo/shouldIgnore$ICustomTabsCallback;->elevatedFlat_blueButton:I

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    if-eq v10, v3, :cond_2

    .line 60
    sget-object v3, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance:[I

    invoke-virtual {v0, v10, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    sget v3, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonStartColor:I

    iget v10, v1, Lo/saveOldPosition;->onPostMessage:I

    const-wide v11, 0x3fd1eb851eb851ecL    # 0.28

    .line 4009
    invoke-static {v10, v11, v12, v9}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v10

    .line 61
    invoke-virtual {v0, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 62
    sget v10, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonEndColor:I

    iget v11, v1, Lo/saveOldPosition;->onPostMessage:I

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 63
    sget v11, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder1StartColor:I

    iget v12, v1, Lo/saveOldPosition;->onPostMessage:I

    const-wide v13, 0x3fe6666666666666L    # 0.7

    .line 5009
    invoke-static {v12, v13, v14, v9}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v12

    .line 63
    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 64
    sget v12, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder1EndColor:I

    iget v13, v1, Lo/saveOldPosition;->onPostMessage:I

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 5024
    invoke-static {v13, v14, v15, v9}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v13

    .line 64
    invoke-virtual {v0, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 65
    sget v13, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder2StartColor:I

    iget v6, v1, Lo/saveOldPosition;->onPostMessage:I

    .line 6024
    invoke-static {v6, v14, v15, v9}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v6

    .line 65
    invoke-virtual {v0, v13, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 66
    sget v13, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonBorder2EndColor:I

    iget v14, v1, Lo/saveOldPosition;->onPostMessage:I

    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 67
    sget v14, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonPressedDarkShadowColor:I

    iget v15, v1, Lo/saveOldPosition;->onPostMessage:I

    move/from16 p1, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 7024
    invoke-static {v15, v2, v3, v9}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v15

    .line 67
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 68
    sget v15, Lo/shouldIgnore$onPostMessage;->ElevatedFlatAppearance_neuButtonCompatColor:I

    move/from16 p2, v6

    iget v6, v1, Lo/saveOldPosition;->onPostMessage:I

    .line 8024
    invoke-static {v6, v2, v3, v9}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v2

    .line 68
    invoke-virtual {v0, v15, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p1

    move/from16 v24, p2

    move v2, v10

    move v6, v11

    move/from16 v23, v12

    move/from16 v25, v13

    move/from16 v26, v14

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    .line 72
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    sget-object v7, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    .line 9019
    invoke-static {}, Lo/clearOldPosition;->onNavigationEvent()Z

    move-result v7

    const/4 v15, 0x0

    if-eqz v7, :cond_4

    .line 10000
    sget-object v7, Lo/clearOldPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    const/4 v10, 0x3

    if-nez v7, :cond_7

    .line 75
    iget v3, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    const v7, 0x10100a7

    const/4 v9, 0x2

    if-ne v3, v9, :cond_5

    .line 77
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v2, -0x101009e

    aput v2, v3, v15

    .line 78
    new-instance v2, Lo/setScrapContainer;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x1

    move-object v10, v2

    move v13, v8

    move v14, v5

    const/4 v9, 0x0

    move v15, v6

    invoke-direct/range {v10 .. v15}, Lo/setScrapContainer;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFII)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v7, v2, v9

    .line 79
    new-instance v3, Lo/setScrapContainer;

    const/4 v15, 0x1

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lo/setScrapContainer;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFII)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v9, [I

    .line 80
    new-instance v3, Lo/setScrapContainer;

    const/4 v12, 0x0

    const/4 v15, 0x3

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lo/setScrapContainer;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFII)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 77
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lo/saveOldPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_5
    const/4 v9, 0x0

    if-ne v3, v10, :cond_6

    .line 83
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v10, 0x1

    new-array v15, v10, [I

    aput v7, v15, v9

    .line 84
    new-instance v7, Lo/isInvalid;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v22, 0x1

    move-object v10, v7

    move v13, v8

    move v14, v5

    move-object v9, v15

    move v15, v0

    move/from16 v16, v2

    move/from16 v17, v6

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    move/from16 v21, v26

    invoke-direct/range {v10 .. v22}, Lo/isInvalid;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFIIIIIIIII)V

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    new-array v7, v7, [I

    .line 95
    new-instance v9, Lo/isInvalid;

    const/4 v12, 0x0

    const/16 v22, 0x3

    move-object v10, v9

    invoke-direct/range {v10 .. v22}, Lo/isInvalid;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;ZFIIIIIIIII)V

    check-cast v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 83
    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lo/saveOldPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 107
    :cond_6
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    .line 109
    new-instance v3, Lo/needsUpdate;

    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 112
    iget v14, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    const/4 v15, 0x0

    .line 114
    iget v6, v1, Lo/saveOldPosition;->onPostMessage:I

    const/16 v18, 0x11

    move-object v10, v3

    move v12, v8

    move/from16 v16, v5

    move/from16 v17, v6

    .line 109
    invoke-direct/range {v10 .. v18}, Lo/needsUpdate;-><init>(FFZILo/MediaSessionCompat$1$onMessageChannelReady;III)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    new-array v2, v2, [I

    .line 117
    new-instance v3, Lo/needsUpdate;

    const/4 v13, 0x0

    .line 119
    iget v14, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    .line 121
    iget v6, v1, Lo/saveOldPosition;->onPostMessage:I

    const/16 v18, 0x15

    move-object v10, v3

    move/from16 v17, v6

    .line 117
    invoke-direct/range {v10 .. v18}, Lo/needsUpdate;-><init>(FFZILo/MediaSessionCompat$1$onMessageChannelReady;III)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 107
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lo/saveOldPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 127
    :cond_7
    new-instance v0, Lo/isRemoved;

    .line 129
    iget v2, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    if-ne v2, v10, :cond_8

    move v11, v3

    goto :goto_4

    .line 132
    :cond_8
    iget v2, v1, Lo/saveOldPosition;->onPostMessage:I

    const-wide v5, 0x3f9eb851eb851eb8L    # 0.03

    .line 10009
    invoke-static {v2, v5, v6, v9}, Lo/extraCallback;->ICustomTabsCallback(IDLjava/lang/Double;)I

    move-result v2

    move v11, v2

    .line 134
    :goto_4
    iget v2, v1, Lo/saveOldPosition;->onMessageChannelReady:I

    if-ne v2, v10, :cond_9

    .line 135
    sget-object v2, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-static {}, Lo/clearOldPosition;->extraCallback()F

    move-result v2

    move v13, v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    const/4 v13, 0x0

    :goto_5
    const/4 v14, 0x0

    const/16 v15, 0x8

    move-object v10, v0

    move v12, v8

    .line 127
    invoke-direct/range {v10 .. v15}, Lo/isRemoved;-><init>(IFFLo/MediaSessionCompat$1$onMessageChannelReady;I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lo/saveOldPosition;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    if-eqz v4, :cond_a

    .line 142
    invoke-virtual {v1, v4}, Lo/saveOldPosition;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lo/saveOldPosition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    iget v0, p0, Lo/saveOldPosition;->onMessageChannelReady:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 153
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

    .line 154
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    .line 155
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    goto :goto_3

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    .line 157
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x7

    .line 158
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 162
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lo/saveOldPosition;->onMessageChannelReady:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    :goto_0
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v4, v2, [I

    const v5, -0x101009e

    aput v5, v4, v1

    .line 168
    new-instance v5, Lo/getOldPosition;

    iget v6, p0, Lo/saveOldPosition;->ICustomTabsCallback:F

    iget v7, p0, Lo/saveOldPosition;->onPostMessage:I

    invoke-direct {v5, v6, v2, v7, v0}, Lo/getOldPosition;-><init>(FZIZ)V

    .line 169
    invoke-virtual {v5, p1}, Lo/getOldPosition;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 168
    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v4, v2, [I

    const v5, 0x10100a7

    aput v5, v4, v1

    .line 171
    new-instance v5, Lo/getOldPosition;

    iget v6, p0, Lo/saveOldPosition;->ICustomTabsCallback:F

    iget v7, p0, Lo/saveOldPosition;->onPostMessage:I

    invoke-direct {v5, v6, v2, v7, v0}, Lo/getOldPosition;-><init>(FZIZ)V

    .line 172
    invoke-virtual {v5, p1}, Lo/getOldPosition;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 171
    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v4, v1, [I

    .line 174
    new-instance v5, Lo/getOldPosition;

    iget v6, p0, Lo/saveOldPosition;->ICustomTabsCallback:F

    iget v7, p0, Lo/saveOldPosition;->onPostMessage:I

    invoke-direct {v5, v6, v7, v0}, Lo/getOldPosition;-><init>(FIZ)V

    .line 175
    invoke-virtual {v5, p1}, Lo/getOldPosition;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 174
    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 178
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p0, Lo/saveOldPosition;->ICustomTabsCallback:F

    float-to-int v4, v0

    shl-int/2addr v4, v2

    float-to-int v0, v0

    shl-int/2addr v0, v2

    invoke-direct {p1, v1, v1, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 179
    check-cast v3, Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, v3, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 27
    iput p1, p0, Lo/saveOldPosition;->onMessageChannelReady:I

    return-void
.end method
