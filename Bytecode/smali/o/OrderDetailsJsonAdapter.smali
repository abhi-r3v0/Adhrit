.class public Lo/OrderDetailsJsonAdapter;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lo/CredUpiInstrumentBankStatusJsonAdapter$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/View;

.field private final ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Landroid/graphics/drawable/Drawable;

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:I

.field private final asBinder:Landroid/widget/FrameLayout;

.field private final asInterface:Landroid/view/View;

.field private final extraCallback:Landroid/widget/ImageView;

.field private extraCommand:I

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:I

.field private newSession:Lo/allow;

.field private final onMessageChannelReady:Landroid/view/View;

.field private final onNavigationEvent:Lo/OfferSlabJsonAdapter;

.field private final onPostMessage:Lo/InstrumentViewJsonAdapter;

.field private final onRelationshipValidationResult:Landroid/widget/TextView;

.field private final onTransact:Lo/OfferSlab;

.field private postMessage:Z

.field private requestPostMessageChannel:Ljava/lang/CharSequence;

.field private updateVisuals:Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private validateRelationship:Z

.field private final warmup:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, p1, v0}, Lo/OrderDetailsJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, p2, v0}, Lo/OrderDetailsJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 320
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 323
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    .line 324
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady:Landroid/view/View;

    .line 325
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    .line 326
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    .line 327
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->onNavigationEvent:Lo/OfferSlabJsonAdapter;

    .line 328
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->asInterface:Landroid/view/View;

    .line 329
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    .line 330
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    .line 331
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    .line 332
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->asBinder:Landroid/widget/FrameLayout;

    .line 333
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->warmup:Landroid/widget/FrameLayout;

    .line 334
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 335
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v2}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Landroid/content/res/Resources;Landroid/widget/ImageView;)V

    .line 340
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 346
    :cond_1
    sget v3, Lo/OrderDetails$onMessageChannelReady;->exo_player_view:I

    const/16 v5, 0x1388

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget-object v9, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView:[I

    invoke-virtual {v8, v2, v9, v7, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 360
    :try_start_0
    sget v9, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    .line 361
    sget v10, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_shutter_background_color:I

    invoke-virtual {v8, v10, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 362
    sget v11, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_player_layout_id:I

    invoke-virtual {v8, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 363
    sget v11, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_use_artwork:I

    invoke-virtual {v8, v11, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 364
    sget v12, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_default_artwork:I

    .line 365
    invoke-virtual {v8, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 366
    sget v13, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_use_controller:I

    invoke-virtual {v8, v13, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 367
    sget v14, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_surface_type:I

    invoke-virtual {v8, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 368
    sget v15, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_resize_mode:I

    invoke-virtual {v8, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 369
    sget v4, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_show_timeout:I

    .line 370
    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 371
    sget v4, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_hide_on_touch:I

    .line 372
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 373
    sget v7, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_auto_show:I

    invoke-virtual {v8, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 374
    sget v6, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_show_buffering:I

    move/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 375
    sget v3, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_keep_content_on_player_reset:I

    move/from16 v17, v4

    iget-boolean v4, v1, Lo/OrderDetailsJsonAdapter;->postMessage:Z

    .line 376
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Lo/OrderDetailsJsonAdapter;->postMessage:Z

    .line 378
    sget v3, Lo/OrderDetails$onRelationshipValidationResult;->PlayerView_hide_during_ads:I

    const/4 v4, 0x1

    .line 379
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    move v4, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v7

    move/from16 v7, v17

    move/from16 v18, v5

    move v5, v3

    move/from16 v3, v16

    move/from16 v16, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    throw v0

    :cond_2
    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1388

    .line 385
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 386
    new-instance v3, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    const/4 v8, 0x0

    invoke-direct {v3, v1, v8}, Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;-><init>(Lo/OrderDetailsJsonAdapter;Lo/OrderDetailsJsonAdapter$4;)V

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    const/high16 v3, 0x40000

    .line 387
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 390
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_content_frame:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/InstrumentViewJsonAdapter;

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    if-eqz v3, :cond_3

    .line 392
    invoke-static {v3, v4}, Lo/OrderDetailsJsonAdapter;->extraCallback(Lo/InstrumentViewJsonAdapter;I)V

    .line 396
    :cond_3
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_shutter:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady:Landroid/view/View;

    if-eqz v3, :cond_4

    if-eqz v10, :cond_4

    .line 398
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 402
    :cond_4
    iget-object v3, v1, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    if-eqz v3, :cond_7

    if-eqz v15, :cond_7

    .line 403
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x2

    if-eq v15, v4, :cond_6

    const/4 v4, 0x3

    if-eq v15, v4, :cond_5

    .line 416
    new-instance v4, Landroid/view/SurfaceView;

    invoke-direct {v4, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    goto :goto_2

    .line 411
    :cond_5
    new-instance v4, Lo/Payment;

    invoke-direct {v4, v0}, Lo/Payment;-><init>(Landroid/content/Context;)V

    .line 412
    iget-object v8, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    invoke-virtual {v4, v8}, Lo/Payment;->setSingleTapListener(Lo/PayResponseJsonAdapter;)V

    .line 413
    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    goto :goto_2

    .line 408
    :cond_6
    new-instance v4, Landroid/view/TextureView;

    invoke-direct {v4, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    .line 419
    :goto_2
    iget-object v4, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    iget-object v3, v1, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    iget-object v4, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 422
    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    .line 426
    :goto_3
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_ad_overlay:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->asBinder:Landroid/widget/FrameLayout;

    .line 429
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_overlay:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->warmup:Landroid/widget/FrameLayout;

    .line 432
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_artwork:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    if-eqz v12, :cond_8

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 433
    :goto_4
    iput-boolean v3, v1, Lo/OrderDetailsJsonAdapter;->getInterfaceDescriptor:Z

    if-eqz v13, :cond_9

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v13}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    .line 439
    :cond_9
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_subtitles:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/OfferSlabJsonAdapter;

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->onNavigationEvent:Lo/OfferSlabJsonAdapter;

    if-eqz v3, :cond_a

    .line 441
    invoke-virtual {v3}, Lo/OfferSlabJsonAdapter;->setUserDefaultStyle()V

    .line 442
    iget-object v3, v1, Lo/OrderDetailsJsonAdapter;->onNavigationEvent:Lo/OfferSlabJsonAdapter;

    invoke-virtual {v3}, Lo/OfferSlabJsonAdapter;->setUserDefaultTextSize()V

    .line 446
    :cond_a
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_buffering:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->asInterface:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v3, :cond_b

    .line 448
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :cond_b
    iput v6, v1, Lo/OrderDetailsJsonAdapter;->extraCommand:I

    .line 453
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_error_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    .line 455
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 459
    :cond_c
    sget v3, Lo/OrderDetails$ICustomTabsCallback;->exo_controller:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/OfferSlab;

    .line 460
    sget v4, Lo/OrderDetails$ICustomTabsCallback;->exo_controller_placeholder:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_d

    .line 462
    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    if-eqz v4, :cond_e

    .line 466
    new-instance v3, Lo/OfferSlab;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v0, v8, v6, v2}, Lo/OfferSlab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    iput-object v3, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    .line 467
    sget v0, Lo/OrderDetails$ICustomTabsCallback;->exo_controller:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 468
    iget-object v0, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 470
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 471
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 472
    iget-object v3, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 474
    iput-object v0, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    .line 476
    :goto_5
    iget-object v0, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_f

    move/from16 v3, v16

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    :goto_6
    iput v3, v1, Lo/OrderDetailsJsonAdapter;->mayLaunchUrl:I

    .line 477
    iput-boolean v7, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsService$Stub$Proxy:Z

    .line 478
    iput-boolean v9, v1, Lo/OrderDetailsJsonAdapter;->validateRelationship:Z

    .line 479
    iput-boolean v5, v1, Lo/OrderDetailsJsonAdapter;->IPostMessageService:Z

    if-eqz v14, :cond_10

    .line 480
    iget-object v0, v1, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_10

    const/4 v6, 0x1

    :cond_10
    iput-boolean v6, v1, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    .line 481
    invoke-virtual/range {p0 .. p0}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent()V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    return-object p0
.end method

.method private static ICustomTabsCallback(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 1

    .line 1353
    sget v0, Lo/OrderDetails$onPostMessage;->exo_edit_mode_logo:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1354
    sget v0, Lo/OrderDetails$onNavigationEvent;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/view/TextureView;I)V
    .locals 6

    .line 1364
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1365
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1369
    :cond_0
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    div-float v4, v1, v4

    int-to-float p1, p1

    .line 1372
    invoke-virtual {v3, p1, v5, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1375
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1376
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1377
    invoke-virtual {v3, v2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1379
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    .line 1380
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v1, p1

    .line 1378
    invoke-virtual {v3, v0, v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1383
    invoke-virtual {p0, v3}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1367
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private ICustomTabsCallback(Z)V
    .locals 5

    .line 1208
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lo/allow;->cancelAll()Lo/JuspaySessionToken;

    move-result-object v0

    invoke-virtual {v0}, Lo/JuspaySessionToken;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 1216
    iget-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->postMessage:Z

    if-nez p1, :cond_1

    .line 1218
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->asInterface()V

    .line 1221
    :cond_1
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    invoke-interface {p1}, Lo/allow;->getDefaultImpl()Lo/InstrumentDataJsonAdapter;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1222
    :goto_0
    iget v2, p1, Lo/InstrumentDataJsonAdapter;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_3

    .line 1223
    iget-object v2, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    invoke-interface {v2, v1}, Lo/allow;->onNavigationEvent(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v1}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1226
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1232
    :cond_3
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->asInterface()V

    .line 1234
    iget-boolean v1, p0, Lo/OrderDetailsJsonAdapter;->getInterfaceDescriptor:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    .line 1235
    :goto_1
    iget v2, p1, Lo/InstrumentDataJsonAdapter;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_6

    .line 1236
    invoke-virtual {p1, v1}, Lo/InstrumentDataJsonAdapter;->onNavigationEvent(I)Lo/InstrumentView;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 1238
    :goto_2
    invoke-interface {v2}, Lo/InstrumentView;->onRelationshipValidationResult()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1239
    invoke-interface {v2, v3}, Lo/InstrumentView;->onNavigationEvent(I)Lo/p$a;

    move-result-object v4

    iget-object v4, v4, Lo/p$a;->asInterface:Lo/callAPI;

    if-eqz v4, :cond_4

    .line 1240
    invoke-direct {p0, v4}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Lo/callAPI;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1246
    :cond_6
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 1251
    :cond_7
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult()V

    return-void

    .line 1209
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->postMessage:Z

    if-nez p1, :cond_9

    .line 1210
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult()V

    .line 1211
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->asInterface()V

    :cond_9
    return-void
.end method

.method private ICustomTabsCallback(Lo/callAPI;)Z
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1257
    :goto_0
    invoke-virtual {p1}, Lo/callAPI;->ICustomTabsCallback()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1258
    invoke-virtual {p1, v2}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v5

    .line 1261
    instance-of v6, v5, Lo/Registry$MissingComponentException;

    if-eqz v6, :cond_0

    .line 1262
    check-cast v5, Lo/Registry$MissingComponentException;

    iget-object v6, v5, Lo/Registry$MissingComponentException;->onMessageChannelReady:[B

    .line 1263
    iget v5, v5, Lo/Registry$MissingComponentException;->extraCallback:I

    goto :goto_1

    .line 1264
    :cond_0
    instance-of v6, v5, Lo/ChipsLayoutManager;

    if-eqz v6, :cond_2

    .line 1265
    check-cast v5, Lo/ChipsLayoutManager;

    iget-object v6, v5, Lo/ChipsLayoutManager;->onRelationshipValidationResult:[B

    .line 1266
    iget v5, v5, Lo/ChipsLayoutManager;->onNavigationEvent:I

    :goto_1
    const/4 v7, 0x3

    if-eq v3, v0, :cond_1

    if-ne v5, v7, :cond_2

    .line 1272
    :cond_1
    array-length v3, v6

    invoke-static {v6, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1273
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v4}, Lo/OrderDetailsJsonAdapter;->onPostMessage(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eq v5, v7, :cond_3

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 4

    .line 1323
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1324
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->requestPostMessageChannel:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1325
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1330
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-eqz v1, :cond_1

    .line 1331
    invoke-interface {v1}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->updateVisuals:Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;

    if-eqz v1, :cond_1

    .line 1333
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    invoke-interface {v0}, Lo/allow;->getInterfaceDescriptor()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1336
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->updateVisuals:Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;

    invoke-interface {v1, v0}, Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;->extraCallback(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1337
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1340
    :cond_2
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/OrderDetailsJsonAdapter;)Z
    .locals 0

    .line 250
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady()Z

    move-result p0

    return p0
.end method

.method private asBinder()Z
    .locals 1

    .line 1204
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/allow;->validateRelationship()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    invoke-interface {v0}, Lo/allow;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic asBinder(Lo/OrderDetailsJsonAdapter;)Z
    .locals 0

    .line 250
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->asBinder()Z

    move-result p0

    return p0
.end method

.method private asInterface()V
    .locals 2

    .line 1306
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1307
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic asInterface(Lo/OrderDetailsJsonAdapter;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method static synthetic extraCallback(Lo/OrderDetailsJsonAdapter;I)I
    .locals 0

    .line 250
    iput p1, p0, Lo/OrderDetailsJsonAdapter;->IPostMessageService$Stub:I

    return p1
.end method

.method static synthetic extraCallback(Lo/OrderDetailsJsonAdapter;)Lo/OfferSlabJsonAdapter;
    .locals 0

    .line 250
    iget-object p0, p0, Lo/OrderDetailsJsonAdapter;->onNavigationEvent:Lo/OfferSlabJsonAdapter;

    return-object p0
.end method

.method private static extraCallback(Lo/InstrumentViewJsonAdapter;I)V
    .locals 0

    .line 1359
    invoke-virtual {p0, p1}, Lo/InstrumentViewJsonAdapter;->setResizeMode(I)V

    return-void
.end method

.method static synthetic extraCallback(Lo/OrderDetailsJsonAdapter;Z)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Z)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/OrderDetailsJsonAdapter;)Landroid/view/View;
    .locals 0

    .line 250
    iget-object p0, p0, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady:Landroid/view/View;

    return-object p0
.end method

.method private onMessageChannelReady(Z)V
    .locals 2

    .line 1172
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->IPostMessageService:Z

    if-eqz v0, :cond_0

    return-void

    .line 1175
    :cond_0
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_3

    .line 1176
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0}, Lo/OfferSlab;->onNavigationEvent()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1177
    :goto_0
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onPostMessage()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1179
    :cond_2
    invoke-direct {p0, v1}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent(Z)V

    :cond_3
    return-void
.end method

.method private onMessageChannelReady()Z
    .locals 2

    .line 1159
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1162
    :cond_0
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1163
    invoke-direct {p0, v1}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Z)V

    goto :goto_0

    .line 1164
    :cond_1
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0}, Lo/OfferSlab;->onPostMessage()V

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic onNavigationEvent(Lo/OrderDetailsJsonAdapter;)Lo/InstrumentViewJsonAdapter;
    .locals 0

    .line 250
    iget-object p0, p0, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    return-object p0
.end method

.method private static onNavigationEvent(Landroid/content/res/Resources;Landroid/widget/ImageView;)V
    .locals 2

    .line 1347
    sget v0, Lo/OrderDetails$onPostMessage;->exo_edit_mode_logo:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1348
    sget v0, Lo/OrderDetails$onNavigationEvent;->exo_edit_mode_background_color:I

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private onNavigationEvent(Z)V
    .locals 1

    .line 1196
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    return-void

    .line 1199
    :cond_0
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget p1, p0, Lo/OrderDetailsJsonAdapter;->mayLaunchUrl:I

    :goto_0
    invoke-virtual {v0, p1}, Lo/OfferSlab;->setShowTimeoutMs(I)V

    .line 1200
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {p1}, Lo/OfferSlab;->onMessageChannelReady()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/OrderDetailsJsonAdapter;)I
    .locals 0

    .line 250
    iget p0, p0, Lo/OrderDetailsJsonAdapter;->IPostMessageService$Stub:I

    return p0
.end method

.method static synthetic onPostMessage(Landroid/view/TextureView;I)V
    .locals 0

    .line 250
    invoke-static {p0, p1}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Landroid/view/TextureView;I)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/OrderDetailsJsonAdapter;Z)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Z)V

    return-void
.end method

.method private onPostMessage()Z
    .locals 3

    .line 1185
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1188
    :cond_0
    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 1189
    iget-boolean v2, p0, Lo/OrderDetailsJsonAdapter;->validateRelationship:Z

    if-eqz v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    .line 1192
    invoke-interface {v0}, Lo/allow;->ICustomTabsService()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private onPostMessage(I)Z
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private onPostMessage(Landroid/graphics/drawable/Drawable;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1285
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1286
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1289
    iget-object v2, p0, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    iget-object v3, p0, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2, v3}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(FLo/InstrumentViewJsonAdapter;Landroid/view/View;)V

    .line 1290
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1291
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private onRelationshipValidationResult()V
    .locals 2

    .line 1299
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x106000d

    .line 1300
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1301
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/OrderDetailsJsonAdapter;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onTransact()V

    return-void
.end method

.method private onTransact()V
    .locals 4

    .line 1312
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->asInterface:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1313
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1315
    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lo/OrderDetailsJsonAdapter;->extraCommand:I

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    .line 1317
    invoke-interface {v0}, Lo/allow;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1318
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->asInterface:Landroid/view/View;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic onTransact(Lo/OrderDetailsJsonAdapter;)Z
    .locals 0

    .line 250
    iget-boolean p0, p0, Lo/OrderDetailsJsonAdapter;->IPostMessageService:Z

    return p0
.end method


# virtual methods
.method public ICustomTabsCallback()Lo/allow;
    .locals 1

    .line 510
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 775
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/allow;->validateRelationship()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 779
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lo/OrderDetailsJsonAdapter;->onPostMessage(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 781
    iget-object v3, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v3}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v3

    if-nez v3, :cond_2

    .line 783
    invoke-direct {p0, v2}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Z)V

    goto :goto_2

    .line 785
    :cond_2
    invoke-virtual {p0, p1}, Lo/OrderDetailsJsonAdapter;->extraCallback(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    .line 792
    invoke-direct {p0, v2}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Z)V

    goto :goto_3

    .line 788
    :cond_4
    :goto_1
    invoke-direct {p0, v2}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Z)V

    :goto_2
    const/4 v1, 0x1

    :cond_5
    :goto_3
    return v1
.end method

.method public extraCallback()V
    .locals 1

    .line 821
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onPostMessage()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent(Z)V

    return-void
.end method

.method public extraCallback(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->onNavigationEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onMessageChannelReady(FLo/InstrumentViewJsonAdapter;Landroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1131
    instance-of p3, p3, Lo/Payment;

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lo/InstrumentViewJsonAdapter;->setAspectRatio(F)V

    :cond_1
    return-void
.end method

.method public onNavigationEvent()V
    .locals 1

    .line 826
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {v0}, Lo/OfferSlab;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1056
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_1

    return v1

    .line 1064
    :cond_1
    iget-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService$Stub:Z

    if-eqz p1, :cond_2

    .line 1065
    iput-boolean v1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService$Stub:Z

    .line 1066
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return v0

    :cond_2
    return v1

    .line 1061
    :cond_3
    iput-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService$Stub:Z

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1083
    iget-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1086
    invoke-direct {p0, p1}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 1077
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 1078
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public setAspectRatioListener(Lo/InstrumentViewJsonAdapter$onPostMessage;)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 1011
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    invoke-virtual {v0, p1}, Lo/InstrumentViewJsonAdapter;->setAspectRatioListener(Lo/InstrumentViewJsonAdapter$onPostMessage;)V

    return-void
.end method

.method public setControlDispatcher(Lo/g;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 932
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setControlDispatcher(Lo/g;)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    .line 891
    iput-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->validateRelationship:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    .line 901
    iput-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->IPostMessageService:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    .line 870
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 871
    iput-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService$Stub$Proxy:Z

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    .line 851
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 852
    iput p1, p0, Lo/OrderDetailsJsonAdapter;->mayLaunchUrl:I

    .line 853
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {p1}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 855
    invoke-virtual {p0}, Lo/OrderDetailsJsonAdapter;->extraCallback()V

    :cond_1
    return-void
.end method

.method public setControllerVisibilityListener(Lo/OfferSlab$onMessageChannelReady;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 911
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setVisibilityListener(Lo/OfferSlab$onMessageChannelReady;)V

    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 768
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onRelationshipValidationResult:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 769
    iput-object p1, p0, Lo/OrderDetailsJsonAdapter;->requestPostMessageChannel:Ljava/lang/CharSequence;

    .line 770
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 641
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 641
    :goto_0
    invoke-virtual {p0, p1}, Lo/OrderDetailsJsonAdapter;->setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 653
    iput-object p1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 654
    invoke-direct {p0, p1}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Z)V

    :cond_0
    return-void
.end method

.method public setErrorMessageProvider(Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3<",
            "-",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            ">;)V"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->updateVisuals:Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;

    if-eq v0, p1, :cond_0

    .line 756
    iput-object p1, p0, Lo/OrderDetailsJsonAdapter;->updateVisuals:Lo/CheckoutRecommendationFragment$setupSeekbar$$inlined$let$lambda$3;

    .line 757
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 1

    .line 999
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 1000
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1, p2}, Lo/OfferSlab;->setExtraAdGroupMarkers([J[Z)V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 1

    .line 953
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 954
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setFastForwardIncrementMs(I)V

    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    .line 715
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->postMessage:Z

    if-eq v0, p1, :cond_0

    .line 716
    iput-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->postMessage:Z

    const/4 p1, 0x0

    .line 717
    invoke-direct {p0, p1}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Z)V

    :cond_0
    return-void
.end method

.method public setPlaybackPreparer(Lo/onAccuracyChanged;)V
    .locals 1

    .line 920
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 921
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setPlaybackPreparer(Lo/onAccuracyChanged;)V

    return-void
.end method

.method public setPlayer(Lo/allow;)V
    .locals 6

    .line 527
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    if-eqz p1, :cond_2

    .line 529
    invoke-interface {p1}, Lo/allow;->onRelationshipValidationResult()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 528
    :goto_2
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 530
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 534
    iget-object v4, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    invoke-interface {v0, v4}, Lo/allow;->onMessageChannelReady(Lo/allow$onNavigationEvent;)V

    .line 535
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    invoke-interface {v0}, Lo/allow;->asBinder()Lo/allow$ICustomTabsCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 537
    iget-object v4, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    invoke-interface {v0, v4}, Lo/allow$ICustomTabsCallback;->onNavigationEvent(Lo/component7;)V

    .line 538
    iget-object v4, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_4

    .line 539
    check-cast v4, Landroid/view/TextureView;

    invoke-interface {v0, v4}, Lo/allow$ICustomTabsCallback;->ICustomTabsCallback(Landroid/view/TextureView;)V

    goto :goto_3

    .line 540
    :cond_4
    instance-of v5, v4, Lo/Payment;

    if-eqz v5, :cond_5

    .line 541
    check-cast v4, Lo/Payment;

    invoke-virtual {v4, v1}, Lo/Payment;->setVideoComponent(Lo/allow$ICustomTabsCallback;)V

    goto :goto_3

    .line 542
    :cond_5
    instance-of v5, v4, Landroid/view/SurfaceView;

    if-eqz v5, :cond_6

    .line 543
    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {v0, v4}, Lo/allow$ICustomTabsCallback;->extraCallback(Landroid/view/SurfaceView;)V

    .line 546
    :cond_6
    :goto_3
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub()Lo/allow$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 548
    iget-object v4, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    invoke-interface {v0, v4}, Lo/allow$onMessageChannelReady;->onMessageChannelReady(Lo/SurchargeDetailsJsonAdapter;)V

    .line 551
    :cond_7
    iput-object p1, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    .line 552
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_8

    .line 553
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setPlayer(Lo/allow;)V

    .line 555
    :cond_8
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onNavigationEvent:Lo/OfferSlabJsonAdapter;

    if-eqz v0, :cond_9

    .line 556
    invoke-virtual {v0, v1}, Lo/OfferSlabJsonAdapter;->setCues(Ljava/util/List;)V

    .line 558
    :cond_9
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onTransact()V

    .line 559
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub()V

    .line 560
    invoke-direct {p0, v2}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Z)V

    if-eqz p1, :cond_f

    .line 562
    invoke-interface {p1}, Lo/allow;->asBinder()Lo/allow$ICustomTabsCallback;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 564
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_a

    .line 565
    check-cast v1, Landroid/view/TextureView;

    invoke-interface {v0, v1}, Lo/allow$ICustomTabsCallback;->extraCallback(Landroid/view/TextureView;)V

    goto :goto_4

    .line 566
    :cond_a
    instance-of v2, v1, Lo/Payment;

    if-eqz v2, :cond_b

    .line 567
    check-cast v1, Lo/Payment;

    invoke-virtual {v1, v0}, Lo/Payment;->setVideoComponent(Lo/allow$ICustomTabsCallback;)V

    goto :goto_4

    .line 568
    :cond_b
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_c

    .line 569
    check-cast v1, Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lo/allow$ICustomTabsCallback;->onNavigationEvent(Landroid/view/SurfaceView;)V

    .line 571
    :cond_c
    :goto_4
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    invoke-interface {v0, v1}, Lo/allow$ICustomTabsCallback;->onMessageChannelReady(Lo/component7;)V

    .line 573
    :cond_d
    invoke-interface {p1}, Lo/allow;->ICustomTabsCallback$Stub()Lo/allow$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 575
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    invoke-interface {v0, v1}, Lo/allow$onMessageChannelReady;->onPostMessage(Lo/SurchargeDetailsJsonAdapter;)V

    .line 577
    :cond_e
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub:Lo/OrderDetailsJsonAdapter$ICustomTabsCallback;

    invoke-interface {p1, v0}, Lo/allow;->ICustomTabsCallback(Lo/allow$onNavigationEvent;)V

    .line 578
    invoke-direct {p0, v3}, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady(Z)V

    return-void

    .line 580
    :cond_f
    invoke-virtual {p0}, Lo/OrderDetailsJsonAdapter;->onNavigationEvent()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    .line 963
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 964
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    .line 599
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 600
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onPostMessage:Lo/InstrumentViewJsonAdapter;

    invoke-virtual {v0, p1}, Lo/InstrumentViewJsonAdapter;->setResizeMode(I)V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 1

    .line 942
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 943
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setRewindIncrementMs(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    .line 742
    iget v0, p0, Lo/OrderDetailsJsonAdapter;->extraCommand:I

    if-eq v0, p1, :cond_0

    .line 743
    iput p1, p0, Lo/OrderDetailsJsonAdapter;->extraCommand:I

    .line 744
    invoke-direct {p0}, Lo/OrderDetailsJsonAdapter;->onTransact()V

    :cond_0
    return-void
.end method

.method public setShowBuffering(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 730
    invoke-virtual {p0, p1}, Lo/OrderDetailsJsonAdapter;->setShowBuffering(I)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1

    .line 983
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 984
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    .line 973
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 974
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    invoke-virtual {v0, p1}, Lo/OfferSlab;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    .line 689
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onMessageChannelReady:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 620
    iget-object v1, p0, Lo/OrderDetailsJsonAdapter;->extraCallback:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 621
    iget-boolean v1, p0, Lo/OrderDetailsJsonAdapter;->getInterfaceDescriptor:Z

    if-eq v1, p1, :cond_2

    .line 622
    iput-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->getInterfaceDescriptor:Z

    .line 623
    invoke-direct {p0, v0}, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback(Z)V

    :cond_2
    return-void
.end method

.method public setUseController(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 671
    iget-boolean v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-ne v0, p1, :cond_2

    return-void

    .line 674
    :cond_2
    iput-boolean p1, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p1, :cond_3

    .line 676
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->newSession:Lo/allow;

    invoke-virtual {p1, v0}, Lo/OfferSlab;->setPlayer(Lo/allow;)V

    return-void

    .line 677
    :cond_3
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    if-eqz p1, :cond_4

    .line 678
    invoke-virtual {p1}, Lo/OfferSlab;->onPostMessage()V

    .line 679
    iget-object p1, p0, Lo/OrderDetailsJsonAdapter;->onTransact:Lo/OfferSlab;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/OfferSlab;->setPlayer(Lo/allow;)V

    :cond_4
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 586
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lo/OrderDetailsJsonAdapter;->ICustomTabsCallback:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
