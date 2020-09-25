.class public Lo/Offer;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lo/OrderStatusData;


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Rect;

.field private final ICustomTabsCallback$Stub:Landroid/graphics/Paint;

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final ICustomTabsService:Landroid/graphics/drawable/Drawable;

.field private final ICustomTabsService$Stub:Landroid/graphics/Point;

.field private final ICustomTabsService$Stub$Proxy:Ljava/util/Formatter;

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Default:J

.field private INotificationSideChannel$Stub:J

.field private INotificationSideChannel$Stub$Proxy:I

.field private final IPostMessageService:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/OrderStatusData$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final IPostMessageService$Stub:Ljava/lang/Runnable;

.field private IPostMessageService$Stub$Proxy:I

.field private RemoteActionCompatParcelizer:[Z

.field private final asBinder:Landroid/graphics/Paint;

.field private final asInterface:Landroid/graphics/Paint;

.field private cancel:J

.field private cancelAll:Z

.field private final extraCallback:Landroid/graphics/Rect;

.field private final extraCommand:I

.field private getDefaultImpl:J

.field private final getInterfaceDescriptor:I

.field private final mayLaunchUrl:Ljava/lang/StringBuilder;

.field private final newSession:I

.field private final notify:F

.field private final onMessageChannelReady:Landroid/graphics/Paint;

.field private final onNavigationEvent:Landroid/graphics/Rect;

.field private final onPostMessage:Landroid/graphics/Rect;

.field private final onRelationshipValidationResult:Landroid/graphics/Paint;

.field private final onTransact:Landroid/graphics/Paint;

.field private final postMessage:I

.field private final requestPostMessageChannel:I

.field private setDefaultImpl:J

.field private final updateVisuals:I

.field private final validateRelationship:[I

.field private final warmup:I

.field private write:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, v0}, Lo/Offer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, p1, p2, v0}, Lo/Offer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 232
    invoke-direct {p0, p1, p2, p3, p2}, Lo/Offer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 10

    .line 242
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    .line 244
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 245
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo/Offer;->extraCallback:Landroid/graphics/Rect;

    .line 246
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    .line 247
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/Offer;->onMessageChannelReady:Landroid/graphics/Paint;

    .line 248
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/Offer;->asInterface:Landroid/graphics/Paint;

    .line 249
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/Offer;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    .line 250
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/Offer;->onTransact:Landroid/graphics/Paint;

    .line 251
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/Offer;->onRelationshipValidationResult:Landroid/graphics/Paint;

    .line 252
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lo/Offer;->asBinder:Landroid/graphics/Paint;

    const/4 p3, 0x1

    .line 253
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Lo/Offer;->IPostMessageService:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 255
    iput-object v0, p0, Lo/Offer;->validateRelationship:[I

    .line 256
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lo/Offer;->ICustomTabsService$Stub:Landroid/graphics/Point;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 261
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lo/Offer;->notify:F

    const/16 v1, -0x32

    .line 262
    invoke-static {v0, v1}, Lo/Offer;->onPostMessage(FI)I

    move-result v0

    iput v0, p0, Lo/Offer;->extraCommand:I

    .line 263
    iget v0, p0, Lo/Offer;->notify:F

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lo/Offer;->onPostMessage(FI)I

    move-result v0

    .line 264
    iget v2, p0, Lo/Offer;->notify:F

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lo/Offer;->onPostMessage(FI)I

    move-result v2

    .line 265
    iget v3, p0, Lo/Offer;->notify:F

    invoke-static {v3, v1}, Lo/Offer;->onPostMessage(FI)I

    move-result v1

    .line 266
    iget v3, p0, Lo/Offer;->notify:F

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lo/Offer;->onPostMessage(FI)I

    move-result v3

    .line 267
    iget v4, p0, Lo/Offer;->notify:F

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lo/Offer;->onPostMessage(FI)I

    move-result v4

    .line 268
    iget v6, p0, Lo/Offer;->notify:F

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lo/Offer;->onPostMessage(FI)I

    move-result v6

    const v7, -0x4d000100

    const/4 v8, -0x1

    if-eqz p4, :cond_1

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v9, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar:[I

    invoke-virtual {p1, p4, v9, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 273
    :try_start_0
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_scrubber_drawable:I

    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_0

    .line 275
    invoke-direct {p0, p4}, Lo/Offer;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Z

    .line 276
    iget-object p4, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p4

    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 279
    :cond_0
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_bar_height:I

    invoke-virtual {p1, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lo/Offer;->warmup:I

    .line 281
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_touch_target_height:I

    invoke-virtual {p1, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lo/Offer;->newSession:I

    .line 283
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_ad_marker_width:I

    invoke-virtual {p1, p4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lo/Offer;->ICustomTabsCallback$Stub$Proxy:I

    .line 285
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_scrubber_enabled_size:I

    invoke-virtual {p1, p4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lo/Offer;->getInterfaceDescriptor:I

    .line 287
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_scrubber_disabled_size:I

    invoke-virtual {p1, p4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lo/Offer;->postMessage:I

    .line 289
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_scrubber_dragged_size:I

    invoke-virtual {p1, p4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lo/Offer;->updateVisuals:I

    .line 291
    sget p4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_played_color:I

    invoke-virtual {p1, p4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 292
    sget v0, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_scrubber_color:I

    .line 293
    invoke-static {p4}, Lo/Offer;->ICustomTabsCallback(I)I

    move-result v1

    .line 292
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 294
    sget v1, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_buffered_color:I

    .line 295
    invoke-static {p4}, Lo/Offer;->onMessageChannelReady(I)I

    move-result v2

    .line 294
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 296
    sget v2, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_unplayed_color:I

    .line 297
    invoke-static {p4}, Lo/Offer;->onNavigationEvent(I)I

    move-result v3

    .line 296
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 298
    sget v3, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_ad_marker_color:I

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 300
    sget v4, Lo/OrderDetails$onRelationshipValidationResult;->DefaultTimeBar_played_ad_marker_color:I

    .line 301
    invoke-static {v3}, Lo/Offer;->extraCallback(I)I

    move-result v5

    .line 300
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 302
    iget-object v5, p0, Lo/Offer;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget-object p4, p0, Lo/Offer;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    iget-object p4, p0, Lo/Offer;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 305
    iget-object p4, p0, Lo/Offer;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object p4, p0, Lo/Offer;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget-object p4, p0, Lo/Offer;->onRelationshipValidationResult:Landroid/graphics/Paint;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    throw p2

    .line 312
    :cond_1
    iput v0, p0, Lo/Offer;->warmup:I

    .line 313
    iput v2, p0, Lo/Offer;->newSession:I

    .line 314
    iput v1, p0, Lo/Offer;->ICustomTabsCallback$Stub$Proxy:I

    .line 315
    iput v3, p0, Lo/Offer;->getInterfaceDescriptor:I

    .line 316
    iput v4, p0, Lo/Offer;->postMessage:I

    .line 317
    iput v6, p0, Lo/Offer;->updateVisuals:I

    .line 318
    iget-object p1, p0, Lo/Offer;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    iget-object p1, p0, Lo/Offer;->asBinder:Landroid/graphics/Paint;

    invoke-static {v8}, Lo/Offer;->ICustomTabsCallback(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object p1, p0, Lo/Offer;->asInterface:Landroid/graphics/Paint;

    invoke-static {v8}, Lo/Offer;->onMessageChannelReady(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object p1, p0, Lo/Offer;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-static {v8}, Lo/Offer;->onNavigationEvent(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object p1, p0, Lo/Offer;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 323
    iput-object p1, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    .line 325
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lo/Offer;->mayLaunchUrl:Ljava/lang/StringBuilder;

    .line 326
    new-instance p1, Ljava/util/Formatter;

    iget-object p4, p0, Lo/Offer;->mayLaunchUrl:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p4, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p1, p0, Lo/Offer;->ICustomTabsService$Stub$Proxy:Ljava/util/Formatter;

    .line 327
    new-instance p1, Lo/OfferResponse;

    invoke-direct {p1, p0}, Lo/OfferResponse;-><init>(Lo/Offer;)V

    iput-object p1, p0, Lo/Offer;->IPostMessageService$Stub:Ljava/lang/Runnable;

    .line 328
    iget-object p1, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p1

    add-int/2addr p1, p3

    div-int/2addr p1, p2

    iput p1, p0, Lo/Offer;->requestPostMessageChannel:I

    goto :goto_1

    .line 331
    :cond_2
    iget p1, p0, Lo/Offer;->postMessage:I

    iget p4, p0, Lo/Offer;->getInterfaceDescriptor:I

    iget v0, p0, Lo/Offer;->updateVisuals:I

    .line 332
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p3

    div-int/2addr p1, p2

    iput p1, p0, Lo/Offer;->requestPostMessageChannel:I

    :goto_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 335
    iput-wide p1, p0, Lo/Offer;->INotificationSideChannel$Default:J

    .line 336
    iput-wide p1, p0, Lo/Offer;->cancel:J

    const/16 p1, 0x14

    .line 337
    iput p1, p0, Lo/Offer;->INotificationSideChannel:I

    .line 338
    invoke-virtual {p0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 339
    invoke-virtual {p0}, Lo/Offer;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 340
    invoke-virtual {p0, p3}, Lo/Offer;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method public static ICustomTabsCallback(I)I
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    return p0
.end method

.method private ICustomTabsCallback()V
    .locals 2

    .line 836
    iget-object v0, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    .line 837
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private ICustomTabsCallback(F)V
    .locals 3

    .line 752
    iget-object v0, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    float-to-int p1, p1

    iget-object v1, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v1, v2}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method private ICustomTabsCallback(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 775
    iget-object v1, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 776
    iget-object v2, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 778
    iget-wide v3, v0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 779
    iget-object v3, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    int-to-float v6, v2

    iget-object v2, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    int-to-float v8, v1

    iget-object v9, v0, Lo/Offer;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 782
    :cond_0
    iget-object v3, v0, Lo/Offer;->extraCallback:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 783
    iget-object v4, v0, Lo/Offer;->extraCallback:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 784
    iget-object v5, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 785
    iget-object v6, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_1

    int-to-float v8, v5

    int-to-float v9, v2

    .line 786
    iget-object v5, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v5

    int-to-float v11, v1

    iget-object v12, v0, Lo/Offer;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 788
    :cond_1
    iget-object v5, v0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v4, v3, :cond_2

    int-to-float v6, v3

    int-to-float v7, v2

    int-to-float v8, v4

    int-to-float v9, v1

    .line 790
    iget-object v10, v0, Lo/Offer;->asInterface:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 792
    :cond_2
    iget-object v3, v0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_3

    .line 793
    iget-object v3, v0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v3

    int-to-float v6, v2

    iget-object v3, v0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v3

    int-to-float v8, v1

    iget-object v9, v0, Lo/Offer;->onMessageChannelReady:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 795
    :cond_3
    iget v3, v0, Lo/Offer;->INotificationSideChannel$Stub$Proxy:I

    if-nez v3, :cond_4

    return-void

    .line 798
    :cond_4
    iget-object v3, v0, Lo/Offer;->write:[J

    invoke-static {v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 799
    iget-object v4, v0, Lo/Offer;->RemoteActionCompatParcelizer:[Z

    invoke-static {v4}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 800
    iget v5, v0, Lo/Offer;->ICustomTabsCallback$Stub$Proxy:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 801
    :goto_0
    iget v8, v0, Lo/Offer;->INotificationSideChannel$Stub$Proxy:I

    if-ge v7, v8, :cond_6

    .line 802
    aget-wide v9, v3, v7

    const-wide/16 v11, 0x0

    iget-wide v13, v0, Lo/Offer;->INotificationSideChannel$Default:J

    invoke-static/range {v9 .. v14}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JJJ)J

    move-result-wide v8

    .line 803
    iget-object v10, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    .line 804
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-long v10, v10

    mul-long v10, v10, v8

    iget-wide v8, v0, Lo/Offer;->INotificationSideChannel$Default:J

    div-long/2addr v10, v8

    long-to-int v8, v10

    sub-int/2addr v8, v5

    .line 805
    iget-object v9, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, v0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, v0, Lo/Offer;->ICustomTabsCallback$Stub$Proxy:I

    sub-int/2addr v10, v11

    .line 806
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 805
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v9, v8

    .line 807
    aget-boolean v8, v4, v7

    if-eqz v8, :cond_5

    iget-object v8, v0, Lo/Offer;->onRelationshipValidationResult:Landroid/graphics/Paint;

    goto :goto_1

    :cond_5
    iget-object v8, v0, Lo/Offer;->onTransact:Landroid/graphics/Paint;

    :goto_1
    move-object v15, v8

    int-to-float v11, v9

    int-to-float v12, v2

    .line 808
    iget v8, v0, Lo/Offer;->ICustomTabsCallback$Stub$Proxy:I

    add-int/2addr v9, v8

    int-to-float v13, v9

    int-to-float v14, v1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private ICustomTabsCallback$Stub()J
    .locals 5

    .line 847
    iget-wide v0, p0, Lo/Offer;->cancel:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v0, p0, Lo/Offer;->INotificationSideChannel$Default:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v2, p0, Lo/Offer;->INotificationSideChannel:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public static extraCallback(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    or-int/2addr p0, v0

    return p0
.end method

.method private extraCallback()V
    .locals 7

    .line 736
    iget-object v0, p0, Lo/Offer;->extraCallback:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 737
    iget-object v0, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 738
    iget-boolean v0, p0, Lo/Offer;->cancelAll:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lo/Offer;->getDefaultImpl:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/Offer;->setDefaultImpl:J

    .line 739
    :goto_0
    iget-wide v2, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 740
    iget-object v2, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p0, Lo/Offer;->INotificationSideChannel$Stub:J

    mul-long v2, v2, v4

    iget-wide v4, p0, Lo/Offer;->INotificationSideChannel$Default:J

    div-long/2addr v2, v4

    long-to-int v3, v2

    .line 741
    iget-object v2, p0, Lo/Offer;->extraCallback:Landroid/graphics/Rect;

    iget-object v4, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget-object v3, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 742
    iget-object v2, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    mul-long v2, v2, v0

    iget-wide v0, p0, Lo/Offer;->INotificationSideChannel$Default:J

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 743
    iget-object v1, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget-object v2, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 745
    :cond_1
    iget-object v0, p0, Lo/Offer;->extraCallback:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 746
    iget-object v0, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 748
    :goto_1
    iget-object v0, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private extraCallback(J)V
    .locals 2

    .line 675
    iput-wide p1, p0, Lo/Offer;->getDefaultImpl:J

    const/4 v0, 0x1

    .line 676
    iput-boolean v0, p0, Lo/Offer;->cancelAll:Z

    .line 677
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 678
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 680
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 682
    :cond_0
    iget-object v0, p0, Lo/Offer;->IPostMessageService:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/OrderStatusData$ICustomTabsCallback;

    .line 683
    invoke-interface {v1, p0, p1, p2}, Lo/OrderStatusData$ICustomTabsCallback;->extraCallback(Lo/OrderStatusData;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extraCallback(FF)Z
    .locals 1

    .line 771
    iget-object v0, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private static onMessageChannelReady(FI)I
    .locals 0

    int-to-float p1, p1

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static onMessageChannelReady(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, -0x34000000    # -3.3554432E7f

    or-int/2addr p0, v0

    return p0
.end method

.method private onMessageChannelReady()J
    .locals 5

    .line 764
    iget-object v0, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v0, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    iget-object v0, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lo/Offer;->INotificationSideChannel$Default:J

    mul-long v0, v0, v2

    iget-object v2, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private onMessageChannelReady(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 4

    .line 756
    iget-object v0, p0, Lo/Offer;->validateRelationship:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 757
    iget-object v0, p0, Lo/Offer;->ICustomTabsService$Stub:Landroid/graphics/Point;

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lo/Offer;->validateRelationship:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lo/Offer;->validateRelationship:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr p1, v2

    .line 757
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 760
    iget-object p1, p0, Lo/Offer;->ICustomTabsService$Stub:Landroid/graphics/Point;

    return-object p1
.end method

.method private onMessageChannelReady(J)Z
    .locals 9

    .line 718
    iget-wide v0, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return v2

    .line 721
    :cond_0
    iget-boolean v0, p0, Lo/Offer;->cancelAll:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lo/Offer;->getDefaultImpl:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lo/Offer;->setDefaultImpl:J

    :goto_0
    add-long v3, v0, p1

    const-wide/16 v5, 0x0

    .line 722
    iget-wide v7, p0, Lo/Offer;->INotificationSideChannel$Default:J

    invoke-static/range {v3 .. v8}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(JJJ)J

    move-result-wide p1

    cmp-long v3, p1, v0

    if-nez v3, :cond_2

    return v2

    .line 726
    :cond_2
    iget-boolean v0, p0, Lo/Offer;->cancelAll:Z

    if-nez v0, :cond_3

    .line 727
    invoke-direct {p0, p1, p2}, Lo/Offer;->extraCallback(J)V

    goto :goto_1

    .line 729
    :cond_3
    invoke-direct {p0, p1, p2}, Lo/Offer;->onPostMessage(J)V

    .line 731
    :goto_1
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    const/4 p1, 0x1

    return p1
.end method

.method private static onMessageChannelReady(Landroid/graphics/drawable/Drawable;I)Z
    .locals 2

    .line 856
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    const/high16 v0, 0x33000000

    or-int/2addr p0, v0

    return p0
.end method

.method private onNavigationEvent(Z)V
    .locals 4

    .line 698
    iget-object v0, p0, Lo/Offer;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 699
    iput-boolean v0, p0, Lo/Offer;->cancelAll:Z

    .line 700
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 701
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 705
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 706
    iget-object v0, p0, Lo/Offer;->IPostMessageService:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/OrderStatusData$ICustomTabsCallback;

    .line 707
    iget-wide v2, p0, Lo/Offer;->getDefaultImpl:J

    invoke-interface {v1, p0, v2, v3, p1}, Lo/OrderStatusData$ICustomTabsCallback;->ICustomTabsCallback(Lo/OrderStatusData;JZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onNavigationEvent(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .line 852
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lo/Offer;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lo/Offer;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static onPostMessage(FI)I
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private onPostMessage(J)V
    .locals 3

    .line 688
    iget-wide v0, p0, Lo/Offer;->getDefaultImpl:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 691
    :cond_0
    iput-wide p1, p0, Lo/Offer;->getDefaultImpl:J

    .line 692
    iget-object v0, p0, Lo/Offer;->IPostMessageService:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/OrderStatusData$ICustomTabsCallback;

    .line 693
    invoke-interface {v1, p0, p1, p2}, Lo/OrderStatusData$ICustomTabsCallback;->onNavigationEvent(Lo/OrderStatusData;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onPostMessage(Landroid/graphics/Canvas;)V
    .locals 7

    .line 813
    iget-wide v0, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(III)I

    move-result v0

    .line 817
    iget-object v1, p0, Lo/Offer;->onNavigationEvent:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 818
    iget-object v2, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 819
    iget-boolean v2, p0, Lo/Offer;->cancelAll:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lo/Offer;->getInterfaceDescriptor:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lo/Offer;->postMessage:I

    goto :goto_1

    .line 819
    :cond_3
    :goto_0
    iget v2, p0, Lo/Offer;->updateVisuals:I

    .line 821
    :goto_1
    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    .line 822
    iget-object v3, p0, Lo/Offer;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 824
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 825
    iget-object v3, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 826
    iget-object v4, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v0, v2

    div-int/lit8 v3, v3, 0x2

    sub-int v6, v1, v3

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 831
    iget-object v0, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private onTransact()Ljava/lang/String;
    .locals 4

    .line 843
    iget-object v0, p0, Lo/Offer;->mayLaunchUrl:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Offer;->ICustomTabsService$Stub$Proxy:Ljava/util/Formatter;

    iget-wide v2, p0, Lo/Offer;->setDefaultImpl:J

    invoke-static {v0, v1, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 579
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 580
    invoke-direct {p0}, Lo/Offer;->ICustomTabsCallback()V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 585
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 586
    iget-object v0, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 488
    invoke-direct {p0, p1}, Lo/Offer;->ICustomTabsCallback(Landroid/graphics/Canvas;)V

    .line 489
    invoke-direct {p0, p1}, Lo/Offer;->onPostMessage(Landroid/graphics/Canvas;)V

    .line 490
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 571
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 572
    iget-boolean p2, p0, Lo/Offer;->cancelAll:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 573
    invoke-direct {p0, p1}, Lo/Offer;->onNavigationEvent(Z)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 624
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 625
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 626
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lo/Offer;->onTransact()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "android.widget.SeekBar"

    .line 628
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 634
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.SeekBar"

    .line 635
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 636
    invoke-direct {p0}, Lo/Offer;->onTransact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 637
    iget-wide v0, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 640
    :cond_0
    sget v0, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 641
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 642
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void

    :cond_1
    const/16 v0, 0x1000

    .line 644
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v0, 0x2000

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-direct {p0}, Lo/Offer;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    neg-long v0, v0

    .line 548
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lo/Offer;->onMessageChannelReady(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object p1, p0, Lo/Offer;->IPostMessageService$Stub:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 550
    iget-object p1, p0, Lo/Offer;->IPostMessageService$Stub:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 556
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lo/Offer;->cancelAll:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 557
    invoke-direct {p0, p1}, Lo/Offer;->onNavigationEvent(Z)V

    return v3

    .line 565
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 605
    iget p1, p0, Lo/Offer;->newSession:I

    sub-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    .line 606
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 607
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 608
    iget p2, p0, Lo/Offer;->newSession:I

    iget p3, p0, Lo/Offer;->warmup:I

    sub-int p3, p2, p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p5

    .line 609
    iget-object v0, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    add-int/2addr p2, p5

    invoke-virtual {v0, p1, p5, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 610
    iget-object p1, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    iget-object p2, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget p4, p0, Lo/Offer;->requestPostMessageChannel:I

    add-int/2addr p2, p4

    iget-object p4, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget p5, p0, Lo/Offer;->requestPostMessageChannel:I

    sub-int/2addr p4, p5

    iget p5, p0, Lo/Offer;->warmup:I

    add-int/2addr p5, p3

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 612
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 593
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 594
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_0

    .line 595
    iget p2, p0, Lo/Offer;->newSession:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lo/Offer;->newSession:I

    .line 596
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 597
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lo/Offer;->setMeasuredDimension(II)V

    .line 598
    invoke-direct {p0}, Lo/Offer;->ICustomTabsCallback()V

    return-void
.end method

.method synthetic onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, v0}, Lo/Offer;->onNavigationEvent(Z)V

    return-void
.end method

.method public onNavigationEvent(Lo/OrderStatusData$ICustomTabsCallback;)V
    .locals 1

    .line 412
    iget-object v0, p0, Lo/Offer;->IPostMessageService:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPostMessage()J
    .locals 6

    .line 458
    iget v0, p0, Lo/Offer;->notify:F

    iget-object v1, p0, Lo/Offer;->ICustomTabsCallback:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lo/Offer;->onMessageChannelReady(FI)I

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-wide v1, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 617
    iget-object v0, p0, Lo/Offer;->ICustomTabsService:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lo/Offer;->onMessageChannelReady(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 495
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-wide v2, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_1

    .line 498
    :cond_0
    invoke-direct {p0, p1}, Lo/Offer;->onMessageChannelReady(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    .line 499
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 500
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/4 v5, 0x3

    if-eq v3, v4, :cond_3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_3

    goto :goto_1

    .line 512
    :cond_1
    iget-boolean p1, p0, Lo/Offer;->cancelAll:Z

    if-eqz p1, :cond_6

    .line 513
    iget p1, p0, Lo/Offer;->extraCommand:I

    if-ge v0, p1, :cond_2

    .line 514
    iget p1, p0, Lo/Offer;->IPostMessageService$Stub$Proxy:I

    sub-int/2addr v2, p1

    .line 515
    div-int/2addr v2, v5

    add-int/2addr p1, v2

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lo/Offer;->ICustomTabsCallback(F)V

    goto :goto_0

    .line 517
    :cond_2
    iput v2, p0, Lo/Offer;->IPostMessageService$Stub$Proxy:I

    int-to-float p1, v2

    .line 518
    invoke-direct {p0, p1}, Lo/Offer;->ICustomTabsCallback(F)V

    .line 520
    :goto_0
    invoke-direct {p0}, Lo/Offer;->onMessageChannelReady()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/Offer;->onPostMessage(J)V

    .line 521
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    .line 528
    :cond_3
    iget-boolean v0, p0, Lo/Offer;->cancelAll:Z

    if-eqz v0, :cond_6

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-direct {p0, v1}, Lo/Offer;->onNavigationEvent(Z)V

    return v4

    :cond_5
    int-to-float p1, v2

    int-to-float v0, v0

    .line 503
    invoke-direct {p0, p1, v0}, Lo/Offer;->extraCallback(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 504
    invoke-direct {p0, p1}, Lo/Offer;->ICustomTabsCallback(F)V

    .line 505
    invoke-direct {p0}, Lo/Offer;->onMessageChannelReady()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/Offer;->extraCallback(J)V

    .line 506
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    :cond_6
    :goto_1
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    .line 651
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 654
    :cond_0
    iget-wide v1, p0, Lo/Offer;->INotificationSideChannel$Default:J

    const-wide/16 v3, 0x0

    const/4 p2, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    return p2

    :cond_1
    const/16 v1, 0x2000

    if-ne p1, v1, :cond_2

    .line 658
    invoke-direct {p0}, Lo/Offer;->ICustomTabsCallback$Stub()J

    move-result-wide v1

    neg-long v1, v1

    invoke-direct {p0, v1, v2}, Lo/Offer;->onMessageChannelReady(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 659
    invoke-direct {p0, p2}, Lo/Offer;->onNavigationEvent(Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1000

    if-ne p1, v1, :cond_4

    .line 662
    invoke-direct {p0}, Lo/Offer;->ICustomTabsCallback$Stub()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lo/Offer;->onMessageChannelReady(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 663
    invoke-direct {p0, p2}, Lo/Offer;->onNavigationEvent(Z)V

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 668
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return v0

    :cond_4
    return p2
.end method

.method public setAdGroupTimesMs([J[ZI)V
    .locals 1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 467
    :goto_1
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 469
    iput p3, p0, Lo/Offer;->INotificationSideChannel$Stub$Proxy:I

    .line 470
    iput-object p1, p0, Lo/Offer;->write:[J

    .line 471
    iput-object p2, p0, Lo/Offer;->RemoteActionCompatParcelizer:[Z

    .line 472
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    return-void
.end method

.method public setAdMarkerColor(I)V
    .locals 1

    .line 394
    iget-object v0, p0, Lo/Offer;->onTransact:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    iget-object p1, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedColor(I)V
    .locals 1

    .line 373
    iget-object v0, p0, Lo/Offer;->asInterface:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    iget-object p1, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBufferedPosition(J)V
    .locals 0

    .line 443
    iput-wide p1, p0, Lo/Offer;->INotificationSideChannel$Stub:J

    .line 444
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    return-void
.end method

.method public setDuration(J)V
    .locals 3

    .line 449
    iput-wide p1, p0, Lo/Offer;->INotificationSideChannel$Default:J

    .line 450
    iget-boolean v0, p0, Lo/Offer;->cancelAll:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 451
    invoke-direct {p0, p1}, Lo/Offer;->onNavigationEvent(Z)V

    .line 453
    :cond_0
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 479
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 480
    iget-boolean v0, p0, Lo/Offer;->cancelAll:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 481
    invoke-direct {p0, p1}, Lo/Offer;->onNavigationEvent(Z)V

    :cond_0
    return-void
.end method

.method public setKeyCountIncrement(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 429
    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 430
    iput p1, p0, Lo/Offer;->INotificationSideChannel:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 431
    iput-wide v0, p0, Lo/Offer;->cancel:J

    return-void
.end method

.method public setKeyTimeIncrement(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    const/4 v0, -0x1

    .line 423
    iput v0, p0, Lo/Offer;->INotificationSideChannel:I

    .line 424
    iput-wide p1, p0, Lo/Offer;->cancel:J

    return-void
.end method

.method public setPlayedAdMarkerColor(I)V
    .locals 1

    .line 404
    iget-object v0, p0, Lo/Offer;->onRelationshipValidationResult:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    iget-object p1, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPlayedColor(I)V
    .locals 1

    .line 351
    iget-object v0, p0, Lo/Offer;->onMessageChannelReady:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object p1, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPosition(J)V
    .locals 0

    .line 436
    iput-wide p1, p0, Lo/Offer;->setDefaultImpl:J

    .line 437
    invoke-direct {p0}, Lo/Offer;->onTransact()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    invoke-direct {p0}, Lo/Offer;->extraCallback()V

    return-void
.end method

.method public setScrubberColor(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lo/Offer;->asBinder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget-object p1, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setUnplayedColor(I)V
    .locals 1

    .line 384
    iget-object v0, p0, Lo/Offer;->ICustomTabsCallback$Stub:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    iget-object p1, p0, Lo/Offer;->onPostMessage:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
