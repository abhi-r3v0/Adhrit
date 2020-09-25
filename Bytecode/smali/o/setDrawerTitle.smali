.class public Lo/setDrawerTitle;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDrawerTitle$onNavigationEvent;,
        Lo/setDrawerTitle$asBinder;,
        Lo/setDrawerTitle$asInterface;,
        Lo/setDrawerTitle$ICustomTabsCallback;,
        Lo/setDrawerTitle$onPostMessage;,
        Lo/setDrawerTitle$onTransact;,
        Lo/setDrawerTitle$extraCallback;,
        Lo/setDrawerTitle$onRelationshipValidationResult;,
        Lo/setDrawerTitle$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setDrawerLockMode;

.field private ICustomTabsCallback$Stub:Lo/setDrawerShadow;

.field private ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

.field private ICustomTabsService:Z

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:Lo/setDrawerTitle$onPostMessage;

.field private INotificationSideChannel:I

.field private INotificationSideChannel$Stub:Landroid/net/Uri;

.field private INotificationSideChannel$Stub$Proxy:Landroid/graphics/RectF;

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:Lo/setDrawerTitle$ICustomTabsCallback;

.field private IPostMessageService$Stub$Proxy:F

.field private final asBinder:[F

.field private final asInterface:Landroid/widget/ProgressBar;

.field private cancel:F

.field private cancelAll:F

.field extraCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/getSuperState;",
            ">;"
        }
    .end annotation
.end field

.field private extraCommand:Z

.field private getDefaultImpl:Z

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:I

.field private newSession:I

.field private notify:Landroid/net/Uri;

.field private final onMessageChannelReady:Landroid/graphics/Matrix;

.field onNavigationEvent:I

.field private final onPostMessage:Landroid/widget/ImageView;

.field private final onRelationshipValidationResult:Landroid/graphics/Matrix;

