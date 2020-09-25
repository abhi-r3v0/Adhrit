.class public final Lo/resumeAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:Lo/setCores$ICustomTabsCallback;

.field private final arg$3:Lo/setClsId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/setCores;Lo/setCores$ICustomTabsCallback;Lo/setClsId;)V
    .locals 0

    .line 28000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/resumeAnimation;->arg$1:Lo/setCores;

    iput-object p2, p0, Lo/resumeAnimation;->arg$2:Lo/setCores$ICustomTabsCallback;

    iput-object p3, p0, Lo/resumeAnimation;->arg$3:Lo/setClsId;

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/content/res/TypedArray;I)Lo/setFailureListener$extraCallback;
    .locals 1

    const/4 v0, -0x2

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 291
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "XML attribute not specified!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :pswitch_0
    sget-object p0, Lo/setFailureListener$extraCallback;->newSession:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 286
    :pswitch_1
    sget-object p0, Lo/setFailureListener$extraCallback;->getInterfaceDescriptor:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 284
    :pswitch_2
    sget-object p0, Lo/setFailureListener$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 282
    :pswitch_3
    sget-object p0, Lo/setFailureListener$extraCallback;->ICustomTabsService:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 280
    :pswitch_4
    sget-object p0, Lo/setFailureListener$extraCallback;->ICustomTabsCallback$Stub:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 278
    :pswitch_5
    sget-object p0, Lo/setFailureListener$extraCallback;->asBinder:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 276
    :pswitch_6
    sget-object p0, Lo/setFailureListener$extraCallback;->asInterface:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 274
    :pswitch_7
    sget-object p0, Lo/setFailureListener$extraCallback;->onRelationshipValidationResult:Lo/setFailureListener$extraCallback;

    return-object p0

    .line 272
    :pswitch_8
    sget-object p0, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    return-object p0

    :pswitch_9
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extraCallback(Lo/cancelLoaderTask;Landroid/content/Context;Landroid/util/AttributeSet;)Lo/cancelLoaderTask;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v4, 0x0

    if-eqz v1, :cond_39

    .line 113
    sget-object v5, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy:[I

    move-object/from16 v6, p1

    .line 114
    invoke-virtual {v6, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v8, v7, :cond_2f

    .line 118
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 120
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_actualImageScaleType:I

    if-ne v2, v3, :cond_0

    .line 121
    invoke-static {v1, v2}, Lo/resumeAnimation;->ICustomTabsCallback(Landroid/content/res/TypedArray;I)Lo/setFailureListener$extraCallback;

    move-result-object v2

    .line 1469
    iput-object v2, v0, Lo/cancelLoaderTask;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    :goto_1
    move/from16 v20, v17

    move/from16 v17, v16

    move/from16 v16, v20

    goto/16 :goto_f

    .line 123
    :cond_0
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_placeholderImage:I

    const/4 v6, 0x0

    if-ne v2, v3, :cond_2

    .line 2258
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 2259
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 3170
    :goto_2
    iput-object v6, v0, Lo/cancelLoaderTask;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 126
    :cond_2
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_pressedStateOverlayImage:I

    if-ne v2, v3, :cond_5

    .line 3258
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v6

    goto :goto_3

    .line 3259
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_4

    .line 3575
    iput-object v6, v0, Lo/cancelLoaderTask;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 3577
    :cond_4
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v6, 0x1

    new-array v4, v6, [I

    const v6, 0x10100a7

    const/16 v19, 0x0

    aput v6, v4, v19

    .line 3578
    invoke-virtual {v3, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 3579
    iput-object v3, v0, Lo/cancelLoaderTask;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 129
    :cond_5
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_progressBarImage:I

    if-ne v2, v3, :cond_7

    const/4 v3, 0x0

    .line 4258
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    .line 4259
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 4392
    :goto_4
    iput-object v6, v0, Lo/cancelLoaderTask;->asBinder:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 133
    :cond_7
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_fadeDuration:I

    if-ne v2, v3, :cond_8

    const/4 v3, 0x0

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 5135
    iput v2, v0, Lo/cancelLoaderTask;->ICustomTabsCallback:I

    goto :goto_1

    .line 136
    :cond_8
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_viewAspectRatio:I

    if-ne v2, v3, :cond_9

    const/4 v3, 0x0

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 5154
    iput v2, v0, Lo/cancelLoaderTask;->onPostMessage:F

    goto :goto_1

    .line 139
    :cond_9
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_placeholderImageScaleType:I

    if-ne v2, v3, :cond_a

    .line 140
    invoke-static {v1, v2}, Lo/resumeAnimation;->ICustomTabsCallback(Landroid/content/res/TypedArray;I)Lo/setFailureListener$extraCallback;

    move-result-object v2

    .line 5200
    iput-object v2, v0, Lo/cancelLoaderTask;->onMessageChannelReady:Lo/setFailureListener$extraCallback;

    goto/16 :goto_1

    .line 142
    :cond_a
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_retryImage:I

    if-ne v2, v3, :cond_c

    const/4 v3, 0x0

    .line 5258
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_5

    .line 5259
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 6244
    :goto_5
    iput-object v6, v0, Lo/cancelLoaderTask;->ICustomTabsCallback$Stub:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 145
    :cond_c
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_retryImageScaleType:I

    if-ne v2, v3, :cond_d

    .line 146
    invoke-static {v1, v2}, Lo/resumeAnimation;->ICustomTabsCallback(Landroid/content/res/TypedArray;I)Lo/setFailureListener$extraCallback;

    move-result-object v2

    .line 6274
    iput-object v2, v0, Lo/cancelLoaderTask;->onTransact:Lo/setFailureListener$extraCallback;

    goto/16 :goto_1

    .line 148
    :cond_d
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_failureImage:I

    if-ne v2, v3, :cond_f

    const/4 v3, 0x0

    .line 7258
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    .line 7259
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 7318
    :goto_6
    iput-object v6, v0, Lo/cancelLoaderTask;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 151
    :cond_f
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_failureImageScaleType:I

    if-ne v2, v3, :cond_10

    .line 152
    invoke-static {v1, v2}, Lo/resumeAnimation;->ICustomTabsCallback(Landroid/content/res/TypedArray;I)Lo/setFailureListener$extraCallback;

    move-result-object v2

    .line 7348
    iput-object v2, v0, Lo/cancelLoaderTask;->asInterface:Lo/setFailureListener$extraCallback;

    goto/16 :goto_1

    .line 154
    :cond_10
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_progressBarImageScaleType:I

    if-ne v2, v3, :cond_11

    .line 155
    invoke-static {v1, v2}, Lo/resumeAnimation;->ICustomTabsCallback(Landroid/content/res/TypedArray;I)Lo/setFailureListener$extraCallback;

    move-result-object v2

    .line 7422
    iput-object v2, v0, Lo/cancelLoaderTask;->warmup:Lo/setFailureListener$extraCallback;

    goto/16 :goto_1

    .line 157
    :cond_11
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_progressBarAutoRotateInterval:I

    if-ne v2, v3, :cond_12

    move/from16 v4, v16

    .line 159
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v16

    goto/16 :goto_10

    :cond_12
    move/from16 v4, v16

    .line 161
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_backgroundImage:I

    if-ne v2, v3, :cond_14

    const/4 v3, 0x0

    .line 8258
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_7

    .line 8259
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 8524
    :goto_7
    iput-object v6, v0, Lo/cancelLoaderTask;->newSession:Landroid/graphics/drawable/Drawable;

    :goto_8
    move/from16 v16, v17

    :goto_9
    move/from16 v17, v4

    goto/16 :goto_f

    .line 164
    :cond_14
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_overlayImage:I

    if-ne v2, v3, :cond_17

    const/4 v3, 0x0

    .line 9258
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_15

    move-object v2, v6

    goto :goto_a

    .line 9259
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_a
    if-nez v2, :cond_16

    .line 9555
    iput-object v6, v0, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    goto :goto_8

    :cond_16
    const/4 v3, 0x1

    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v2, v6, v3

    .line 9557
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lo/cancelLoaderTask;->getInterfaceDescriptor:Ljava/util/List;

    goto :goto_8

    .line 167
    :cond_17
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundAsCircle:I

    if-ne v2, v3, :cond_19

    .line 10603
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    if-nez v3, :cond_18

    .line 10251
    new-instance v3, Lo/hasMatte;

    invoke-direct {v3}, Lo/hasMatte;-><init>()V

    .line 11596
    iput-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    .line 11603
    :cond_18
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    const/4 v6, 0x0

    .line 168
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 12061
    iput-boolean v2, v3, Lo/hasMatte;->onMessageChannelReady:Z

    goto :goto_8

    .line 170
    :cond_19
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundedCornerRadius:I

    if-ne v2, v3, :cond_1a

    move/from16 v3, v17

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    :goto_b
    move/from16 v16, v4

    goto/16 :goto_10

    :cond_1a
    move/from16 v3, v17

    .line 173
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundTopLeft:I

    if-ne v2, v6, :cond_1b

    .line 174
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    :goto_c
    move/from16 v17, v3

    goto :goto_b

    .line 176
    :cond_1b
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundTopRight:I

    if-ne v2, v6, :cond_1c

    .line 177
    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    goto :goto_c

    .line 179
    :cond_1c
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundBottomLeft:I

    if-ne v2, v6, :cond_1d

    .line 180
    invoke-virtual {v1, v2, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    goto :goto_c

    .line 182
    :cond_1d
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundBottomRight:I

    if-ne v2, v6, :cond_1e

    .line 183
    invoke-virtual {v1, v2, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    goto :goto_c

    .line 185
    :cond_1e
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundTopStart:I

    if-ne v2, v6, :cond_1f

    .line 186
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    goto :goto_c

    .line 188
    :cond_1f
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundTopEnd:I

    if-ne v2, v6, :cond_20

    .line 189
    invoke-virtual {v1, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    goto :goto_c

    .line 191
    :cond_20
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundBottomStart:I

    if-ne v2, v6, :cond_21

    .line 192
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_c

    .line 194
    :cond_21
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundBottomEnd:I

    if-ne v2, v6, :cond_22

    .line 195
    invoke-virtual {v1, v2, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    goto :goto_c

    .line 197
    :cond_22
    sget v6, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundWithOverlayColor:I

    if-ne v2, v6, :cond_24

    .line 12603
    iget-object v6, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    if-nez v6, :cond_23

    .line 12251
    new-instance v6, Lo/hasMatte;

    invoke-direct {v6}, Lo/hasMatte;-><init>()V

    .line 13596
    iput-object v6, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    .line 13603
    :cond_23
    iget-object v6, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    move/from16 v16, v3

    const/4 v3, 0x0

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 14146
    iput v2, v6, Lo/hasMatte;->onNavigationEvent:I

    .line 14147
    sget-object v2, Lo/hasMatte$onPostMessage;->extraCallback:Lo/hasMatte$onPostMessage;

    iput-object v2, v6, Lo/hasMatte;->onPostMessage:Lo/hasMatte$onPostMessage;

    goto/16 :goto_9

    :cond_24
    move/from16 v16, v3

    .line 200
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundingBorderWidth:I

    if-ne v2, v3, :cond_28

    .line 14603
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    if-nez v3, :cond_25

    .line 14251
    new-instance v3, Lo/hasMatte;

    invoke-direct {v3}, Lo/hasMatte;-><init>()V

    .line 15596
    iput-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    .line 15603
    :cond_25
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    const/4 v6, 0x0

    .line 201
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    const/4 v6, 0x0

    cmpl-float v17, v2, v6

    if-ltz v17, :cond_26

    move/from16 v17, v4

    const/4 v6, 0x1

    goto :goto_d

    :cond_26
    move/from16 v17, v4

    const/4 v6, 0x0

    :goto_d
    const-string/jumbo v4, "the border width cannot be < 0"

    if-eqz v6, :cond_27

    .line 16191
    iput v2, v3, Lo/hasMatte;->ICustomTabsCallback:F

    goto :goto_f

    .line 17125
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move/from16 v17, v4

    .line 203
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundingBorderColor:I

    if-ne v2, v3, :cond_2a

    .line 17603
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    if-nez v3, :cond_29

    .line 17251
    new-instance v3, Lo/hasMatte;

    invoke-direct {v3}, Lo/hasMatte;-><init>()V

    .line 18596
    iput-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    .line 18603
    :cond_29
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    const/4 v4, 0x0

    .line 204
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 19206
    iput v2, v3, Lo/hasMatte;->onTransact:I

    goto :goto_f

    .line 206
    :cond_2a
    sget v3, Lo/WorkDatabase_Impl$onNavigationEvent;->GenericDraweeHierarchy_roundingBorderPadding:I

    if-ne v2, v3, :cond_2e

    .line 19603
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    if-nez v3, :cond_2b

    .line 19251
    new-instance v3, Lo/hasMatte;

    invoke-direct {v3}, Lo/hasMatte;-><init>()V

    .line 20596
    iput-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    .line 20603
    :cond_2b
    iget-object v3, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    const/4 v4, 0x0

    .line 207
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    cmpl-float v6, v2, v4

    if-ltz v6, :cond_2c

    const/4 v6, 0x1

    goto :goto_e

    :cond_2c
    const/4 v6, 0x0

    :goto_e
    const-string/jumbo v4, "the padding cannot be < 0"

    if-eqz v6, :cond_2d

    .line 21235
    iput v2, v3, Lo/hasMatte;->ICustomTabsCallback$Stub:F

    goto :goto_f

    .line 22125
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2e
    :goto_f
    move/from16 v20, v17

    move/from16 v17, v16

    move/from16 v16, v20

    :goto_10
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, p1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2f
    move/from16 v20, v17

    move/from16 v17, v16

    move/from16 v16, v20

    .line 211
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_33

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    if-eqz v9, :cond_30

    if-eqz v12, :cond_30

    const/4 v6, 0x1

    goto :goto_11

    :cond_30
    const/4 v6, 0x0

    :goto_11
    if-eqz v11, :cond_31

    if-eqz v10, :cond_31

    const/4 v1, 0x1

    goto :goto_12

    :cond_31
    const/4 v1, 0x0

    :goto_12
    if-eqz v13, :cond_32

    if-eqz v5, :cond_32

    const/4 v2, 0x1

    goto :goto_13

    :cond_32
    const/4 v2, 0x0

    :goto_13
    if-eqz v15, :cond_37

    if-eqz v14, :cond_37

    goto :goto_17

    :cond_33
    if-eqz v9, :cond_34

    if-eqz v10, :cond_34

    const/4 v6, 0x1

    goto :goto_14

    :cond_34
    const/4 v6, 0x0

    :goto_14
    if-eqz v11, :cond_35

    if-eqz v12, :cond_35

    const/4 v1, 0x1

    goto :goto_15

    :cond_35
    const/4 v1, 0x0

    :goto_15
    if-eqz v13, :cond_36

    if-eqz v14, :cond_36

    const/4 v2, 0x1

    goto :goto_16

    :cond_36
    const/4 v2, 0x0

    :goto_16
    if-eqz v15, :cond_37

    if-eqz v5, :cond_37

    :goto_17
    const/4 v3, 0x1

    goto :goto_18

    :cond_37
    const/4 v3, 0x0

    :goto_18
    move/from16 v5, v16

    move/from16 v4, v17

    goto :goto_19

    :catchall_0
    move-exception v0

    .line 211
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 213
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_38

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 224
    :cond_38
    throw v0

    :cond_39
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 22409
    :goto_19
    iget-object v7, v0, Lo/cancelLoaderTask;->asBinder:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3a

    if-lez v4, :cond_3a

    .line 231
    new-instance v7, Lo/RuleJsonAdapter;

    .line 23409
    iget-object v8, v0, Lo/cancelLoaderTask;->asBinder:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-direct {v7, v8, v4}, Lo/RuleJsonAdapter;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 24392
    iput-object v7, v0, Lo/cancelLoaderTask;->asBinder:Landroid/graphics/drawable/Drawable;

    :cond_3a
    if-lez v5, :cond_41

    .line 25603
    iget-object v4, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    if-nez v4, :cond_3b

    .line 25251
    new-instance v4, Lo/hasMatte;

    invoke-direct {v4}, Lo/hasMatte;-><init>()V

    .line 26596
    iput-object v4, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    .line 26603
    :cond_3b
    iget-object v4, v0, Lo/cancelLoaderTask;->extraCommand:Lo/hasMatte;

    if-eqz v6, :cond_3c

    int-to-float v6, v5

    goto :goto_1a

    :cond_3c
    const/4 v6, 0x0

    :goto_1a
    if-eqz v1, :cond_3d

    int-to-float v1, v5

    goto :goto_1b

    :cond_3d
    const/4 v1, 0x0

    :goto_1b
    if-eqz v2, :cond_3e

    int-to-float v2, v5

    goto :goto_1c

    :cond_3e
    const/4 v2, 0x0

    :goto_1c
    if-eqz v3, :cond_3f

    int-to-float v3, v5

    move/from16 v18, v3

    goto :goto_1d

    :cond_3f
    const/16 v18, 0x0

    .line 27157
    :goto_1d
    iget-object v3, v4, Lo/hasMatte;->extraCallback:[F

    if-nez v3, :cond_40

    const/16 v3, 0x8

    new-array v3, v3, [F

    .line 27158
    iput-object v3, v4, Lo/hasMatte;->extraCallback:[F

    .line 27160
    :cond_40
    iget-object v3, v4, Lo/hasMatte;->extraCallback:[F

    const/4 v4, 0x1

    .line 27093
    aput v6, v3, v4

    const/4 v4, 0x0

    aput v6, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    .line 27094
    aput v1, v3, v5

    aput v1, v3, v4

    const/4 v1, 0x4

    const/4 v4, 0x5

    .line 27095
    aput v2, v3, v4

    aput v2, v3, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    .line 27096
    aput v18, v3, v2

    aput v18, v3, v1

    :cond_41
    return-object v0
.end method

.method public static lambdaFactory$(Lo/setCores;Lo/setCores$ICustomTabsCallback;Lo/setClsId;)Ljava/lang/Runnable;
    .locals 1

    .line 30000
    new-instance v0, Lo/resumeAnimation;

    invoke-direct {v0, p0, p1, p2}, Lo/resumeAnimation;-><init>(Lo/setCores;Lo/setCores$ICustomTabsCallback;Lo/setClsId;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 29000
    iget-object v0, p0, Lo/resumeAnimation;->arg$1:Lo/setCores;

    iget-object v1, p0, Lo/resumeAnimation;->arg$2:Lo/setCores$ICustomTabsCallback;

    iget-object v2, p0, Lo/resumeAnimation;->arg$3:Lo/setClsId;

    invoke-static {v0, v1, v2}, Lo/setCores;->lambda$allocateTarget$7(Lo/setCores;Lo/setCores$ICustomTabsCallback;Lo/setClsId;)V

    return-void
.end method
