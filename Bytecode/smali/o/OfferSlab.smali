.class public Lo/OfferSlab;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OfferSlab$onNavigationEvent;,
        Lo/OfferSlab$extraCallback;,
        Lo/OfferSlab$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private AudioAttributesCompatParcelizer:Z

.field private AudioAttributesImplApi21Parcelizer:I

.field private AudioAttributesImplBaseParcelizer:I

.field private final ICustomTabsCallback:Landroid/view/View;

.field private final ICustomTabsCallback$Stub:Landroid/widget/ImageView;

.field private final ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

.field private final ICustomTabsService:Landroid/widget/TextView;

.field private final ICustomTabsService$Stub:Landroid/graphics/drawable/Drawable;

.field private final ICustomTabsService$Stub$Proxy:Ljava/lang/String;

.field private final INotificationSideChannel:Ljava/lang/String;

.field private INotificationSideChannel$Default:Lo/g;

.field private INotificationSideChannel$Stub:Lo/OfferSlab$extraCallback;

.field private INotificationSideChannel$Stub$Proxy:Lo/OfferSlab$onMessageChannelReady;

.field private final IPostMessageService:Ljava/lang/String;

.field private final IPostMessageService$Stub:Ljava/lang/String;

.field private final IPostMessageService$Stub$Proxy:F

.field private IconCompatParcelizer:Z

.field private MediaBrowserCompat:I

.field private RemoteActionCompatParcelizer:Z

.field private final asBinder:Landroid/view/View;

.field private final asInterface:Landroid/view/View;

.field private final cancel:F

.field private final cancelAll:Landroid/graphics/drawable/Drawable;

.field private connect:I

.field private disconnect:I

.field private final extraCallback:Landroid/view/View;

.field private final extraCommand:Landroid/graphics/drawable/Drawable;

.field private getDefaultImpl:Lo/allow;

.field private getExtras:J

.field private final getInterfaceDescriptor:Landroid/widget/TextView;