.field private final onTransact:[F

.field private postMessage:Z

.field private requestPostMessageChannel:I

.field private setDefaultImpl:I

.field private updateVisuals:Lo/setDrawerTitle$onRelationshipValidationResult;

.field private validateRelationship:I

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p1, v0}, Lo/setDrawerTitle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 229
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 64
    iput-object v1, p0, Lo/setDrawerTitle;->onTransact:[F

    new-array v0, v0, [F

    .line 69
    iput-object v0, p0, Lo/setDrawerTitle;->asBinder:[F

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lo/setDrawerTitle;->postMessage:Z

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, p0, Lo/setDrawerTitle;->extraCommand:Z

    .line 128
    iput-boolean v1, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub:Z

    .line 134
    iput-boolean v1, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    .line 174
    iput v1, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 179
    iput v2, p0, Lo/setDrawerTitle;->cancel:F

    .line 232
    instance-of v2, p1, Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const-string v4, "CROP_IMAGE_EXTRA_BUNDLE"

    .line 234
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    .line 236
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/setDrawerElevation;

    :cond_1
    if-nez v3, :cond_3

    .line 242
    new-instance v3, Lo/setDrawerElevation;

    invoke-direct {v3}, Lo/setDrawerElevation;-><init>()V

    if-eqz p2, :cond_3

    .line 245
    sget-object v2, Lo/setDrawerListener$onNavigationEvent;->CropImageView:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 247
    :try_start_0
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropFixAspectRatio:I

    iget-boolean v2, v3, Lo/setDrawerElevation;->newSession:Z

    .line 248
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lo/setDrawerElevation;->newSession:Z

    .line 249
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropAspectRatioX:I

    iget v2, v3, Lo/setDrawerElevation;->getInterfaceDescriptor:I

    .line 250
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->getInterfaceDescriptor:I

    .line 251
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropAspectRatioY:I

    iget v2, v3, Lo/setDrawerElevation;->ICustomTabsService:I

    .line 252
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->ICustomTabsService:I

    .line 254
    invoke-static {}, Lo/setDrawerTitle$onRelationshipValidationResult;->values()[Lo/setDrawerTitle$onRelationshipValidationResult;

    move-result-object v0

    sget v2, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropScaleType:I

    iget-object v4, v3, Lo/setDrawerElevation;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 255
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lo/setDrawerElevation;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 256
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropAutoZoomEnabled:I

    iget-boolean v2, v3, Lo/setDrawerElevation;->onTransact:Z

    .line 257
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lo/setDrawerElevation;->onTransact:Z

    .line 258
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMultiTouchEnabled:I

    iget-boolean v2, v3, Lo/setDrawerElevation;->onRelationshipValidationResult:Z

    .line 259
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lo/setDrawerElevation;->onRelationshipValidationResult:Z

    .line 261
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMaxZoom:I

    iget v2, v3, Lo/setDrawerElevation;->ICustomTabsCallback$Stub:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->ICustomTabsCallback$Stub:I

    .line 263
    invoke-static {}, Lo/setDrawerTitle$onMessageChannelReady;->values()[Lo/setDrawerTitle$onMessageChannelReady;

    move-result-object v0

    sget v2, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropShape:I

    iget-object v4, v3, Lo/setDrawerElevation;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    .line 264
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lo/setDrawerElevation;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    .line 266
    invoke-static {}, Lo/setDrawerTitle$extraCallback;->values()[Lo/setDrawerTitle$extraCallback;

    move-result-object v0

    sget v2, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropGuidelines:I

    iget-object v4, v3, Lo/setDrawerElevation;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    .line 268
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 267
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, v3, Lo/setDrawerElevation;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    .line 269
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropSnapRadius:I

    iget v2, v3, Lo/setDrawerElevation;->onPostMessage:F

    .line 270
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->onPostMessage:F

    .line 271
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropTouchRadius:I

    iget v2, v3, Lo/setDrawerElevation;->onMessageChannelReady:F

    .line 272
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->onMessageChannelReady:F

    .line 273
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropInitialCropWindowPaddingRatio:I

    iget v2, v3, Lo/setDrawerElevation;->warmup:F

    .line 274
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->warmup:F

    .line 277
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBorderLineThickness:I

    iget v2, v3, Lo/setDrawerElevation;->ICustomTabsCallback$Stub$Proxy:F

    .line 278
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->ICustomTabsCallback$Stub$Proxy:F

    .line 280
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBorderLineColor:I

    iget v2, v3, Lo/setDrawerElevation;->postMessage:I

    .line 281
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->postMessage:I

    .line 282
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lo/setDrawerElevation;->requestPostMessageChannel:F

    .line 283
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->requestPostMessageChannel:F

    .line 286
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBorderCornerOffset:I

    iget v2, v3, Lo/setDrawerElevation;->extraCommand:F

    .line 287
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->extraCommand:F

    .line 289
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBorderCornerLength:I

    iget v2, v3, Lo/setDrawerElevation;->updateVisuals:F

    .line 290
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->updateVisuals:F

    .line 292
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBorderCornerColor:I

    iget v2, v3, Lo/setDrawerElevation;->mayLaunchUrl:I

    .line 293
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->mayLaunchUrl:I

    .line 295
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropGuidelinesThickness:I

    iget v2, v3, Lo/setDrawerElevation;->IPostMessageService$Stub:F

    .line 296
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->IPostMessageService$Stub:F

    .line 298
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropGuidelinesColor:I

    iget v2, v3, Lo/setDrawerElevation;->ICustomTabsService$Stub:I

    .line 299
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->ICustomTabsService$Stub:I

    .line 300
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBackgroundColor:I

    iget v2, v3, Lo/setDrawerElevation;->IPostMessageService:I

    .line 301
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->IPostMessageService:I

    .line 302
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropShowCropOverlay:I

    iget-boolean v2, p0, Lo/setDrawerTitle;->extraCommand:Z

    .line 303
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lo/setDrawerElevation;->asBinder:Z

    .line 304
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropShowProgressBar:I

    iget-boolean v2, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub:Z

    .line 305
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lo/setDrawerElevation;->asInterface:Z

    .line 306
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropBorderCornerThickness:I

    iget v2, v3, Lo/setDrawerElevation;->requestPostMessageChannel:F

    .line 307
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v3, Lo/setDrawerElevation;->requestPostMessageChannel:F

    .line 310
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMinCropWindowWidth:I

    iget v2, v3, Lo/setDrawerElevation;->validateRelationship:I

    int-to-float v2, v2

    .line 312
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lo/setDrawerElevation;->validateRelationship:I

    .line 314
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMinCropWindowHeight:I

    iget v2, v3, Lo/setDrawerElevation;->ICustomTabsService$Stub$Proxy:I

    int-to-float v2, v2

    .line 316
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lo/setDrawerElevation;->ICustomTabsService$Stub$Proxy:I

    .line 319
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMinCropResultWidthPX:I

    iget v2, v3, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    int-to-float v2, v2

    .line 321
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    .line 324
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMinCropResultHeightPX:I

    iget v2, v3, Lo/setDrawerElevation;->INotificationSideChannel:I

    int-to-float v2, v2

    .line 326
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lo/setDrawerElevation;->INotificationSideChannel:I

    .line 329
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMaxCropResultWidthPX:I

    iget v2, v3, Lo/setDrawerElevation;->cancelAll:I

    int-to-float v2, v2

    .line 331
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lo/setDrawerElevation;->cancelAll:I

    .line 334
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropMaxCropResultHeightPX:I

    iget v2, v3, Lo/setDrawerElevation;->notify:I

    int-to-float v2, v2

    .line 336
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Lo/setDrawerElevation;->notify:I

    .line 339
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lo/setDrawerElevation;->INotificationSideChannel$Stub$Proxy:Z

    .line 340
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lo/setDrawerElevation;->INotificationSideChannel$Stub$Proxy:Z

    .line 342
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropFlipHorizontally:I

    iget-boolean v2, v3, Lo/setDrawerElevation;->getDefaultImpl:Z

    .line 343
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v3, Lo/setDrawerElevation;->getDefaultImpl:Z

    .line 345
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropSaveBitmapToInstanceState:I

    iget-boolean v2, p0, Lo/setDrawerTitle;->postMessage:Z

    .line 346
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDrawerTitle;->postMessage:Z

    .line 351
    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropAspectRatioX:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropAspectRatioX:I

    .line 352
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lo/setDrawerListener$onNavigationEvent;->CropImageView_cropFixAspectRatio:I

    .line 353
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    iput-boolean v1, v3, Lo/setDrawerElevation;->newSession:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 358
    throw p1

    .line 2466
    :cond_3
    :goto_1
    iget p2, v3, Lo/setDrawerElevation;->ICustomTabsCallback$Stub:I

    if-ltz p2, :cond_13

    .line 2469
    iget p2, v3, Lo/setDrawerElevation;->onMessageChannelReady:F

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_12

    .line 2472
    iget p2, v3, Lo/setDrawerElevation;->warmup:F

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_11

    iget p2, v3, Lo/setDrawerElevation;->warmup:F

    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double p2, v4, v6

    if-gez p2, :cond_11

    .line 2476
    iget p2, v3, Lo/setDrawerElevation;->getInterfaceDescriptor:I

    const-string v2, "Cannot set aspect ratio value to a number less than or equal to 0."

    if-lez p2, :cond_10

    .line 2480
    iget p2, v3, Lo/setDrawerElevation;->ICustomTabsService:I

    if-lez p2, :cond_f

    .line 2484
    iget p2, v3, Lo/setDrawerElevation;->ICustomTabsCallback$Stub$Proxy:F

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_e

    .line 2488
    iget p2, v3, Lo/setDrawerElevation;->requestPostMessageChannel:F

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_d

    .line 2492
    iget p2, v3, Lo/setDrawerElevation;->IPostMessageService$Stub:F

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_c

    .line 2496
    iget p2, v3, Lo/setDrawerElevation;->ICustomTabsService$Stub$Proxy:I

    if-ltz p2, :cond_b

    .line 2500
    iget p2, v3, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    if-ltz p2, :cond_a

    .line 2503
    iget p2, v3, Lo/setDrawerElevation;->INotificationSideChannel:I

    if-ltz p2, :cond_9

    .line 2507
    iget p2, v3, Lo/setDrawerElevation;->cancelAll:I

    iget v0, v3, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    if-lt p2, v0, :cond_8

    .line 2511
    iget p2, v3, Lo/setDrawerElevation;->notify:I

    iget v0, v3, Lo/setDrawerElevation;->INotificationSideChannel:I

    if-lt p2, v0, :cond_7

    .line 2515
    iget p2, v3, Lo/setDrawerElevation;->cancel:I

    if-ltz p2, :cond_6

    .line 2518
    iget p2, v3, Lo/setDrawerElevation;->INotificationSideChannel$Stub:I

    if-ltz p2, :cond_5

    .line 2521
    iget p2, v3, Lo/setDrawerElevation;->INotificationSideChannel$Default:I

    if-ltz p2, :cond_4

    iget p2, v3, Lo/setDrawerElevation;->INotificationSideChannel$Default:I

    const/16 v0, 0x168

    if-gt p2, v0, :cond_4

    .line 364
    iget-object p2, v3, Lo/setDrawerElevation;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    iput-object p2, p0, Lo/setDrawerTitle;->updateVisuals:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 365
    iget-boolean p2, v3, Lo/setDrawerElevation;->onTransact:Z

    iput-boolean p2, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    .line 366
    iget p2, v3, Lo/setDrawerElevation;->ICustomTabsCallback$Stub:I

    iput p2, p0, Lo/setDrawerTitle;->validateRelationship:I

    .line 367
    iget-boolean p2, v3, Lo/setDrawerElevation;->asBinder:Z

    iput-boolean p2, p0, Lo/setDrawerTitle;->extraCommand:Z

    .line 368
    iget-boolean p2, v3, Lo/setDrawerElevation;->asInterface:Z

    iput-boolean p2, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub:Z

    .line 369
    iget-boolean p2, v3, Lo/setDrawerElevation;->INotificationSideChannel$Stub$Proxy:Z

    iput-boolean p2, p0, Lo/setDrawerTitle;->ICustomTabsService:Z

    .line 370
    iget-boolean p2, v3, Lo/setDrawerElevation;->getDefaultImpl:Z

    iput-boolean p2, p0, Lo/setDrawerTitle;->warmup:Z

    .line 372
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 373
    sget p2, Lo/setDrawerListener$onMessageChannelReady;->crop_image_view:I

    invoke-virtual {p1, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 375
    sget p2, Lo/setDrawerListener$onPostMessage;->ImageView_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    .line 376
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 378
    sget p2, Lo/setDrawerListener$onPostMessage;->CropOverlayView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/setDrawerLockMode;

    iput-object p2, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 379
    new-instance v0, Lo/setDrawerTitle$5;

    invoke-direct {v0, p0}, Lo/setDrawerTitle$5;-><init>(Lo/setDrawerTitle;)V

    invoke-virtual {p2, v0}, Lo/setDrawerLockMode;->setCropWindowChangeListener(Lo/setDrawerLockMode$onPostMessage;)V

    .line 394
    iget-object p2, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p2, v3}, Lo/setDrawerLockMode;->setInitialAttributeValues(Lo/setDrawerElevation;)V

    .line 396
    sget p2, Lo/setDrawerListener$onPostMessage;->CropProgressBar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lo/setDrawerTitle;->asInterface:Landroid/widget/ProgressBar;

    .line 397
    invoke-virtual {p0}, Lo/setDrawerTitle;->extraCallback()V

    return-void

    .line 2522
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set rotation degrees value to a number < 0 or > 360"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2519
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set request height value to a number < 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2516
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set request width value to a number < 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2512
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set max crop result height to smaller value than min crop result height"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2508
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set max crop result width to smaller value than min crop result width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2504
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set min crop result height value to a number < 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2501
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set min crop result width value to a number < 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2497
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set min crop window height value to a number < 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2493
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set guidelines thickness value to a number less than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2489
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set corner thickness value to a number less than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2485
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set line thickness value to a number less than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2481
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2477
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2473
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set initial crop window padding value to a number < 0 or >= 0.5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2470
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set touch radius value to a number <= 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2467
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot set max zoom to a number < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 2

    .line 1881
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    if-eqz v0, :cond_1

    .line 1882
    iget-boolean v1, p0, Lo/setDrawerTitle;->extraCommand:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private extraCallback(Z)V
    .locals 5

    .line 1901
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1905
    iget v0, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lo/setDrawerTitle;->asBinder:[F

    .line 1906
    invoke-static {v2}, Lo/ViewDataBinding$OnStartListener;->extraCallback([F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1907
    iget v2, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lo/setDrawerTitle;->asBinder:[F

    .line 1908
    invoke-static {v1}, Lo/ViewDataBinding$OnStartListener;->onTransact([F)F

    move-result v1

    div-float/2addr v2, v1

    .line 1909
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 1910
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 1909
    invoke-virtual {v1, v3, v4, v0, v2}, Lo/setDrawerLockMode;->setCropWindowLimits(FFFF)V

    .line 1914
    :cond_0
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo/setDrawerTitle;->onTransact:[F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lo/setDrawerLockMode;->setBounds([FII)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setDrawerTitle;)Lo/setDrawerTitle$onPostMessage;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub$Proxy:Lo/setDrawerTitle$onPostMessage;

    return-object p0
.end method

.method private onMessageChannelReady()[F
    .locals 6

    .line 815
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 10195
    iget-object v0, v0, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 11146
    iget-object v1, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v2, v0, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 11147
    iget-object v0, v0, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 817
    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x1

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x2

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/4 v5, 0x3

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x4

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x5

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x6

    aput v3, v2, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x7

    aput v0, v2, v3

    .line 829
    iget-object v0, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v3, p0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 830
    iget-object v0, p0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 833
    aget v0, v2, v4

    iget v3, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    aput v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static synthetic onNavigationEvent(Lo/setDrawerTitle;)Lo/setDrawerTitle$ICustomTabsCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/setDrawerTitle;->IPostMessageService$Stub:Lo/setDrawerTitle$ICustomTabsCallback;

    return-object p0
.end method

.method private onNavigationEvent()V
    .locals 3

    .line 1343
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lo/setDrawerTitle;->mayLaunchUrl:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1344
    :cond_0
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    .line 1346
    iput-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 1349
    iput v1, p0, Lo/setDrawerTitle;->mayLaunchUrl:I

    .line 1350
    iput-object v0, p0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 1351
    iput v2, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    .line 1352
    iput v1, p0, Lo/setDrawerTitle;->newSession:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1353
    iput v1, p0, Lo/setDrawerTitle;->cancel:F

    const/4 v1, 0x0

    .line 1354
    iput v1, p0, Lo/setDrawerTitle;->IPostMessageService$Stub$Proxy:F

    .line 1355
    iput v1, p0, Lo/setDrawerTitle;->cancelAll:F

    .line 1356
    iget-object v1, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1357
    iput-object v0, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub:Landroid/net/Uri;

    .line 1359
    iget-object v1, p0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1361
    invoke-direct {p0}, Lo/setDrawerTitle;->ICustomTabsCallback$Stub()V

    return-void
.end method

.method private onNavigationEvent(FFZZ)V
    .locals 8

    .line 1751
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_a

    cmpl-float v1, p2, v0

    if-lez v1, :cond_a

    .line 1753
    iget-object v1, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1754
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 22195
    iget-object v1, v1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 23146
    iget-object v2, v1, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v3, v1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 23147
    iget-object v1, v1, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 1755
    iget-object v2, p0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1757
    iget-object v2, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1760
    iget-object v2, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v3, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    .line 1761
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v4

    .line 1760
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1762
    invoke-direct {p0}, Lo/setDrawerTitle;->onTransact()V

    .line 1765
    iget v2, p0, Lo/setDrawerTitle;->newSession:I

    if-lez v2, :cond_0

    .line 1766
    iget-object v3, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    int-to-float v2, v2

    iget-object v5, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1768
    invoke-static {v5}, Lo/ViewDataBinding$OnStartListener;->asInterface([F)F

    move-result v5

    iget-object v6, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1769
    invoke-static {v6}, Lo/ViewDataBinding$OnStartListener;->asBinder([F)F

    move-result v6

    .line 1766
    invoke-virtual {v3, v2, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1770
    invoke-direct {p0}, Lo/setDrawerTitle;->onTransact()V

    .line 1774
    :cond_0
    iget-object v2, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1776
    invoke-static {v2}, Lo/ViewDataBinding$OnStartListener;->extraCallback([F)F

    move-result v2

    div-float v2, p1, v2

    iget-object v3, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1777
    invoke-static {v3}, Lo/ViewDataBinding$OnStartListener;->onTransact([F)F

    move-result v3

    div-float v3, p2, v3

    .line 1775
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1778
    iget-object v3, p0, Lo/setDrawerTitle;->updateVisuals:Lo/setDrawerTitle$onRelationshipValidationResult;

    sget-object v5, Lo/setDrawerTitle$onRelationshipValidationResult;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lo/setDrawerTitle;->updateVisuals:Lo/setDrawerTitle$onRelationshipValidationResult;

    sget-object v5, Lo/setDrawerTitle$onRelationshipValidationResult;->onMessageChannelReady:Lo/setDrawerTitle$onRelationshipValidationResult;

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v3, v5, :cond_1

    cmpg-float v3, v2, v6

    if-ltz v3, :cond_2

    :cond_1
    cmpl-float v3, v2, v6

    if-lez v3, :cond_3

    iget-boolean v3, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    if-eqz v3, :cond_3

    .line 1781
    :cond_2
    iget-object v3, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v5, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1784
    invoke-static {v5}, Lo/ViewDataBinding$OnStartListener;->asInterface([F)F

    move-result v5

    iget-object v6, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1785
    invoke-static {v6}, Lo/ViewDataBinding$OnStartListener;->asBinder([F)F

    move-result v6

    .line 1781
    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1786
    invoke-direct {p0}, Lo/setDrawerTitle;->onTransact()V

    .line 1790
    :cond_3
    iget-boolean v2, p0, Lo/setDrawerTitle;->ICustomTabsService:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lo/setDrawerTitle;->cancel:F

    neg-float v2, v2

    goto :goto_0

    :cond_4
    iget v2, p0, Lo/setDrawerTitle;->cancel:F

    .line 1791
    :goto_0
    iget-boolean v3, p0, Lo/setDrawerTitle;->warmup:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lo/setDrawerTitle;->cancel:F

    neg-float v3, v3

    goto :goto_1

    :cond_5
    iget v3, p0, Lo/setDrawerTitle;->cancel:F

    .line 1792
    :goto_1
    iget-object v5, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v6, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1795
    invoke-static {v6}, Lo/ViewDataBinding$OnStartListener;->asInterface([F)F

    move-result v6

    iget-object v7, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1796
    invoke-static {v7}, Lo/ViewDataBinding$OnStartListener;->asBinder([F)F

    move-result v7

    .line 1792
    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1797
    invoke-direct {p0}, Lo/setDrawerTitle;->onTransact()V

    .line 1799
    iget-object v5, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz p3, :cond_8

    .line 1803
    iget-object p3, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1804
    invoke-static {p3}, Lo/ViewDataBinding$OnStartListener;->extraCallback([F)F

    move-result p3

    cmpl-float p3, p1, p3

    if-lez p3, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    div-float/2addr p1, v4

    .line 1808
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p1, p3

    iget-object p3, p0, Lo/setDrawerTitle;->onTransact:[F

    invoke-static {p3}, Lo/ViewDataBinding$OnStartListener;->onPostMessage([F)F

    move-result p3

    neg-float p3, p3

    .line 1807
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1809
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v5, p0, Lo/setDrawerTitle;->onTransact:[F

    invoke-static {v5}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady([F)F

    move-result v5

    sub-float/2addr p3, v5

    .line 1806
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v2

    :goto_2
    iput p1, p0, Lo/setDrawerTitle;->IPostMessageService$Stub$Proxy:F

    .line 1811
    iget-object p1, p0, Lo/setDrawerTitle;->onTransact:[F

    .line 1812
    invoke-static {p1}, Lo/ViewDataBinding$OnStartListener;->onTransact([F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_7

    goto :goto_3

    :cond_7
    div-float/2addr p2, v4

    .line 1816
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lo/setDrawerTitle;->onTransact:[F

    invoke-static {p1}, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent([F)F

    move-result p1

    neg-float p1, p1

    .line 1815
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1817
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lo/setDrawerTitle;->onTransact:[F

    invoke-static {p3}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback([F)F

    move-result p3

    sub-float/2addr p2, p3

    .line 1814
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float v0, p1, v3

    :goto_3
    iput v0, p0, Lo/setDrawerTitle;->cancelAll:F

    goto :goto_4

    .line 1822
    :cond_8
    iget p3, p0, Lo/setDrawerTitle;->IPostMessageService$Stub$Proxy:F

    mul-float p3, p3, v2

    iget v0, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    .line 1823
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v0, v1, Landroid/graphics/RectF;->right:F

    neg-float v0, v0

    add-float/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v2

    iput p1, p0, Lo/setDrawerTitle;->IPostMessageService$Stub$Proxy:F

    .line 1825
    iget p1, p0, Lo/setDrawerTitle;->cancelAll:F

    mul-float p1, p1, v3

    iget p3, v1, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    .line 1826
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p3, v1, Landroid/graphics/RectF;->bottom:F

    neg-float p3, p3

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v3

    iput p1, p0, Lo/setDrawerTitle;->cancelAll:F

    .line 1831
    :goto_4
    iget-object p1, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget p2, p0, Lo/setDrawerTitle;->IPostMessageService$Stub$Proxy:F

    mul-float p2, p2, v2

    iget p3, p0, Lo/setDrawerTitle;->cancelAll:F

    mul-float p3, p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1832
    iget p1, p0, Lo/setDrawerTitle;->IPostMessageService$Stub$Proxy:F

    mul-float p1, p1, v2

    iget p2, p0, Lo/setDrawerTitle;->cancelAll:F

    mul-float p2, p2, v3

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1833
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1, v1}, Lo/setDrawerLockMode;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1834
    invoke-direct {p0}, Lo/setDrawerTitle;->onTransact()V

    .line 1835
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    if-eqz p4, :cond_9

    .line 1840
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub:Lo/setDrawerShadow;

    iget-object p2, p0, Lo/setDrawerTitle;->onTransact:[F

    iget-object p3, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Lo/setDrawerShadow;->ICustomTabsCallback([FLandroid/graphics/Matrix;)V

    .line 1841
    iget-object p1, p0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    iget-object p2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub:Lo/setDrawerShadow;

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 1843
    :cond_9
    iget-object p1, p0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    iget-object p2, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_5
    const/4 p1, 0x0

    .line 1847
    invoke-direct {p0, p1}, Lo/setDrawerTitle;->extraCallback(Z)V

    :cond_a
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/setDrawerTitle;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, p1, v0}, Lo/setDrawerTitle;->onPostMessage(ZZ)V

    return-void
.end method

.method private onPostMessage(ZZ)V
    .locals 10

    .line 1686
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1687
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1688
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    if-lez v0, :cond_9

    if-lez v1, :cond_9

    .line 1690
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 21195
    iget-object v2, v2, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 22146
    iget-object v3, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v4, v2, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 22147
    iget-object v2, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1692
    iget p1, v2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, v3

    if-ltz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->right:F

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_0

    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float p2, v1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    :cond_0
    int-to-float p1, v0

    int-to-float p2, v1

    const/4 v0, 0x0

    .line 1696
    invoke-direct {p0, p1, p2, v0, v0}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    return-void

    .line 1698
    :cond_1
    iget-boolean p1, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    iget p1, p0, Lo/setDrawerTitle;->cancel:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_9

    .line 1701
    :cond_2
    iget p1, p0, Lo/setDrawerTitle;->cancel:F

    iget v5, p0, Lo/setDrawerTitle;->validateRelationship:I

    int-to-float v5, v5

    cmpg-float p1, p1, v5

    if-gez p1, :cond_3

    .line 1702
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    int-to-float v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v5, v6

    cmpg-float p1, p1, v7

    if-gez p1, :cond_3

    .line 1703
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    int-to-float v7, v1

    mul-float v6, v6, v7

    cmpg-float p1, p1, v6

    if-gez p1, :cond_3

    .line 1704
    iget p1, p0, Lo/setDrawerTitle;->validateRelationship:I

    int-to-float p1, p1

    .line 1708
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v8, p0, Lo/setDrawerTitle;->cancel:F

    div-float/2addr v6, v8

    const v8, 0x3f23d70a    # 0.64f

    div-float/2addr v6, v8

    div-float/2addr v5, v6

    .line 1709
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v9, p0, Lo/setDrawerTitle;->cancel:F

    div-float/2addr v6, v9

    div-float/2addr v6, v8

    div-float/2addr v7, v6

    .line 1707
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1705
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1711
    :goto_0
    iget v5, p0, Lo/setDrawerTitle;->cancel:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_5

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v6, v0

    const v7, 0x3f266666    # 0.65f

    mul-float v8, v6, v7

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    int-to-float v8, v1

    mul-float v8, v8, v7

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5

    .line 1716
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v5, p0, Lo/setDrawerTitle;->cancel:F

    div-float/2addr p1, v5

    const v5, 0x3f028f5c    # 0.51f

    div-float/2addr p1, v5

    div-float/2addr v6, p1

    int-to-float p1, v1

    .line 1717
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v7, p0, Lo/setDrawerTitle;->cancel:F

    div-float/2addr v2, v7

    div-float/2addr v2, v5

    div-float/2addr p1, v2

    .line 1715
    invoke-static {v6, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1713
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1719
    :cond_5
    iget-boolean v2, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v4, p1

    :goto_1
    cmpl-float p1, v4, v3

    if-lez p1, :cond_9

    .line 1723
    iget p1, p0, Lo/setDrawerTitle;->cancel:F

    cmpl-float p1, v4, p1

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 1725
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub:Lo/setDrawerShadow;

    if-nez p1, :cond_7

    .line 1727
    new-instance p1, Lo/setDrawerShadow;

    iget-object v2, p0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    iget-object v3, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-direct {p1, v2, v3}, Lo/setDrawerShadow;-><init>(Landroid/widget/ImageView;Lo/setDrawerLockMode;)V

    iput-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub:Lo/setDrawerShadow;

    .line 1730
    :cond_7
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub:Lo/setDrawerShadow;

    iget-object v2, p0, Lo/setDrawerTitle;->onTransact:[F

    iget-object v3, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2, v3}, Lo/setDrawerShadow;->onPostMessage([FLandroid/graphics/Matrix;)V

    .line 1733
    :cond_8
    iput v4, p0, Lo/setDrawerTitle;->cancel:F

    int-to-float p1, v0

    int-to-float v0, v1

    const/4 v1, 0x1

    .line 1735
    invoke-direct {p0, p1, v0, v1, p2}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    :cond_9
    return-void
.end method

.method private onTransact()V
    .locals 11

    .line 1857
    iget-object v0, p0, Lo/setDrawerTitle;->onTransact:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 1858
    aput v2, v0, v3

    .line 1859
    iget-object v4, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v0, v5

    .line 1860
    iget-object v0, p0, Lo/setDrawerTitle;->onTransact:[F

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 1861
    iget-object v6, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, v0, v7

    .line 1862
    iget-object v0, p0, Lo/setDrawerTitle;->onTransact:[F

    iget-object v6, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v0, v8

    .line 1863
    iget-object v0, p0, Lo/setDrawerTitle;->onTransact:[F

    const/4 v6, 0x6

    aput v2, v0, v6

    .line 1864
    iget-object v9, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v0, v10

    .line 1865
    iget-object v0, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v9, p0, Lo/setDrawerTitle;->onTransact:[F

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1866
    iget-object v0, p0, Lo/setDrawerTitle;->asBinder:[F

    aput v2, v0, v1

    .line 1867
    aput v2, v0, v3

    const/high16 v1, 0x42c80000    # 100.0f

    .line 1868
    aput v1, v0, v5

    .line 1869
    aput v2, v0, v4

    .line 1870
    aput v1, v0, v7

    .line 1871
    aput v1, v0, v8

    .line 1872
    aput v2, v0, v6

    .line 1873
    aput v1, v0, v10

    .line 1874
    iget-object v1, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/graphics/Rect;
    .locals 7

    .line 760
    iget v0, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    .line 761
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 767
    :cond_0
    invoke-direct {p0}, Lo/setDrawerTitle;->onMessageChannelReady()[F

    move-result-object v2

    .line 769
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, v0

    .line 770
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    const/4 v4, 0x1

    .line 777
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 9327
    iget v5, v1, Lo/setDrawerLockMode;->onNavigationEvent:I

    .line 778
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 9352
    iget v6, v1, Lo/setDrawerLockMode;->extraCallback:I

    move-object v1, v2

    move v2, v3

    move v3, v0

    .line 773
    invoke-static/range {v1 .. v6}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady([FIIZII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method final extraCallback()V
    .locals 3

    .line 1890
    iget-boolean v0, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/setDrawerTitle;->extraCallback:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1894
    :goto_1
    iget-object v2, p0, Lo/setDrawerTitle;->asInterface:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1629
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1631
    iget p1, p0, Lo/setDrawerTitle;->getInterfaceDescriptor:I

    const/4 v0, 0x1

    if-lez p1, :cond_4

    iget p1, p0, Lo/setDrawerTitle;->requestPostMessageChannel:I

    if-lez p1, :cond_4

    .line 1633
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1634
    iget v1, p0, Lo/setDrawerTitle;->getInterfaceDescriptor:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1635
    iget v1, p0, Lo/setDrawerTitle;->requestPostMessageChannel:I

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1636
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1638
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    sub-int/2addr p4, p2

    int-to-float p1, p4

    sub-int/2addr p5, p3

    int-to-float p2, p5

    const/4 p3, 0x0

    .line 1639
    invoke-direct {p0, p1, p2, v0, p3}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    .line 1643
    iget-object p4, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/RectF;

    if-eqz p4, :cond_1

    .line 1644
    iget p4, p0, Lo/setDrawerTitle;->setDefaultImpl:I

    iget p5, p0, Lo/setDrawerTitle;->onNavigationEvent:I

    if-eq p4, p5, :cond_0

    .line 1645
    iput p4, p0, Lo/setDrawerTitle;->newSession:I

    .line 1646
    invoke-direct {p0, p1, p2, v0, p3}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    .line 1648
    :cond_0
    iget-object p1, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object p2, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1649
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    iget-object p2, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Lo/setDrawerLockMode;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 1650
    invoke-direct {p0, p3, p3}, Lo/setDrawerTitle;->onPostMessage(ZZ)V

    .line 1651
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 20195
    iget-object p2, p1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 21146
    iget-object p3, p2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object p4, p2, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 21147
    iget-object p2, p2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 19210
    invoke-virtual {p1, p2}, Lo/setDrawerLockMode;->extraCallback(Landroid/graphics/RectF;)V

    .line 19211
    iget-object p1, p1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 21154
    iget-object p1, p1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 p1, 0x0

    .line 1652
    iput-object p1, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/RectF;

    return-void

    .line 1653
    :cond_1
    iget-boolean p1, p0, Lo/setDrawerTitle;->getDefaultImpl:Z

    if-eqz p1, :cond_3

    .line 1654
    iput-boolean p3, p0, Lo/setDrawerTitle;->getDefaultImpl:Z

    .line 1655
    invoke-direct {p0, p3, p3}, Lo/setDrawerTitle;->onPostMessage(ZZ)V

    return-void

    .line 1658
    :cond_2
    invoke-direct {p0, v0}, Lo/setDrawerTitle;->extraCallback(Z)V

    :cond_3
    return-void

    .line 1661
    :cond_4
    invoke-direct {p0, v0}, Lo/setDrawerTitle;->extraCallback(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1568
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1570
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1571
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1572
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1573
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1575
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    if-nez p2, :cond_0

    .line 1579
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 1589
    :cond_0
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge p1, v2, :cond_1

    int-to-double v5, p1

    .line 1590
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v5, v7

    goto :goto_0

    :cond_1
    move-wide v5, v3

    .line 1592
    :goto_0
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_2

    int-to-double v7, p2

    .line 1593
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v9, v2

    div-double/2addr v7, v9

    goto :goto_1

    :cond_2
    move-wide v7, v3

    :goto_1
    cmpl-double v2, v5, v3

    if-nez v2, :cond_4

    cmpl-double v2, v7, v3

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1609
    :cond_3
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1610
    iget-object v3, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_3

    :cond_4
    :goto_2
    cmpg-double v2, v5, v7

    if-gtz v2, :cond_5

    .line 1601
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v5

    double-to-int v3, v2

    move v2, p1

    goto :goto_3

    .line 1604
    :cond_5
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v7

    double-to-int v2, v2

    move v3, p2

    :goto_3
    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_6

    goto :goto_4

    :cond_6
    if-ne v0, v4, :cond_7

    .line 17418
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_4

    :cond_7
    move p1, v2

    :goto_4
    if-ne v1, v5, :cond_8

    goto :goto_5

    :cond_8
    if-ne v1, v4, :cond_9

    .line 18418
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_5

    :cond_9
    move p2, v3

    .line 1616
    :goto_5
    iput p1, p0, Lo/setDrawerTitle;->getInterfaceDescriptor:I

    .line 1617
    iput p2, p0, Lo/setDrawerTitle;->requestPostMessageChannel:I

    .line 1619
    invoke-virtual {p0, p1, p2}, Lo/setDrawerTitle;->setMeasuredDimension(II)V

    return-void

    .line 1622
    :cond_a
    invoke-virtual {p0, p1, p2}, Lo/setDrawerTitle;->setMeasuredDimension(II)V

    return-void
.end method

.method final onNavigationEvent(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1314
    :cond_0
    iget-object v0, p0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1316
    invoke-direct {p0}, Lo/setDrawerTitle;->onNavigationEvent()V

    .line 1318
    iput-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    .line 1319
    iget-object v0, p0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1321
    iput-object p3, p0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    .line 1322
    iput p2, p0, Lo/setDrawerTitle;->mayLaunchUrl:I

    .line 1323
    iput p4, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    .line 1324
    iput p5, p0, Lo/setDrawerTitle;->newSession:I

    .line 1326
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    .line 1328
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    if-eqz p1, :cond_2

    .line 14242
    iget-boolean p2, p1, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz p2, :cond_1

    .line 14243
    sget-object p2, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Lo/setDrawerLockMode;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 14244
    invoke-virtual {p1}, Lo/setDrawerLockMode;->onPostMessage()V

    .line 14245
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1330
    :cond_1
    invoke-direct {p0}, Lo/setDrawerTitle;->ICustomTabsCallback$Stub()V

    :cond_2
    return-void
.end method

.method public final onPostMessage()Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    .line 859
    sget-object v1, Lo/setDrawerTitle$onTransact;->onMessageChannelReady:Lo/setDrawerTitle$onTransact;

    .line 11884
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 11885
    iget-object v2, v0, Lo/setDrawerTitle;->onPostMessage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 11887
    sget-object v2, Lo/setDrawerTitle$onTransact;->onMessageChannelReady:Lo/setDrawerTitle$onTransact;

    .line 11888
    sget-object v2, Lo/setDrawerTitle$onTransact;->onMessageChannelReady:Lo/setDrawerTitle$onTransact;

    .line 11890
    iget-object v2, v0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget v2, v0, Lo/setDrawerTitle;->INotificationSideChannel:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    sget-object v2, Lo/setDrawerTitle$onTransact;->onNavigationEvent:Lo/setDrawerTitle$onTransact;

    if-ne v1, v2, :cond_1

    .line 11892
    :cond_0
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v0, Lo/setDrawerTitle;->INotificationSideChannel:I

    mul-int v8, v2, v3

    .line 11893
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v0, Lo/setDrawerTitle;->INotificationSideChannel:I

    mul-int v9, v2, v3

    .line 11896
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    .line 11898
    invoke-direct/range {p0 .. p0}, Lo/setDrawerTitle;->onMessageChannelReady()[F

    move-result-object v6

    iget v7, v0, Lo/setDrawerTitle;->newSession:I

    const/4 v10, 0x1

    .line 11902
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 12327
    iget v11, v2, Lo/setDrawerLockMode;->onNavigationEvent:I

    .line 11903
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 12352
    iget v12, v2, Lo/setDrawerLockMode;->extraCallback:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 11904
    iget-boolean v15, v0, Lo/setDrawerTitle;->ICustomTabsService:Z

    iget-boolean v2, v0, Lo/setDrawerTitle;->warmup:Z

    move/from16 v16, v2

    .line 11895
    invoke-static/range {v4 .. v16}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    move-result-object v2

    .line 11909
    iget-object v2, v2, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 11911
    :cond_1
    iget-object v3, v0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    .line 11914
    invoke-direct/range {p0 .. p0}, Lo/setDrawerTitle;->onMessageChannelReady()[F

    move-result-object v4

    iget v5, v0, Lo/setDrawerTitle;->newSession:I

    const/4 v6, 0x1

    .line 11916
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 13327
    iget v7, v2, Lo/setDrawerLockMode;->onNavigationEvent:I

    .line 11917
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 13352
    iget v8, v2, Lo/setDrawerLockMode;->extraCallback:I

    .line 11918
    iget-boolean v9, v0, Lo/setDrawerTitle;->ICustomTabsService:Z

    iget-boolean v10, v0, Lo/setDrawerTitle;->warmup:Z

    .line 11912
    invoke-static/range {v3 .. v10}, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback(Landroid/graphics/Bitmap;[FIZIIZZ)Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;

    move-result-object v2

    iget-object v2, v2, Lo/ViewDataBinding$OnStartListener$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v3, 0x0

    .line 11924
    invoke-static {v2, v3, v3, v1}, Lo/ViewDataBinding$OnStartListener;->onPostMessage(Landroid/graphics/Bitmap;IILo/setDrawerTitle$onTransact;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .line 1501
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_a

    .line 1502
    check-cast p1, Landroid/os/Bundle;

    .line 1505
    iget-object v0, p0, Lo/setDrawerTitle;->extraCallback:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    iget v0, p0, Lo/setDrawerTitle;->mayLaunchUrl:I

    if-nez v0, :cond_9

    const-string v0, "LOADED_IMAGE_URI"

    .line 1510
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v1, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 1512
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1514
    sget-object v2, Lo/ViewDataBinding$OnStartListener;->onTransact:Landroid/util/Pair;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lo/ViewDataBinding$OnStartListener;->onTransact:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1515
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lo/ViewDataBinding$OnStartListener;->onTransact:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1516
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1518
    :goto_0
    sput-object v3, Lo/ViewDataBinding$OnStartListener;->onTransact:Landroid/util/Pair;

    if-eqz v2, :cond_1

    .line 1519
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const-string v1, "LOADED_SAMPLE_SIZE"

    .line 1520
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lo/setDrawerTitle;->onNavigationEvent(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    .line 1523
    :cond_1
    iget-object v1, p0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 1524
    invoke-virtual {p0, v0}, Lo/setDrawerTitle;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    const-string v0, "LOADED_IMAGE_RESOURCE"

    .line 1527
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 1529
    invoke-virtual {p0, v0}, Lo/setDrawerTitle;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const-string v0, "LOADING_IMAGE_URI"

    .line 1531
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 1533
    invoke-virtual {p0, v0}, Lo/setDrawerTitle;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_4
    :goto_1
    const-string v0, "DEGREES_ROTATED"

    .line 1538
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/setDrawerTitle;->setDefaultImpl:I

    iput v0, p0, Lo/setDrawerTitle;->newSession:I

    const-string v0, "INITIAL_CROP_RECT"

    .line 1540
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    .line 1542
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_6

    .line 1543
    :cond_5
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v1, v0}, Lo/setDrawerLockMode;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :cond_6
    const-string v0, "CROP_WINDOW_RECT"

    .line 1546
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    .line 1547
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1548
    :cond_7
    iput-object v0, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/RectF;

    .line 1551
    :cond_8
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    const-string v1, "CROP_SHAPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/setDrawerTitle$onMessageChannelReady;->valueOf(Ljava/lang/String;)Lo/setDrawerTitle$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setDrawerLockMode;->setCropShape(Lo/setDrawerTitle$onMessageChannelReady;)V

    const-string v0, "CROP_AUTO_ZOOM_ENABLED"

    .line 1553
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    const-string v0, "CROP_MAX_ZOOM"

    .line 1554
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/setDrawerTitle;->validateRelationship:I

    const-string v0, "CROP_FLIP_HORIZONTALLY"

    .line 1556
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDrawerTitle;->ICustomTabsService:Z

    const-string v0, "CROP_FLIP_VERTICALLY"

    .line 1557
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/setDrawerTitle;->warmup:Z

    :cond_9
    const-string v0, "instanceState"

    .line 1560
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1562
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1453
    iget-object v0, p0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lo/setDrawerTitle;->mayLaunchUrl:I

    if-gtz v0, :cond_0

    .line 1454
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    .line 1457
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1458
    iget-object v1, p0, Lo/setDrawerTitle;->notify:Landroid/net/Uri;

    .line 1459
    iget-boolean v2, p0, Lo/setDrawerTitle;->postMessage:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget v2, p0, Lo/setDrawerTitle;->mayLaunchUrl:I

    if-gtz v2, :cond_1

    .line 1463
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub:Landroid/net/Uri;

    .line 1462
    invoke-static {v1, v2, v3}, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub:Landroid/net/Uri;

    :cond_1
    if-eqz v1, :cond_2

    .line 1465
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 1466
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1467
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lo/ViewDataBinding$OnStartListener;->onTransact:Landroid/util/Pair;

    const-string v3, "LOADED_IMAGE_STATE_BITMAP_KEY"

    .line 1468
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :cond_2
    iget-object v2, p0, Lo/setDrawerTitle;->extraCallback:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 1471
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getSuperState;

    if-eqz v2, :cond_3

    .line 15072
    iget-object v2, v2, Lo/getSuperState;->onMessageChannelReady:Landroid/net/Uri;

    const-string v3, "LOADING_IMAGE_URI"

    .line 1473
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1476
    :cond_3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "instanceState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "LOADED_IMAGE_URI"

    .line 1477
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1478
    iget v1, p0, Lo/setDrawerTitle;->mayLaunchUrl:I

    const-string v2, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1479
    iget v1, p0, Lo/setDrawerTitle;->INotificationSideChannel:I

    const-string v2, "LOADED_SAMPLE_SIZE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1480
    iget v1, p0, Lo/setDrawerTitle;->newSession:I

    const-string v2, "DEGREES_ROTATED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1481
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 15428
    iget-object v1, v1, Lo/setDrawerLockMode;->onMessageChannelReady:Landroid/graphics/Rect;

    const-string v2, "INITIAL_CROP_RECT"

    .line 1481
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1483
    sget-object v1, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 16195
    iget-object v2, v2, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 17146
    iget-object v3, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v4, v2, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 17147
    iget-object v2, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 1483
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1485
    iget-object v1, p0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v2, p0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1486
    iget-object v1, p0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    sget-object v2, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1488
    sget-object v1, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    const-string v2, "CROP_WINDOW_RECT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1489
    iget-object v1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 17253
    iget-object v1, v1, Lo/setDrawerLockMode;->onPostMessage:Lo/setDrawerTitle$onMessageChannelReady;

    .line 1489
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP_SHAPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-boolean v1, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    const-string v2, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1491
    iget v1, p0, Lo/setDrawerTitle;->validateRelationship:I

    const-string v2, "CROP_MAX_ZOOM"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1492
    iget-boolean v1, p0, Lo/setDrawerTitle;->ICustomTabsService:Z

    const-string v2, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1493
    iget-boolean v1, p0, Lo/setDrawerTitle;->warmup:Z

    const-string v2, "CROP_FLIP_VERTICALLY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1671
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1672
    :goto_0
    iput-boolean p1, p0, Lo/setDrawerTitle;->getDefaultImpl:Z

    return-void
.end method

.method public setAspectRatio(II)V
    .locals 1

    .line 624
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1}, Lo/setDrawerLockMode;->setAspectRatioX(I)V

    .line 625
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1, p2}, Lo/setDrawerLockMode;->setAspectRatioY(I)V

    const/4 p1, 0x1

    .line 626
    invoke-virtual {p0, p1}, Lo/setDrawerTitle;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setAutoZoomEnabled(Z)V
    .locals 1

    .line 473
    iget-boolean v0, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    if-eq v0, p1, :cond_0

    .line 474
    iput-boolean p1, p0, Lo/setDrawerTitle;->IPostMessageService:Z

    const/4 p1, 0x0

    .line 475
    invoke-direct {p0, p1, p1}, Lo/setDrawerTitle;->onPostMessage(ZZ)V

    .line 476
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 789
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1}, Lo/setDrawerLockMode;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCropShape(Lo/setDrawerTitle$onMessageChannelReady;)V
    .locals 1

    .line 459
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1}, Lo/setDrawerLockMode;->setCropShape(Lo/setDrawerTitle$onMessageChannelReady;)V

    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1

    .line 557
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1}, Lo/setDrawerLockMode;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public setFlippedHorizontally(Z)V
    .locals 3

    .line 571
    iget-boolean v0, p0, Lo/setDrawerTitle;->ICustomTabsService:Z

    if-eq v0, p1, :cond_0

    .line 572
    iput-boolean p1, p0, Lo/setDrawerTitle;->ICustomTabsService:Z

    .line 573
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    :cond_0
    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 3

    .line 588
    iget-boolean v0, p0, Lo/setDrawerTitle;->warmup:Z

    if-eq v0, p1, :cond_0

    .line 589
    iput-boolean p1, p0, Lo/setDrawerTitle;->warmup:Z

    .line 590
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    :cond_0
    return-void
.end method

.method public setGuidelines(Lo/setDrawerTitle$extraCallback;)V
    .locals 1

    .line 606
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1}, Lo/setDrawerLockMode;->setGuidelines(Lo/setDrawerTitle$extraCallback;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    .line 1091
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setDrawerLockMode;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1092
    invoke-virtual/range {v2 .. v7}, Lo/setDrawerTitle;->onNavigationEvent(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1108
    invoke-static {p1, p2}, Lo/ViewDataBinding$OnStartListener;->extraCallback(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Lo/ViewDataBinding$OnStartListener$onNavigationEvent;

    move-result-object p1

    .line 1109
    iget-object p2, p1, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;->extraCallback:Landroid/graphics/Bitmap;

    .line 1110
    iget v0, p1, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;->onPostMessage:I

    .line 1111
    iget p1, p1, Lo/ViewDataBinding$OnStartListener$onNavigationEvent;->onPostMessage:I

    iput p1, p0, Lo/setDrawerTitle;->onNavigationEvent:I

    move-object v2, p2

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, p1

    const/4 v6, 0x0

    .line 1115
    :goto_0
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/setDrawerLockMode;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    .line 1116
    invoke-virtual/range {v1 .. v6}, Lo/setDrawerTitle;->onNavigationEvent(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 7

    if-eqz p1, :cond_0

    .line 723
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setDrawerLockMode;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 725
    invoke-virtual/range {v1 .. v6}, Lo/setDrawerTitle;->onNavigationEvent(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public setImageUriAsync(Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1128
    iget-object v0, p0, Lo/setDrawerTitle;->extraCallback:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getSuperState;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1133
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1137
    :cond_1
    invoke-direct {p0}, Lo/setDrawerTitle;->onNavigationEvent()V

    .line 1138
    iput-object v1, p0, Lo/setDrawerTitle;->INotificationSideChannel$Stub$Proxy:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 1139
    iput v0, p0, Lo/setDrawerTitle;->setDefaultImpl:I

    .line 1140
    iget-object v2, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v2, v1}, Lo/setDrawerLockMode;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    .line 1141
    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lo/getSuperState;

    invoke-direct {v2, p0, p1}, Lo/getSuperState;-><init>(Lo/setDrawerTitle;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lo/setDrawerTitle;->extraCallback:Ljava/lang/ref/WeakReference;

    .line 1142
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getSuperState;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Lo/getSuperState;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1143
    invoke-virtual {p0}, Lo/setDrawerTitle;->extraCallback()V

    :cond_2
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1

    .line 521
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1, p2}, Lo/setDrawerLockMode;->setMaxCropResultSize(II)V

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 1

    .line 501
    iget v0, p0, Lo/setDrawerTitle;->validateRelationship:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    .line 502
    iput p1, p0, Lo/setDrawerTitle;->validateRelationship:I

    const/4 p1, 0x0

    .line 503
    invoke-direct {p0, p1, p1}, Lo/setDrawerTitle;->onPostMessage(ZZ)V

    .line 504
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1

    .line 513
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1, p2}, Lo/setDrawerLockMode;->setMinCropResultSize(II)V

    return-void
.end method

.method public setMultiTouchEnabled(Z)V
    .locals 1

    .line 484
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1}, Lo/setDrawerLockMode;->onPostMessage(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 485
    invoke-direct {p0, p1, p1}, Lo/setDrawerTitle;->onPostMessage(ZZ)V

    .line 486
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnCropImageCompleteListener(Lo/setDrawerTitle$onNavigationEvent;)V
    .locals 0

    return-void
.end method

.method public setOnCropWindowChangedListener(Lo/setDrawerTitle$asInterface;)V
    .locals 0

    return-void
.end method

.method public setOnSetCropOverlayMovedListener(Lo/setDrawerTitle$ICustomTabsCallback;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lo/setDrawerTitle;->IPostMessageService$Stub:Lo/setDrawerTitle$ICustomTabsCallback;

    return-void
.end method

.method public setOnSetCropOverlayReleasedListener(Lo/setDrawerTitle$onPostMessage;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub$Proxy:Lo/setDrawerTitle$onPostMessage;

    return-void
.end method

.method public setOnSetImageUriCompleteListener(Lo/setDrawerTitle$asBinder;)V
    .locals 0

    return-void
.end method

.method public setRotatedDegrees(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 539
    iget v2, v0, Lo/setDrawerTitle;->newSession:I

    if-eq v2, v1, :cond_2

    sub-int/2addr v1, v2

    .line 4162
    iget-object v2, v0, Lo/setDrawerTitle;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    if-gez v1, :cond_0

    .line 4165
    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    .line 4167
    :cond_0
    rem-int/lit16 v1, v1, 0x168

    .line 4173
    :goto_0
    sget-object v2, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v3, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 5195
    iget-object v3, v3, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 6146
    iget-object v4, v3, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v5, v3, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6147
    iget-object v3, v3, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 4173
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4174
    sget-object v2, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 4175
    sget-object v4, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    .line 4182
    iget-object v3, v0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    iget-object v5, v0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4184
    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    sget-object v5, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 4185
    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    sget-object v5, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v7, 0x1

    aput v5, v3, v7

    .line 4186
    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    const/4 v5, 0x0

    const/4 v8, 0x2

    aput v5, v3, v8

    .line 4187
    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    const/4 v9, 0x3

    aput v5, v3, v9

    .line 4188
    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x4

    aput v10, v3, v11

    .line 4189
    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    const/4 v12, 0x5

    aput v5, v3, v12

    .line 4190
    iget-object v3, v0, Lo/setDrawerTitle;->onRelationshipValidationResult:Landroid/graphics/Matrix;

    sget-object v5, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4193
    iget v3, v0, Lo/setDrawerTitle;->newSession:I

    add-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x168

    iput v3, v0, Lo/setDrawerTitle;->newSession:I

    .line 4195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v3, v7, v6}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    .line 4198
    iget-object v1, v0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    sget-object v5, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 4199
    iget v1, v0, Lo/setDrawerTitle;->cancel:F

    float-to-double v13, v1

    sget-object v1, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v1, v1, v11

    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v3, v3, v8

    sub-float/2addr v1, v3

    float-to-double v6, v1

    move v1, v4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 4201
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sget-object v15, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v15, v15, v12

    sget-object v16, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v16, v16, v9

    sub-float v15, v15, v16

    float-to-double v8, v15

    .line 4202
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 4200
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v13, v6

    double-to-float v6, v13

    iput v6, v0, Lo/setDrawerTitle;->cancel:F

    .line 4203
    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lo/setDrawerTitle;->cancel:F

    .line 4205
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v5, v8}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    .line 4207
    iget-object v6, v0, Lo/setDrawerTitle;->onMessageChannelReady:Landroid/graphics/Matrix;

    sget-object v7, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    sget-object v8, Lo/ViewDataBinding$OnStartListener;->onPostMessage:[F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 4210
    sget-object v6, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v6, v6, v11

    sget-object v7, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 4212
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sget-object v8, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v8, v8, v12

    sget-object v9, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    sub-float/2addr v8, v9

    float-to-double v8, v8

    .line 4213
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v6, v3

    .line 4211
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    float-to-double v6, v2

    mul-double v6, v6, v3

    double-to-float v2, v6

    float-to-double v6, v1

    mul-double v6, v6, v3

    double-to-float v1, v6

    .line 4219
    sget-object v4, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    const/4 v6, 0x0

    aget v3, v3, v6

    sub-float v7, v3, v2

    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-float v8, v3, v1

    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v3, v3, v6

    add-float/2addr v2, v3

    sget-object v3, Lo/ViewDataBinding$OnStartListener;->onNavigationEvent:[F

    aget v6, v3, v5

    add-float/2addr v6, v1

    invoke-virtual {v4, v7, v8, v2, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4225
    iget-object v1, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 6242
    iget-boolean v2, v1, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_1

    .line 6243
    sget-object v2, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lo/setDrawerLockMode;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 6244
    invoke-virtual {v1}, Lo/setDrawerLockMode;->onPostMessage()V

    .line 6245
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4226
    :cond_1
    iget-object v1, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    sget-object v2, Lo/ViewDataBinding$OnStartListener;->onMessageChannelReady:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lo/setDrawerLockMode;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 4227
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/setDrawerTitle;->onNavigationEvent(FFZZ)V

    .line 4228
    invoke-direct {v0, v4, v4}, Lo/setDrawerTitle;->onPostMessage(ZZ)V

    .line 4232
    iget-object v1, v0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 8195
    iget-object v2, v1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 9146
    iget-object v3, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v4, v2, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 9147
    iget-object v2, v2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 7210
    invoke-virtual {v1, v2}, Lo/setDrawerLockMode;->extraCallback(Landroid/graphics/RectF;)V

    .line 7211
    iget-object v1, v1, Lo/setDrawerLockMode;->ICustomTabsCallback:Lo/setScrimColor;

    .line 9154
    iget-object v1, v1, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method public setSaveBitmapToInstanceState(Z)V
    .locals 0

    .line 706
    iput-boolean p1, p0, Lo/setDrawerTitle;->postMessage:Z

    return-void
.end method

.method public setScaleType(Lo/setDrawerTitle$onRelationshipValidationResult;)V
    .locals 1

    .line 438
    iget-object v0, p0, Lo/setDrawerTitle;->updateVisuals:Lo/setDrawerTitle$onRelationshipValidationResult;

    if-eq p1, v0, :cond_1

    .line 439
    iput-object p1, p0, Lo/setDrawerTitle;->updateVisuals:Lo/setDrawerTitle$onRelationshipValidationResult;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 440
    iput p1, p0, Lo/setDrawerTitle;->cancel:F

    const/4 p1, 0x0

    .line 441
    iput p1, p0, Lo/setDrawerTitle;->cancelAll:F

    iput p1, p0, Lo/setDrawerTitle;->IPostMessageService$Stub$Proxy:F

    .line 442
    iget-object p1, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    .line 3242
    iget-boolean v0, p1, Lo/setDrawerLockMode;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    .line 3243
    sget-object v0, Lo/ViewDataBinding$OnStartListener;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lo/setDrawerLockMode;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 3244
    invoke-virtual {p1}, Lo/setDrawerLockMode;->onPostMessage()V

    .line 3245
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 443
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setShowCropOverlay(Z)V
    .locals 1

    .line 683
    iget-boolean v0, p0, Lo/setDrawerTitle;->extraCommand:Z

    if-eq v0, p1, :cond_0

    .line 684
    iput-boolean p1, p0, Lo/setDrawerTitle;->extraCommand:Z

    .line 685
    invoke-direct {p0}, Lo/setDrawerTitle;->ICustomTabsCallback$Stub()V

    :cond_0
    return-void
.end method

.method public setShowProgressBar(Z)V
    .locals 1

    .line 662
    iget-boolean v0, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub:Z

    if-eq v0, p1, :cond_0

    .line 663
    iput-boolean p1, p0, Lo/setDrawerTitle;->ICustomTabsService$Stub:Z

    .line 664
    invoke-virtual {p0}, Lo/setDrawerTitle;->extraCallback()V

    :cond_0
    return-void
.end method

.method public setSnapRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 645
    iget-object v0, p0, Lo/setDrawerTitle;->ICustomTabsCallback:Lo/setDrawerLockMode;

    invoke-virtual {v0, p1}, Lo/setDrawerLockMode;->setSnapRadius(F)V

    :cond_0
    return-void
.end method
