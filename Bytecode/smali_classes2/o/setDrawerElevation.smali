.class public Lo/setDrawerElevation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/setDrawerElevation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AudioAttributesCompatParcelizer:Landroid/net/Uri;

.field private AudioAttributesImplApi21Parcelizer:Landroid/graphics/Rect;

.field private AudioAttributesImplBaseParcelizer:Z

.field public ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

.field public ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:F

.field public ICustomTabsService:I

.field public ICustomTabsService$Stub:I

.field public ICustomTabsService$Stub$Proxy:I

.field public INotificationSideChannel:I

.field public INotificationSideChannel$Default:I

.field public INotificationSideChannel$Stub:I

.field public INotificationSideChannel$Stub$Proxy:Z

.field public IPostMessageService:I

.field public IPostMessageService$Stub:F

.field public IPostMessageService$Stub$Proxy:I

.field private IconCompatParcelizer:Landroid/graphics/Bitmap$CompressFormat;

.field private MediaBrowserCompat:Z

.field private RemoteActionCompatParcelizer:Lo/setDrawerTitle$onTransact;

.field public asBinder:Z

.field public asInterface:Z

.field public cancel:I

.field public cancelAll:I

.field private connect:Z

.field private disconnect:I

.field public extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

.field public extraCommand:F

.field public getDefaultImpl:Z

.field private getExtras:Z

.field public getInterfaceDescriptor:I

.field private getRoot:Ljava/lang/CharSequence;

.field private getServiceComponent:I

.field public mayLaunchUrl:I

.field public newSession:Z

.field public notify:I

.field public onMessageChannelReady:F

.field public onNavigationEvent:Lo/setDrawerTitle$extraCallback;

.field public onPostMessage:F

.field public onRelationshipValidationResult:Z

.field public onTransact:Z

.field public postMessage:I

.field private read:I

.field public requestPostMessageChannel:F

.field private setDefaultImpl:Ljava/lang/CharSequence;

.field public updateVisuals:F

.field public validateRelationship:I

.field public warmup:F