.field private getRoot:[Z

.field private getServiceComponent:Z

.field private getSessionToken:[J

.field private isConnected:[J

.field private final mayLaunchUrl:Ljava/lang/Runnable;

.field private final newSession:Ljava/lang/StringBuilder;

.field private final notify:Landroid/graphics/drawable/Drawable;

.field private final onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

.field private final onNavigationEvent:Landroid/view/View;

.field private final onPostMessage:Landroid/view/View;

.field private final onRelationshipValidationResult:Landroid/view/View;

.field private final onTransact:Landroid/widget/ImageView;

.field private final postMessage:Ljava/lang/Runnable;

.field private read:Lo/onAccuracyChanged;

.field private final requestPostMessageChannel:Lo/t$onMessageChannelReady;

.field private search:[Z

.field private final setDefaultImpl:Ljava/lang/String;

.field private subscribe:J

.field private final updateVisuals:Lo/t$onPostMessage;

.field private final validateRelationship:Landroid/graphics/drawable/Drawable;

.field private final warmup:Ljava/util/Formatter;

.field private write:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 189
    invoke-static {v0}, Lo/Purchase;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-direct {p0, p1, v0}, Lo/OfferSlab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, p1, p2, v0}, Lo/OfferSlab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 298
    invoke-direct {p0, p1, p2, p3, p2}, Lo/OfferSlab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 3

    .line 306
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 307
    sget p2, Lo/OrderDetails$onMessageChannelReady;->exo_player_control_view:I

    const/16 p3, 0x1388

    .line 308
    iput p3, p0, Lo/OfferSlab;->AudioAttributesImplApi21Parcelizer:I

    const/16 v0, 0x3a98

    .line 309
    iput v0, p0, Lo/OfferSlab;->AudioAttributesImplBaseParcelizer:I

    .line 310
    iput p3, p0, Lo/OfferSlab;->disconnect:I

    const/4 p3, 0x0

    .line 311
    iput p3, p0, Lo/OfferSlab;->connect:I

    const/16 v0, 0xc8

    .line 312
    iput v0, p0, Lo/OfferSlab;->MediaBrowserCompat:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 313
    iput-wide v0, p0, Lo/OfferSlab;->getExtras:J

    .line 314
    iput-boolean p3, p0, Lo/OfferSlab;->getServiceComponent:Z

    if-eqz p4, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView:[I

    .line 319
    invoke-virtual {v0, p4, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 321
    :try_start_0
    sget v1, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView_rewind_increment:I

    iget v2, p0, Lo/OfferSlab;->AudioAttributesImplApi21Parcelizer:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lo/OfferSlab;->AudioAttributesImplApi21Parcelizer:I

    .line 322
    sget v1, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView_fastforward_increment:I

    iget v2, p0, Lo/OfferSlab;->AudioAttributesImplBaseParcelizer:I

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lo/OfferSlab;->AudioAttributesImplBaseParcelizer:I

    .line 324
    sget v1, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView_show_timeout:I

    iget v2, p0, Lo/OfferSlab;->disconnect:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lo/OfferSlab;->disconnect:I

    .line 325
    sget v1, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView_controller_layout_id:I

    .line 326
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 327
    iget v1, p0, Lo/OfferSlab;->connect:I

    invoke-static {v0, v1}, Lo/OfferSlab;->onMessageChannelReady(Landroid/content/res/TypedArray;I)I

    move-result v1

    iput v1, p0, Lo/OfferSlab;->connect:I

    .line 328
    sget v1, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView_show_shuffle_button:I

    iget-boolean v2, p0, Lo/OfferSlab;->getServiceComponent:Z

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lo/OfferSlab;->getServiceComponent:Z

    .line 330
    sget v1, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView_time_bar_min_update_interval:I

    iget v2, p0, Lo/OfferSlab;->MediaBrowserCompat:I

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 330
    invoke-virtual {p0, v1}, Lo/OfferSlab;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 336
    throw p1

    .line 338
    :cond_0
    :goto_0
    new-instance v0, Lo/t$onPostMessage;

    invoke-direct {v0}, Lo/t$onPostMessage;-><init>()V

    iput-object v0, p0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    .line 339
    new-instance v0, Lo/t$onMessageChannelReady;

    invoke-direct {v0}, Lo/t$onMessageChannelReady;-><init>()V

    iput-object v0, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lo/OfferSlab;->newSession:Ljava/lang/StringBuilder;

    .line 341
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lo/OfferSlab;->newSession:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lo/OfferSlab;->warmup:Ljava/util/Formatter;

    new-array v0, p3, [J

    .line 342
    iput-object v0, p0, Lo/OfferSlab;->getSessionToken:[J

    new-array v0, p3, [Z

    .line 343
    iput-object v0, p0, Lo/OfferSlab;->getRoot:[Z

    new-array v0, p3, [J

    .line 344
    iput-object v0, p0, Lo/OfferSlab;->isConnected:[J

    new-array v0, p3, [Z

    .line 345
    iput-object v0, p0, Lo/OfferSlab;->search:[Z

    .line 346
    new-instance v0, Lo/OfferSlab$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/OfferSlab$onNavigationEvent;-><init>(Lo/OfferSlab;Lo/OfferSlab$5;)V

    iput-object v0, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    .line 347
    new-instance v0, Lo/g$c;

    invoke-direct {v0}, Lo/g$c;-><init>()V

    iput-object v0, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    .line 348
    new-instance v0, Lo/OfferRequestJsonAdapter;

    invoke-direct {v0, p0}, Lo/OfferRequestJsonAdapter;-><init>(Lo/OfferSlab;)V

    iput-object v0, p0, Lo/OfferSlab;->mayLaunchUrl:Ljava/lang/Runnable;

    .line 349
    new-instance v0, Lo/OfferResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/OfferResponseJsonAdapter;-><init>(Lo/OfferSlab;)V

    iput-object v0, p0, Lo/OfferSlab;->postMessage:Ljava/lang/Runnable;

    .line 351
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 352
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 354
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_progress:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/OrderStatusData;

    .line 355
    sget v0, Lo/OrderDetails$ICustomTabsCallback;->exo_progress_placeholder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 357
    iput-object p2, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 361
    new-instance p2, Lo/Offer;

    invoke-direct {p2, p1, v1, p3, p4}, Lo/Offer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 362
    sget p4, Lo/OrderDetails$ICustomTabsCallback;->exo_progress:I

    invoke-virtual {p2, p4}, Landroid/view/View;->setId(I)V

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 365
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 366
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 367
    invoke-virtual {p4, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 368
    iput-object p2, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    goto :goto_1

    .line 370
    :cond_2
    iput-object v1, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    .line 372
    :goto_1
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/OfferSlab;->ICustomTabsService:Landroid/widget/TextView;

    .line 373
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/OfferSlab;->getInterfaceDescriptor:Landroid/widget/TextView;

    .line 375
    iget-object p2, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    if-eqz p2, :cond_3

    .line 376
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-interface {p2, p4}, Lo/OrderStatusData;->onNavigationEvent(Lo/OrderStatusData$ICustomTabsCallback;)V

    .line 378
    :cond_3
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->onPostMessage:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 380
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    :cond_4
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->onNavigationEvent:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 384
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :cond_5
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->ICustomTabsCallback:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 388
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    :cond_6
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->extraCallback:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 392
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    :cond_7
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->onRelationshipValidationResult:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 396
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    :cond_8
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->asInterface:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 400
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_9
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 404
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_a
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 408
    iget-object p4, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_b
    sget p2, Lo/OrderDetails$ICustomTabsCallback;->exo_vr:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->asBinder:Landroid/view/View;

    .line 411
    invoke-virtual {p0, p3}, Lo/OfferSlab;->setShowVrButton(Z)V

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 415
    sget p2, Lo/OrderDetails$extraCallback;->exo_media_button_opacity_percentage_enabled:I

    .line 416
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    iput p2, p0, Lo/OfferSlab;->cancel:F

    .line 417
    sget p2, Lo/OrderDetails$extraCallback;->exo_media_button_opacity_percentage_disabled:I

    .line 418
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, p3

    iput p2, p0, Lo/OfferSlab;->IPostMessageService$Stub$Proxy:F

    .line 420
    sget p2, Lo/OrderDetails$onPostMessage;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->extraCommand:Landroid/graphics/drawable/Drawable;

    .line 421
    sget p2, Lo/OrderDetails$onPostMessage;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->ICustomTabsService$Stub:Landroid/graphics/drawable/Drawable;

    .line 422
    sget p2, Lo/OrderDetails$onPostMessage;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->validateRelationship:Landroid/graphics/drawable/Drawable;

    .line 423
    sget p2, Lo/OrderDetails$onPostMessage;->exo_controls_shuffle_on:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->cancelAll:Landroid/graphics/drawable/Drawable;

    .line 424
    sget p2, Lo/OrderDetails$onPostMessage;->exo_controls_shuffle_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->notify:Landroid/graphics/drawable/Drawable;

    .line 425
    sget p2, Lo/OrderDetails$asInterface;->exo_controls_repeat_off_description:I

    .line 426
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->IPostMessageService:Ljava/lang/String;

    .line 427
    sget p2, Lo/OrderDetails$asInterface;->exo_controls_repeat_one_description:I

    .line 428
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->IPostMessageService$Stub:Ljava/lang/String;

    .line 429
    sget p2, Lo/OrderDetails$asInterface;->exo_controls_repeat_all_description:I

    .line 430
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    .line 431
    sget p2, Lo/OrderDetails$asInterface;->exo_controls_shuffle_on_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lo/OfferSlab;->INotificationSideChannel:Ljava/lang/String;

    .line 432
    sget p2, Lo/OrderDetails$asInterface;->exo_controls_shuffle_off_description:I

    .line 433
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/OfferSlab;->setDefaultImpl:Ljava/lang/String;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/OfferSlab;)Ljava/util/Formatter;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->warmup:Ljava/util/Formatter;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/OfferSlab;Lo/allow;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lo/OfferSlab;->onNavigationEvent(Lo/allow;)V

    return-void
.end method

.method private ICustomTabsCallback(Lo/allow;)V
    .locals 4

    .line 1023
    invoke-interface {p1}, Lo/allow;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/OfferSlab;->AudioAttributesImplBaseParcelizer:I

    if-lez v0, :cond_0

    .line 1024
    invoke-interface {p1}, Lo/allow;->IPostMessageService()J

    move-result-wide v0

    iget v2, p0, Lo/OfferSlab;->AudioAttributesImplBaseParcelizer:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lo/OfferSlab;->extraCallback(Lo/allow;J)V

    :cond_0
    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/OfferSlab;Z)Z
    .locals 0

    .line 186
    iput-boolean p1, p0, Lo/OfferSlab;->AudioAttributesCompatParcelizer:Z

    return p1
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 7

    .line 747
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 751
    :cond_0
    invoke-direct {p0}, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v0

    .line 752
    iget-object v1, p0, Lo/OfferSlab;->onPostMessage:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v4

    .line 754
    iget-object v5, p0, Lo/OfferSlab;->onPostMessage:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 756
    :goto_2
    iget-object v5, p0, Lo/OfferSlab;->onNavigationEvent:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 757
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v1, v3

    .line 758
    iget-object v3, p0, Lo/OfferSlab;->onNavigationEvent:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 761
    invoke-direct {p0}, Lo/OfferSlab;->newSession()V

    :cond_7
    :goto_5
    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/OfferSlab;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/OfferSlab;->asBinder()V

    return-void
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/OfferSlab;)Landroid/view/View;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->asInterface:Landroid/view/View;

    return-object p0
.end method

.method private ICustomTabsCallback$Stub$Proxy()Z
    .locals 2

    .line 1153
    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    if-eqz v0, :cond_0

    .line 1154
    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    .line 1155
    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    .line 1156
    invoke-interface {v0}, Lo/allow;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ICustomTabsService(Lo/OfferSlab;)Landroid/view/View;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->onPostMessage:Landroid/view/View;

    return-object p0
.end method

.method private ICustomTabsService()V
    .locals 2

    .line 831
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_3

    .line 834
    :cond_0
    iget-boolean v1, p0, Lo/OfferSlab;->getServiceComponent:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 835
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 836
    :cond_1
    iget-object v1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 837
    invoke-direct {p0, v1, v0}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 838
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->notify:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 841
    invoke-direct {p0, v1, v0}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 842
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    .line 843
    invoke-interface {v1}, Lo/allow;->updateVisuals()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/OfferSlab;->cancelAll:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lo/OfferSlab;->notify:Landroid/graphics/drawable/Drawable;

    .line 842
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    .line 845
    invoke-interface {v1}, Lo/allow;->updateVisuals()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/OfferSlab;->INotificationSideChannel:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lo/OfferSlab;->setDefaultImpl:Ljava/lang/String;

    .line 844
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private asBinder()V
    .locals 3

    .line 797
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 800
    :cond_0
    iget v1, p0, Lo/OfferSlab;->connect:I

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 801
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 804
    :cond_1
    iget-object v1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 805
    invoke-direct {p0, v2, v0}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 806
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->IPostMessageService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 810
    invoke-direct {p0, v1, v0}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 811
    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v0}, Lo/allow;->newSession()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 821
    :cond_3
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->validateRelationship:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 822
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 817
    :cond_4
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->ICustomTabsService$Stub:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->IPostMessageService$Stub:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 813
    :cond_5
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->extraCommand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/OfferSlab;->IPostMessageService:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 827
    :goto_0
    iget-object v0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic asBinder(Lo/OfferSlab;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/OfferSlab;->onRelationshipValidationResult()V

    return-void
.end method

.method private asInterface()V
    .locals 5

    .line 727
    iget-object v0, p0, Lo/OfferSlab;->postMessage:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 728
    iget v0, p0, Lo/OfferSlab;->disconnect:I

    if-lez v0, :cond_0

    .line 729
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lo/OfferSlab;->disconnect:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lo/OfferSlab;->getExtras:J

    .line 730
    iget-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lo/OfferSlab;->postMessage:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 734
    iput-wide v0, p0, Lo/OfferSlab;->getExtras:J

    :cond_1
    return-void
.end method

.method static synthetic asInterface(Lo/OfferSlab;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/OfferSlab;->ICustomTabsService()V

    return-void
.end method

.method static synthetic extraCallback(Lo/OfferSlab;)Ljava/lang/StringBuilder;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->newSession:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/OfferSlab;Lo/allow;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lo/OfferSlab;->ICustomTabsCallback(Lo/allow;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/OfferSlab;Lo/allow;J)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lo/OfferSlab;->onMessageChannelReady(Lo/allow;J)V

    return-void
.end method

.method private extraCallback(Lo/allow;)V
    .locals 6

    .line 1003
    invoke-interface {p1}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lo/allow;->validateRelationship()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    invoke-interface {p1}, Lo/allow;->extraCommand()I

    move-result v1

    .line 1008
    invoke-interface {p1}, Lo/allow;->onNavigationEvent()I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_1

    .line 1010
    invoke-direct {p0, p1, v2, v4, v5}, Lo/OfferSlab;->extraCallback(Lo/allow;IJ)Z

    return-void

    .line 1011
    :cond_1
    iget-object v2, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v0

    iget-boolean v0, v0, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    .line 1012
    invoke-direct {p0, p1, v1, v4, v5}, Lo/OfferSlab;->extraCallback(Lo/allow;IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private extraCallback(Lo/allow;J)V
    .locals 1

    .line 1029
    invoke-interface {p1}, Lo/allow;->extraCommand()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lo/OfferSlab;->extraCallback(Lo/allow;IJ)Z

    return-void
.end method

.method private extraCallback(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 980
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 981
    iget p1, p0, Lo/OfferSlab;->cancel:F

    goto :goto_0

    :cond_1
    iget p1, p0, Lo/OfferSlab;->IPostMessageService$Stub$Proxy:F

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 982
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static extraCallback(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private extraCallback(Lo/allow;IJ)Z
    .locals 5

    .line 1033
    invoke-interface {p1}, Lo/allow;->ICustomTabsService$Stub()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1035
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_0
    const-wide/16 v0, 0x0

    .line 1037
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 1038
    iget-object v0, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/g;->onMessageChannelReady(Lo/allow;IJ)Z

    move-result p1

    return p1
.end method

.method static synthetic extraCommand(Lo/OfferSlab;)Landroid/widget/ImageView;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->onTransact:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic getInterfaceDescriptor(Lo/OfferSlab;)Landroid/view/View;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->extraCallback:Landroid/view/View;

    return-object p0
.end method

.method private getInterfaceDescriptor()V
    .locals 22

    move-object/from16 v0, p0

    .line 852
    iget-object v1, v0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    if-nez v1, :cond_0

    return-void

    .line 855
    :cond_0
    iget-boolean v2, v0, Lo/OfferSlab;->write:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 856
    invoke-interface {v1}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object v1

    iget-object v2, v0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    invoke-static {v1, v2}, Lo/OfferSlab;->onPostMessage(Lo/t;Lo/t$onMessageChannelReady;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lo/OfferSlab;->IconCompatParcelizer:Z

    const-wide/16 v1, 0x0

    .line 857
    iput-wide v1, v0, Lo/OfferSlab;->subscribe:J

    .line 860
    iget-object v5, v0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v5}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object v5

    .line 861
    invoke-virtual {v5}, Lo/t;->extraCallback()Z

    move-result v6

    if-nez v6, :cond_d

    .line 862
    iget-object v6, v0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v6}, Lo/allow;->extraCommand()I

    move-result v6

    .line 863
    iget-boolean v7, v0, Lo/OfferSlab;->IconCompatParcelizer:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move v7, v6

    .line 864
    :goto_1
    iget-boolean v8, v0, Lo/OfferSlab;->IconCompatParcelizer:Z

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lo/t;->onMessageChannelReady()I

    move-result v8

    sub-int/2addr v8, v4

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    move-wide v9, v1

    const/4 v11, 0x0

    :goto_3
    if-gt v7, v8, :cond_c

    if-ne v7, v6, :cond_4

    .line 867
    invoke-static {v9, v10}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v12

    iput-wide v12, v0, Lo/OfferSlab;->subscribe:J

    .line 869
    :cond_4
    iget-object v12, v0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    invoke-virtual {v5, v7, v12}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    .line 870
    iget-object v12, v0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-wide v12, v12, Lo/t$onMessageChannelReady;->asBinder:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v12, v14

    if-nez v16, :cond_5

    .line 871
    iget-boolean v1, v0, Lo/OfferSlab;->IconCompatParcelizer:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    goto/16 :goto_9

    .line 874
    :cond_5
    iget-object v12, v0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget v12, v12, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    :goto_4
    iget-object v13, v0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget v13, v13, Lo/t$onMessageChannelReady;->onTransact:I

    if-gt v12, v13, :cond_b

    .line 875
    iget-object v13, v0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    invoke-virtual {v5, v12, v13}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    .line 876
    iget-object v13, v0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    invoke-virtual {v13}, Lo/t$onPostMessage;->onPostMessage()I

    move-result v13

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v13, :cond_a

    .line 878
    iget-object v4, v0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    invoke-virtual {v4, v3}, Lo/t$onPostMessage;->onNavigationEvent(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v4, v18, v20

    if-nez v4, :cond_6

    .line 880
    iget-object v4, v0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    iget-wide v1, v4, Lo/t$onPostMessage;->ICustomTabsCallback:J

    cmp-long v4, v1, v14

    if-eqz v4, :cond_9

    .line 884
    iget-object v1, v0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    iget-wide v1, v1, Lo/t$onPostMessage;->ICustomTabsCallback:J

    move-wide/from16 v18, v1

    .line 886
    :cond_6
    iget-object v1, v0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    invoke-virtual {v1}, Lo/t$onPostMessage;->onMessageChannelReady()J

    move-result-wide v1

    add-long v18, v18, v1

    const-wide/16 v1, 0x0

    cmp-long v4, v18, v1

    if-ltz v4, :cond_9

    .line 887
    iget-object v4, v0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-wide v1, v4, Lo/t$onMessageChannelReady;->asBinder:J

    cmp-long v4, v18, v1

    if-gtz v4, :cond_9

    .line 888
    iget-object v1, v0, Lo/OfferSlab;->getSessionToken:[J

    array-length v2, v1

    if-ne v11, v2, :cond_8

    .line 889
    array-length v2, v1

    if-nez v2, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    array-length v1, v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    .line 890
    :goto_6
    iget-object v4, v0, Lo/OfferSlab;->getSessionToken:[J

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Lo/OfferSlab;->getSessionToken:[J

    .line 891
    iget-object v4, v0, Lo/OfferSlab;->getRoot:[Z

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, v0, Lo/OfferSlab;->getRoot:[Z

    goto :goto_7

    :cond_8
    const/4 v2, 0x1

    .line 893
    :goto_7
    iget-object v1, v0, Lo/OfferSlab;->getSessionToken:[J

    add-long v18, v9, v18

    invoke-static/range {v18 .. v19}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v17

    aput-wide v17, v1, v11

    .line 894
    iget-object v1, v0, Lo/OfferSlab;->getRoot:[Z

    iget-object v4, v0, Lo/OfferSlab;->updateVisuals:Lo/t$onPostMessage;

    invoke-virtual {v4, v3}, Lo/t$onPostMessage;->onMessageChannelReady(I)Z

    move-result v4

    aput-boolean v4, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x1

    :goto_8
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x1

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x1

    .line 899
    iget-object v1, v0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-wide v3, v1, Lo/t$onMessageChannelReady;->asBinder:J

    add-long/2addr v9, v3

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_c
    :goto_9
    move-wide v1, v9

    goto :goto_a

    :cond_d
    const-wide/16 v1, 0x0

    const/4 v11, 0x0

    .line 902
    :goto_a
    invoke-static {v1, v2}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v1

    .line 903
    iget-object v3, v0, Lo/OfferSlab;->ICustomTabsService:Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 904
    iget-object v4, v0, Lo/OfferSlab;->newSession:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lo/OfferSlab;->warmup:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    :cond_e
    iget-object v3, v0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    if-eqz v3, :cond_10

    .line 907
    invoke-interface {v3, v1, v2}, Lo/OrderStatusData;->setDuration(J)V

    .line 908
    iget-object v1, v0, Lo/OfferSlab;->isConnected:[J

    array-length v1, v1

    add-int v2, v11, v1

    .line 910
    iget-object v3, v0, Lo/OfferSlab;->getSessionToken:[J

    array-length v4, v3

    if-le v2, v4, :cond_f

    .line 911
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lo/OfferSlab;->getSessionToken:[J

    .line 912
    iget-object v3, v0, Lo/OfferSlab;->getRoot:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lo/OfferSlab;->getRoot:[Z

    .line 914
    :cond_f
    iget-object v3, v0, Lo/OfferSlab;->isConnected:[J

    iget-object v4, v0, Lo/OfferSlab;->getSessionToken:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget-object v3, v0, Lo/OfferSlab;->search:[Z

    iget-object v4, v0, Lo/OfferSlab;->getRoot:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    iget-object v1, v0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    iget-object v3, v0, Lo/OfferSlab;->getSessionToken:[J

    iget-object v4, v0, Lo/OfferSlab;->getRoot:[Z

    invoke-interface {v1, v3, v4, v2}, Lo/OrderStatusData;->setAdGroupTimesMs([J[ZI)V

    .line 918
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lo/OfferSlab;->extraCallback()V

    return-void
.end method

.method static synthetic mayLaunchUrl(Lo/OfferSlab;)Lo/onAccuracyChanged;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->read:Lo/onAccuracyChanged;

    return-object p0
.end method

.method static synthetic newSession(Lo/OfferSlab;)Landroid/view/View;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->onRelationshipValidationResult:Landroid/view/View;

    return-object p0
.end method

.method private newSession()V
    .locals 2

    .line 968
    invoke-direct {p0}, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    iget-object v1, p0, Lo/OfferSlab;->onPostMessage:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lo/OfferSlab;->onNavigationEvent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 972
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method private static onMessageChannelReady(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 439
    sget v0, Lo/OrderDetails$onRelationshipValidationResult;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/OfferSlab;)Lo/allow;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    return-object p0
.end method

.method static synthetic onMessageChannelReady(Lo/OfferSlab;Lo/allow;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lo/OfferSlab;->extraCallback(Lo/allow;)V

    return-void
.end method

.method private onMessageChannelReady(Lo/allow;)V
    .locals 6

    .line 986
    invoke-interface {p1}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lo/allow;->validateRelationship()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    invoke-interface {p1}, Lo/allow;->extraCommand()I

    move-result v1

    .line 991
    iget-object v2, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v1, v2}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    .line 992
    invoke-interface {p1}, Lo/allow;->onMessageChannelReady()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 994
    invoke-interface {p1}, Lo/allow;->IPostMessageService()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-boolean v1, v1, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-boolean v1, v1, Lo/t$onMessageChannelReady;->onPostMessage:Z

    if-nez v1, :cond_2

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 996
    invoke-direct {p0, p1, v0, v1, v2}, Lo/OfferSlab;->extraCallback(Lo/allow;IJ)Z

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    .line 998
    invoke-direct {p0, p1, v0, v1}, Lo/OfferSlab;->extraCallback(Lo/allow;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onMessageChannelReady(Lo/allow;J)V
    .locals 6

    .line 1043
    invoke-interface {p1}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 1044
    iget-boolean v1, p0, Lo/OfferSlab;->IconCompatParcelizer:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1045
    invoke-virtual {v0}, Lo/t;->onMessageChannelReady()I

    move-result v1

    const/4 v2, 0x0

    .line 1048
    :goto_0
    iget-object v3, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v2, v3}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v3

    invoke-virtual {v3}, Lo/t$onMessageChannelReady;->onPostMessage()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_0

    move-wide p2, v3

    goto :goto_1

    :cond_0
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    invoke-interface {p1}, Lo/allow;->extraCommand()I

    move-result v2

    .line 1062
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lo/OfferSlab;->extraCallback(Lo/allow;IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1066
    invoke-virtual {p0}, Lo/OfferSlab;->extraCallback()V

    :cond_3
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/OfferSlab;)Landroid/widget/TextView;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->getInterfaceDescriptor:Landroid/widget/TextView;

    return-object p0
.end method

.method private onNavigationEvent(Lo/allow;)V
    .locals 4

    .line 1017
    invoke-interface {p1}, Lo/allow;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lo/OfferSlab;->AudioAttributesImplApi21Parcelizer:I

    if-lez v0, :cond_0

    .line 1018
    invoke-interface {p1}, Lo/allow;->IPostMessageService()J

    move-result-wide v0

    iget v2, p0, Lo/OfferSlab;->AudioAttributesImplApi21Parcelizer:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lo/OfferSlab;->extraCallback(Lo/allow;J)V

    :cond_0
    return-void
.end method

.method static synthetic onPostMessage(Lo/OfferSlab;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/OfferSlab;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method static synthetic onPostMessage(Lo/OfferSlab;Lo/allow;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lo/OfferSlab;->onMessageChannelReady(Lo/allow;)V

    return-void
.end method

.method private static onPostMessage(Lo/t;Lo/t$onMessageChannelReady;)Z
    .locals 8

    .line 1178
    invoke-virtual {p0}, Lo/t;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lo/t;->onMessageChannelReady()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1183
    invoke-virtual {p0, v2, p1}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v3

    iget-wide v3, v3, Lo/t$onMessageChannelReady;->asBinder:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private onRelationshipValidationResult()V
    .locals 7

    .line 766
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 774
    :cond_0
    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 775
    invoke-interface {v0}, Lo/allow;->setDefaultImpl()Lo/t;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Lo/t;->extraCallback()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v2}, Lo/allow;->validateRelationship()Z

    move-result v2

    if-nez v2, :cond_7

    .line 777
    iget-object v2, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v2}, Lo/allow;->extraCommand()I

    move-result v2

    iget-object v3, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    invoke-virtual {v0, v2, v3}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    .line 778
    iget-object v0, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-boolean v0, v0, Lo/t$onMessageChannelReady;->onPostMessage:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 780
    iget-object v3, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-boolean v3, v3, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v3}, Lo/allow;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 781
    iget v4, p0, Lo/OfferSlab;->AudioAttributesImplApi21Parcelizer:I

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 782
    iget v5, p0, Lo/OfferSlab;->AudioAttributesImplBaseParcelizer:I

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 783
    :goto_3
    iget-object v6, p0, Lo/OfferSlab;->requestPostMessageChannel:Lo/t$onMessageChannelReady;

    iget-boolean v6, v6, Lo/t$onMessageChannelReady;->onMessageChannelReady:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v6}, Lo/allow;->extraCallback()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    move v2, v0

    move v0, v1

    move v1, v3

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 787
    :goto_4
    iget-object v3, p0, Lo/OfferSlab;->ICustomTabsCallback:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 788
    iget-object v1, p0, Lo/OfferSlab;->onRelationshipValidationResult:Landroid/view/View;

    invoke-direct {p0, v4, v1}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 789
    iget-object v1, p0, Lo/OfferSlab;->asInterface:Landroid/view/View;

    invoke-direct {p0, v5, v1}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 790
    iget-object v1, p0, Lo/OfferSlab;->extraCallback:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lo/OfferSlab;->extraCallback(ZLandroid/view/View;)V

    .line 791
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    if-eqz v0, :cond_8

    .line 792
    invoke-interface {v0, v2}, Lo/OrderStatusData;->setEnabled(Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method static synthetic onRelationshipValidationResult(Lo/OfferSlab;)V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lo/OfferSlab;->extraCallback()V

    return-void
.end method

.method private onTransact()V
    .locals 0

    .line 739
    invoke-direct {p0}, Lo/OfferSlab;->ICustomTabsCallback$Stub()V

    .line 740
    invoke-direct {p0}, Lo/OfferSlab;->onRelationshipValidationResult()V

    .line 741
    invoke-direct {p0}, Lo/OfferSlab;->asBinder()V

    .line 742
    invoke-direct {p0}, Lo/OfferSlab;->ICustomTabsService()V

    .line 743
    invoke-direct {p0}, Lo/OfferSlab;->getInterfaceDescriptor()V

    return-void
.end method

.method static synthetic onTransact(Lo/OfferSlab;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lo/OfferSlab;->getInterfaceDescriptor()V

    return-void
.end method

.method static synthetic postMessage(Lo/OfferSlab;)Lo/g;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    return-object p0
.end method

.method static synthetic requestPostMessageChannel(Lo/OfferSlab;)I
    .locals 0

    .line 186
    iget p0, p0, Lo/OfferSlab;->connect:I

    return p0
.end method

.method static synthetic updateVisuals(Lo/OfferSlab;)Landroid/view/View;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->onNavigationEvent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic validateRelationship(Lo/OfferSlab;)Landroid/widget/ImageView;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic warmup(Lo/OfferSlab;)Landroid/view/View;
    .locals 0

    .line 186
    iget-object p0, p0, Lo/OfferSlab;->ICustomTabsCallback:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    .line 723
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1107
    invoke-virtual {p0, p1}, Lo/OfferSlab;->onNavigationEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lo/OfferSlab;->postMessage:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1099
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1100
    invoke-direct {p0}, Lo/OfferSlab;->asInterface()V

    .line 1102
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method extraCallback()V
    .locals 13

    .line 922
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 928
    :cond_0
    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 929
    iget-wide v1, p0, Lo/OfferSlab;->subscribe:J

    invoke-interface {v0}, Lo/allow;->INotificationSideChannel()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 930
    iget-wide v3, p0, Lo/OfferSlab;->subscribe:J

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v0}, Lo/allow;->cancel()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 932
    :goto_0
    iget-object v0, p0, Lo/OfferSlab;->getInterfaceDescriptor:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lo/OfferSlab;->AudioAttributesCompatParcelizer:Z

    if-nez v5, :cond_2

    .line 933
    iget-object v5, p0, Lo/OfferSlab;->newSession:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lo/OfferSlab;->warmup:Ljava/util/Formatter;

    invoke-static {v5, v6, v1, v2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    :cond_2
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    if-eqz v0, :cond_3

    .line 936
    invoke-interface {v0, v1, v2}, Lo/OrderStatusData;->setPosition(J)V

    .line 937
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    invoke-interface {v0, v3, v4}, Lo/OrderStatusData;->setBufferedPosition(J)V

    .line 939
    :cond_3
    iget-object v0, p0, Lo/OfferSlab;->INotificationSideChannel$Stub:Lo/OfferSlab$extraCallback;

    if-eqz v0, :cond_4

    .line 940
    invoke-interface {v0, v1, v2, v3, v4}, Lo/OfferSlab$extraCallback;->extraCallback(JJ)V

    .line 944
    :cond_4
    iget-object v0, p0, Lo/OfferSlab;->mayLaunchUrl:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 945
    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    const/4 v3, 0x1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lo/allow;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    :goto_1
    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    if-ne v0, v4, :cond_8

    .line 946
    iget-object v4, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v4}, Lo/allow;->ICustomTabsService()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 947
    iget-object v0, p0, Lo/OfferSlab;->ICustomTabsCallback$Stub$Proxy:Lo/OrderStatusData;

    if-eqz v0, :cond_6

    .line 948
    invoke-interface {v0}, Lo/OrderStatusData;->onPostMessage()J

    move-result-wide v3

    goto :goto_2

    :cond_6
    move-wide v3, v5

    .line 951
    :goto_2
    rem-long/2addr v1, v5

    sub-long v0, v5, v1

    .line 952
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 955
    iget-object v2, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v2}, Lo/allow;->requestPostMessageChannel()Lo/r;

    move-result-object v2

    iget v2, v2, Lo/r;->ICustomTabsCallback:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    long-to-float v0, v0

    div-float/2addr v0, v2

    float-to-long v5, v0

    :cond_7
    move-wide v7, v5

    .line 960
    iget v0, p0, Lo/OfferSlab;->MediaBrowserCompat:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JJJ)J

    move-result-wide v0

    .line 961
    iget-object v2, p0, Lo/OfferSlab;->mayLaunchUrl:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_8
    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    if-eq v0, v3, :cond_9

    .line 963
    iget-object v0, p0, Lo/OfferSlab;->mayLaunchUrl:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_3
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1072
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1073
    iput-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    .line 1074
    iget-wide v0, p0, Lo/OfferSlab;->getExtras:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1075
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 1077
    invoke-virtual {p0}, Lo/OfferSlab;->onPostMessage()V

    goto :goto_0

    .line 1079
    :cond_0
    iget-object v2, p0, Lo/OfferSlab;->postMessage:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    invoke-direct {p0}, Lo/OfferSlab;->asInterface()V

    .line 1084
    :cond_2
    :goto_0
    invoke-direct {p0}, Lo/OfferSlab;->onTransact()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1089
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1090
    iput-boolean v0, p0, Lo/OfferSlab;->RemoteActionCompatParcelizer:Z

    .line 1091
    iget-object v0, p0, Lo/OfferSlab;->mayLaunchUrl:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1092
    iget-object v0, p0, Lo/OfferSlab;->postMessage:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 2

    .line 696
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 697
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lo/OfferSlab;->INotificationSideChannel$Stub$Proxy:Lo/OfferSlab$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lo/OfferSlab$onMessageChannelReady;->ICustomTabsCallback(I)V

    .line 701
    :cond_0
    invoke-direct {p0}, Lo/OfferSlab;->onTransact()V

    .line 702
    invoke-direct {p0}, Lo/OfferSlab;->newSession()V

    .line 705
    :cond_1
    invoke-direct {p0}, Lo/OfferSlab;->asInterface()V

    return-void
.end method

.method public onNavigationEvent()I
    .locals 1

    .line 583
    iget v0, p0, Lo/OfferSlab;->disconnect:I

    return v0
.end method

.method public onNavigationEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1118
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1119
    iget-object v1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-static {v0}, Lo/OfferSlab;->extraCallback(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1122
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_8

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 1124
    iget-object p1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-direct {p0, p1}, Lo/OfferSlab;->ICustomTabsCallback(Lo/allow;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x59

    if-ne v0, v1, :cond_2

    .line 1126
    iget-object p1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-direct {p0, p1}, Lo/OfferSlab;->onNavigationEvent(Lo/allow;)V

    goto :goto_0

    .line 1127
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6

    const/16 p1, 0x58

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 1136
    :cond_3
    iget-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {p1, v0, v2}, Lo/g;->onMessageChannelReady(Lo/allow;Z)Z

    goto :goto_0

    .line 1133
    :cond_4
    iget-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {p1, v0, v3}, Lo/g;->onMessageChannelReady(Lo/allow;Z)Z

    goto :goto_0

    .line 1142
    :cond_5
    iget-object p1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-direct {p0, p1}, Lo/OfferSlab;->onMessageChannelReady(Lo/allow;)V

    goto :goto_0

    .line 1139
    :cond_6
    iget-object p1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-direct {p0, p1}, Lo/OfferSlab;->extraCallback(Lo/allow;)V

    goto :goto_0

    .line 1130
    :cond_7
    iget-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {v0}, Lo/allow;->ICustomTabsService()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Lo/g;->onMessageChannelReady(Lo/allow;Z)Z

    :cond_8
    :goto_0
    return v3

    :cond_9
    :goto_1
    return v2
.end method

.method public onPostMessage()V
    .locals 2

    .line 710
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 711
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lo/OfferSlab;->INotificationSideChannel$Stub$Proxy:Lo/OfferSlab$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lo/OfferSlab$onMessageChannelReady;->ICustomTabsCallback(I)V

    .line 715
    :cond_0
    iget-object v0, p0, Lo/OfferSlab;->mayLaunchUrl:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 716
    iget-object v0, p0, Lo/OfferSlab;->postMessage:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 717
    iput-wide v0, p0, Lo/OfferSlab;->getExtras:J

    :cond_1
    return-void
.end method

.method public setControlDispatcher(Lo/g;)V
    .locals 0

    if-nez p1, :cond_0

    .line 547
    new-instance p1, Lo/g$c;

    invoke-direct {p1}, Lo/g$c;-><init>()V

    :cond_0
    iput-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [J

    .line 501
    iput-object p1, p0, Lo/OfferSlab;->isConnected:[J

    new-array p1, v0, [Z

    .line 502
    iput-object p1, p0, Lo/OfferSlab;->search:[Z

    goto :goto_0

    .line 504
    :cond_0
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    .line 505
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 506
    iput-object p1, p0, Lo/OfferSlab;->isConnected:[J

    .line 507
    iput-object p2, p0, Lo/OfferSlab;->search:[Z

    .line 509
    :goto_0
    invoke-direct {p0}, Lo/OfferSlab;->getInterfaceDescriptor()V

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 571
    iput p1, p0, Lo/OfferSlab;->AudioAttributesImplBaseParcelizer:I

    .line 572
    invoke-direct {p0}, Lo/OfferSlab;->onRelationshipValidationResult()V

    return-void
.end method

.method public setPlaybackPreparer(Lo/onAccuracyChanged;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lo/OfferSlab;->read:Lo/onAccuracyChanged;

    return-void
.end method

.method public setPlayer(Lo/allow;)V
    .locals 4

    .line 459
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

    .line 461
    invoke-interface {p1}, Lo/allow;->onRelationshipValidationResult()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 460
    :cond_2
    :goto_1
    invoke-static {v2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 462
    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 466
    iget-object v1, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-interface {v0, v1}, Lo/allow;->onMessageChannelReady(Lo/allow$onNavigationEvent;)V

    .line 468
    :cond_4
    iput-object p1, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    if-eqz p1, :cond_5

    .line 470
    iget-object v0, p0, Lo/OfferSlab;->onMessageChannelReady:Lo/OfferSlab$onNavigationEvent;

    invoke-interface {p1, v0}, Lo/allow;->ICustomTabsCallback(Lo/allow$onNavigationEvent;)V

    .line 472
    :cond_5
    invoke-direct {p0}, Lo/OfferSlab;->onTransact()V

    return-void
.end method

.method public setProgressUpdateListener(Lo/OfferSlab$extraCallback;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Stub:Lo/OfferSlab$extraCallback;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 616
    iput p1, p0, Lo/OfferSlab;->connect:I

    .line 617
    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    if-eqz v0, :cond_2

    .line 618
    invoke-interface {v0}, Lo/allow;->newSession()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 621
    iget-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lo/g;->onMessageChannelReady(Lo/allow;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 624
    iget-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {p1, v0, v2}, Lo/g;->onMessageChannelReady(Lo/allow;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 627
    iget-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Default:Lo/g;

    iget-object v0, p0, Lo/OfferSlab;->getDefaultImpl:Lo/allow;

    invoke-interface {p1, v0, v1}, Lo/g;->onMessageChannelReady(Lo/allow;I)Z

    .line 630
    :cond_2
    :goto_0
    invoke-direct {p0}, Lo/OfferSlab;->asBinder()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 560
    iput p1, p0, Lo/OfferSlab;->AudioAttributesImplApi21Parcelizer:I

    .line 561
    invoke-direct {p0}, Lo/OfferSlab;->onRelationshipValidationResult()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Lo/OfferSlab;->write:Z

    .line 485
    invoke-direct {p0}, Lo/OfferSlab;->getInterfaceDescriptor()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 644
    iput-boolean p1, p0, Lo/OfferSlab;->getServiceComponent:Z

    .line 645
    invoke-direct {p0}, Lo/OfferSlab;->ICustomTabsService()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 594
    iput p1, p0, Lo/OfferSlab;->disconnect:I

    .line 595
    invoke-virtual {p0}, Lo/OfferSlab;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 597
    invoke-direct {p0}, Lo/OfferSlab;->asInterface()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 659
    iget-object v0, p0, Lo/OfferSlab;->asBinder:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 660
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 688
    invoke-static {p1, v0, v1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result p1

    iput p1, p0, Lo/OfferSlab;->MediaBrowserCompat:I

    return-void
.end method

.method public setVisibilityListener(Lo/OfferSlab$onMessageChannelReady;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lo/OfferSlab;->INotificationSideChannel$Stub$Proxy:Lo/OfferSlab$onMessageChannelReady;

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 670
    iget-object v0, p0, Lo/OfferSlab;->asBinder:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