.field private write:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lo/setDrawerElevation$4;

    invoke-direct {v0}, Lo/setDrawerElevation$4;-><init>()V

    sput-object v0, Lo/setDrawerElevation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 291
    sget-object v1, Lo/setDrawerTitle$onMessageChannelReady;->onNavigationEvent:Lo/setDrawerTitle$onMessageChannelReady;

    iput-object v1, p0, Lo/setDrawerElevation;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x1

    .line 292
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lo/setDrawerElevation;->onPostMessage:F

    const/high16 v3, 0x41c00000    # 24.0f

    .line 293
    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lo/setDrawerElevation;->onMessageChannelReady:F

    .line 294
    sget-object v3, Lo/setDrawerTitle$extraCallback;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    iput-object v3, p0, Lo/setDrawerElevation;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    .line 295
    sget-object v3, Lo/setDrawerTitle$onRelationshipValidationResult;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    iput-object v3, p0, Lo/setDrawerElevation;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 296
    iput-boolean v2, p0, Lo/setDrawerElevation;->asBinder:Z

    .line 297
    iput-boolean v2, p0, Lo/setDrawerElevation;->asInterface:Z

    .line 298
    iput-boolean v2, p0, Lo/setDrawerElevation;->onTransact:Z

    const/4 v3, 0x0

    .line 299
    iput-boolean v3, p0, Lo/setDrawerElevation;->onRelationshipValidationResult:Z

    const/4 v4, 0x4

    .line 300
    iput v4, p0, Lo/setDrawerElevation;->ICustomTabsCallback$Stub:I

    const v4, 0x3dcccccd    # 0.1f

    .line 301
    iput v4, p0, Lo/setDrawerElevation;->warmup:F

    .line 303
    iput-boolean v3, p0, Lo/setDrawerElevation;->newSession:Z

    .line 304
    iput v2, p0, Lo/setDrawerElevation;->getInterfaceDescriptor:I

    .line 305
    iput v2, p0, Lo/setDrawerElevation;->ICustomTabsService:I

    .line 307
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lo/setDrawerElevation;->ICustomTabsCallback$Stub$Proxy:F

    const/16 v1, 0xaa

    const/16 v4, 0xff

    .line 308
    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lo/setDrawerElevation;->postMessage:I

    const/high16 v5, 0x40000000    # 2.0f

    .line 309
    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lo/setDrawerElevation;->requestPostMessageChannel:F

    const/high16 v5, 0x40a00000    # 5.0f

    .line 310
    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lo/setDrawerElevation;->extraCommand:F

    const/high16 v5, 0x41600000    # 14.0f

    .line 311
    invoke-static {v2, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lo/setDrawerElevation;->updateVisuals:F

    const/4 v5, -0x1

    .line 312
    iput v5, p0, Lo/setDrawerElevation;->mayLaunchUrl:I

    const/high16 v6, 0x3f800000    # 1.0f

    .line 314
    invoke-static {v2, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    iput v6, p0, Lo/setDrawerElevation;->IPostMessageService$Stub:F

    .line 315
    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lo/setDrawerElevation;->ICustomTabsService$Stub:I

    const/16 v1, 0x77

    .line 316
    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lo/setDrawerElevation;->IPostMessageService:I

    const/high16 v1, 0x42280000    # 42.0f

    .line 318
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lo/setDrawerElevation;->validateRelationship:I

    .line 319
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lo/setDrawerElevation;->ICustomTabsService$Stub$Proxy:I

    const/16 v0, 0x28

    .line 320
    iput v0, p0, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    .line 321
    iput v0, p0, Lo/setDrawerElevation;->INotificationSideChannel:I

    const v0, 0x1869f

    .line 322
    iput v0, p0, Lo/setDrawerElevation;->cancelAll:I

    .line 323
    iput v0, p0, Lo/setDrawerElevation;->notify:I

    const-string v0, ""

    .line 325
    iput-object v0, p0, Lo/setDrawerElevation;->setDefaultImpl:Ljava/lang/CharSequence;

    .line 326
    iput v3, p0, Lo/setDrawerElevation;->write:I

    .line 328
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lo/setDrawerElevation;->AudioAttributesCompatParcelizer:Landroid/net/Uri;

    .line 329
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lo/setDrawerElevation;->IconCompatParcelizer:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x5a

    .line 330
    iput v0, p0, Lo/setDrawerElevation;->read:I

    .line 331
    iput v3, p0, Lo/setDrawerElevation;->cancel:I

    .line 332
    iput v3, p0, Lo/setDrawerElevation;->INotificationSideChannel$Stub:I

    .line 333
    sget-object v1, Lo/setDrawerTitle$onTransact;->onMessageChannelReady:Lo/setDrawerTitle$onTransact;

    iput-object v1, p0, Lo/setDrawerElevation;->RemoteActionCompatParcelizer:Lo/setDrawerTitle$onTransact;

    .line 334
    iput-boolean v3, p0, Lo/setDrawerElevation;->connect:Z

    const/4 v1, 0x0

    .line 336
    iput-object v1, p0, Lo/setDrawerElevation;->AudioAttributesImplApi21Parcelizer:Landroid/graphics/Rect;

    .line 337
    iput v5, p0, Lo/setDrawerElevation;->disconnect:I

    .line 338
    iput-boolean v2, p0, Lo/setDrawerElevation;->AudioAttributesImplBaseParcelizer:Z

    .line 339
    iput-boolean v2, p0, Lo/setDrawerElevation;->MediaBrowserCompat:Z

    .line 340
    iput-boolean v3, p0, Lo/setDrawerElevation;->getExtras:Z

    .line 341
    iput v0, p0, Lo/setDrawerElevation;->INotificationSideChannel$Default:I

    .line 342
    iput-boolean v3, p0, Lo/setDrawerElevation;->INotificationSideChannel$Stub$Proxy:Z

    .line 343
    iput-boolean v3, p0, Lo/setDrawerElevation;->getDefaultImpl:Z

    .line 344
    iput-object v1, p0, Lo/setDrawerElevation;->getRoot:Ljava/lang/CharSequence;

    .line 346
    iput v3, p0, Lo/setDrawerElevation;->getServiceComponent:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-static {}, Lo/setDrawerTitle$onMessageChannelReady;->values()[Lo/setDrawerTitle$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lo/setDrawerElevation;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->onPostMessage:F

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->onMessageChannelReady:F

    .line 356
    invoke-static {}, Lo/setDrawerTitle$extraCallback;->values()[Lo/setDrawerTitle$extraCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lo/setDrawerElevation;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    .line 357
    invoke-static {}, Lo/setDrawerTitle$onRelationshipValidationResult;->values()[Lo/setDrawerTitle$onRelationshipValidationResult;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lo/setDrawerElevation;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/setDrawerElevation;->asBinder:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lo/setDrawerElevation;->asInterface:Z

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lo/setDrawerElevation;->onTransact:Z

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lo/setDrawerElevation;->onRelationshipValidationResult:Z

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->ICustomTabsCallback$Stub:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->warmup:F

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lo/setDrawerElevation;->newSession:Z

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->getInterfaceDescriptor:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->ICustomTabsService:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->ICustomTabsCallback$Stub$Proxy:F

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->postMessage:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->requestPostMessageChannel:F

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->extraCommand:F

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->updateVisuals:F

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->mayLaunchUrl:I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->IPostMessageService$Stub:F

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->ICustomTabsService$Stub:I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->IPostMessageService:I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->validateRelationship:I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->ICustomTabsService$Stub$Proxy:I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->INotificationSideChannel:I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->cancelAll:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->notify:I

    .line 382
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/setDrawerElevation;->setDefaultImpl:Ljava/lang/CharSequence;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->write:I

    .line 384
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lo/setDrawerElevation;->AudioAttributesCompatParcelizer:Landroid/net/Uri;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lo/setDrawerElevation;->IconCompatParcelizer:Landroid/graphics/Bitmap$CompressFormat;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->read:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->cancel:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->INotificationSideChannel$Stub:I

    .line 389
    invoke-static {}, Lo/setDrawerTitle$onTransact;->values()[Lo/setDrawerTitle$onTransact;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lo/setDrawerElevation;->RemoteActionCompatParcelizer:Lo/setDrawerTitle$onTransact;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lo/setDrawerElevation;->connect:Z

    .line 391
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lo/setDrawerElevation;->AudioAttributesImplApi21Parcelizer:Landroid/graphics/Rect;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->disconnect:I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lo/setDrawerElevation;->AudioAttributesImplBaseParcelizer:Z

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lo/setDrawerElevation;->MediaBrowserCompat:Z

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lo/setDrawerElevation;->getExtras:Z

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lo/setDrawerElevation;->INotificationSideChannel$Default:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lo/setDrawerElevation;->INotificationSideChannel$Stub$Proxy:Z

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Lo/setDrawerElevation;->getDefaultImpl:Z

    .line 399
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lo/setDrawerElevation;->getRoot:Ljava/lang/CharSequence;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lo/setDrawerElevation;->getServiceComponent:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 405
    iget-object v0, p0, Lo/setDrawerElevation;->ICustomTabsCallback:Lo/setDrawerTitle$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Lo/setDrawerElevation;->onPostMessage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 407
    iget v0, p0, Lo/setDrawerElevation;->onMessageChannelReady:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 408
    iget-object v0, p0, Lo/setDrawerElevation;->onNavigationEvent:Lo/setDrawerTitle$extraCallback;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget-object v0, p0, Lo/setDrawerElevation;->extraCallback:Lo/setDrawerTitle$onRelationshipValidationResult;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-boolean v0, p0, Lo/setDrawerElevation;->asBinder:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 411
    iget-boolean v0, p0, Lo/setDrawerElevation;->asInterface:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 412
    iget-boolean v0, p0, Lo/setDrawerElevation;->onTransact:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 413
    iget-boolean v0, p0, Lo/setDrawerElevation;->onRelationshipValidationResult:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 414
    iget v0, p0, Lo/setDrawerElevation;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget v0, p0, Lo/setDrawerElevation;->warmup:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 416
    iget-boolean v0, p0, Lo/setDrawerElevation;->newSession:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 417
    iget v0, p0, Lo/setDrawerElevation;->getInterfaceDescriptor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget v0, p0, Lo/setDrawerElevation;->ICustomTabsService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget v0, p0, Lo/setDrawerElevation;->ICustomTabsCallback$Stub$Proxy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 420
    iget v0, p0, Lo/setDrawerElevation;->postMessage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget v0, p0, Lo/setDrawerElevation;->requestPostMessageChannel:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 422
    iget v0, p0, Lo/setDrawerElevation;->extraCommand:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 423
    iget v0, p0, Lo/setDrawerElevation;->updateVisuals:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 424
    iget v0, p0, Lo/setDrawerElevation;->mayLaunchUrl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget v0, p0, Lo/setDrawerElevation;->IPostMessageService$Stub:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 426
    iget v0, p0, Lo/setDrawerElevation;->ICustomTabsService$Stub:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget v0, p0, Lo/setDrawerElevation;->IPostMessageService:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v0, p0, Lo/setDrawerElevation;->validateRelationship:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Lo/setDrawerElevation;->ICustomTabsService$Stub$Proxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget v0, p0, Lo/setDrawerElevation;->IPostMessageService$Stub$Proxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget v0, p0, Lo/setDrawerElevation;->INotificationSideChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Lo/setDrawerElevation;->cancelAll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Lo/setDrawerElevation;->notify:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object v0, p0, Lo/setDrawerElevation;->setDefaultImpl:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 435
    iget v0, p0, Lo/setDrawerElevation;->write:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v0, p0, Lo/setDrawerElevation;->AudioAttributesCompatParcelizer:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 437
    iget-object v0, p0, Lo/setDrawerElevation;->IconCompatParcelizer:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget v0, p0, Lo/setDrawerElevation;->read:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Lo/setDrawerElevation;->cancel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Lo/setDrawerElevation;->INotificationSideChannel$Stub:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-object v0, p0, Lo/setDrawerElevation;->RemoteActionCompatParcelizer:Lo/setDrawerTitle$onTransact;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-boolean v0, p0, Lo/setDrawerElevation;->connect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget-object v0, p0, Lo/setDrawerElevation;->AudioAttributesImplApi21Parcelizer:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 444
    iget v0, p0, Lo/setDrawerElevation;->disconnect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-boolean v0, p0, Lo/setDrawerElevation;->AudioAttributesImplBaseParcelizer:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 446
    iget-boolean v0, p0, Lo/setDrawerElevation;->MediaBrowserCompat:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 447
    iget-boolean v0, p0, Lo/setDrawerElevation;->getExtras:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 448
    iget v0, p0, Lo/setDrawerElevation;->INotificationSideChannel$Default:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-boolean v0, p0, Lo/setDrawerElevation;->INotificationSideChannel$Stub$Proxy:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 450
    iget-boolean v0, p0, Lo/setDrawerElevation;->getDefaultImpl:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 451
    iget-object v0, p0, Lo/setDrawerElevation;->getRoot:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 452
    iget p2, p0, Lo/setDrawerElevation;->getServiceComponent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
