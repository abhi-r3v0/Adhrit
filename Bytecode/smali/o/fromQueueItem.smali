.class public abstract Lo/fromQueueItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromQueueItem$extraCallback;,
        Lo/fromQueueItem$onPostMessage;,
        Lo/fromQueueItem$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final asInterface:Lo/sendCaptioningEnabled;

.field private static final onRelationshipValidationResult:[I

.field private static postMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lo/postOrRun<",
            "Landroid/animation/Animator;",
            "Lo/fromQueueItem$onPostMessage;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field ICustomTabsCallback$Stub:Lo/fromQueueItem$extraCallback;

.field private ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

.field private ICustomTabsService:Landroid/animation/TimeInterpolator;

.field private ICustomTabsService$Stub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService$Stub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/fromQueueItem$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/lang/String;

.field extraCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

.field private extraCommand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaSessionCompat$ResultReceiverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:J

.field private mayLaunchUrl:I

.field private newSession:[I

.field onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:J

.field onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field onTransact:Lo/getQueueId;

.field private requestPostMessageChannel:Z

.field private updateVisuals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaSessionCompat$ResultReceiverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private validateRelationship:Lo/sendCaptioningEnabled;

.field private warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 164
    fill-array-data v0, :array_0

    sput-object v0, Lo/fromQueueItem;->onRelationshipValidationResult:[I

    .line 171
    new-instance v0, Lo/fromQueueItem$2;

    invoke-direct {v0}, Lo/fromQueueItem$2;-><init>()V

    sput-object v0, Lo/fromQueueItem;->asInterface:Lo/sendCaptioningEnabled;

    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/fromQueueItem;->asBinder:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Lo/fromQueueItem;->getInterfaceDescriptor:J

    .line 184
    iput-wide v0, p0, Lo/fromQueueItem;->onNavigationEvent:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lo/fromQueueItem;->ICustomTabsService:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    .line 198
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    .line 199
    iput-object v0, p0, Lo/fromQueueItem;->extraCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 200
    sget-object v1, Lo/fromQueueItem;->onRelationshipValidationResult:[I

    iput-object v1, p0, Lo/fromQueueItem;->newSession:[I

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 226
    iput v1, p0, Lo/fromQueueItem;->mayLaunchUrl:I

    .line 229
    iput-boolean v1, p0, Lo/fromQueueItem;->requestPostMessageChannel:Z

    .line 233
    iput-boolean v1, p0, Lo/fromQueueItem;->ICustomTabsService$Stub$Proxy:Z

    .line 236
    iput-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    .line 255
    sget-object v0, Lo/fromQueueItem;->asInterface:Lo/sendCaptioningEnabled;

    iput-object v0, p0, Lo/fromQueueItem;->validateRelationship:Lo/sendCaptioningEnabled;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/fromQueueItem;->asBinder:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Lo/fromQueueItem;->getInterfaceDescriptor:J

    .line 184
    iput-wide v0, p0, Lo/fromQueueItem;->onNavigationEvent:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lo/fromQueueItem;->ICustomTabsService:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    .line 198
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi23;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    .line 199
    iput-object v0, p0, Lo/fromQueueItem;->extraCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    .line 200
    sget-object v1, Lo/fromQueueItem;->onRelationshipValidationResult:[I

    iput-object v1, p0, Lo/fromQueueItem;->newSession:[I

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/fromQueueItem;->ICustomTabsCallback:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 226
    iput v1, p0, Lo/fromQueueItem;->mayLaunchUrl:I

    .line 229
    iput-boolean v1, p0, Lo/fromQueueItem;->requestPostMessageChannel:Z

    .line 233
    iput-boolean v1, p0, Lo/fromQueueItem;->ICustomTabsService$Stub$Proxy:Z

    .line 236
    iput-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    .line 255
    sget-object v2, Lo/fromQueueItem;->asInterface:Lo/sendCaptioningEnabled;

    iput-object v2, p0, Lo/fromQueueItem;->validateRelationship:Lo/sendCaptioningEnabled;

    .line 278
    sget-object v2, Lo/getQueueItem;->ICustomTabsCallback:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 279
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string v5, "duration"

    .line 280
    invoke-static {v2, p2, v5, v4, v3}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_0

    .line 283
    invoke-virtual {p0, v5, v6}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    :cond_0
    const/4 v5, 0x2

    const-string/jumbo v6, "startDelay"

    .line 285
    invoke-static {v2, p2, v6, v5, v3}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v5, v3

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 288
    invoke-virtual {p0, v5, v6}, Lo/fromQueueItem;->onNavigationEvent(J)Lo/fromQueueItem;

    :cond_1
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v5, "interpolator"

    .line 4058
    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    .line 3207
    :cond_3
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    :goto_1
    if-lez v5, :cond_4

    .line 293
    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    :cond_4
    const/4 p1, 0x3

    const-string v5, "matchOrder"

    .line 5058
    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    .line 4225
    :cond_6
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    .line 298
    invoke-static {v0}, Lo/fromQueueItem;->extraCallback(Ljava/lang/String;)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lo/fromQueueItem;->onMessageChannelReady([I)V

    .line 300
    :cond_7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)[I
    .locals 6

    .line 305
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 309
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 310
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    .line 311
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    .line 312
    aput v3, p0, v2

    goto :goto_1

    :cond_0
    const-string v4, "instance"

    .line 313
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    aput v5, p0, v2

    goto :goto_1

    :cond_1
    const-string v4, "name"

    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    .line 316
    aput v3, p0, v2

    goto :goto_1

    :cond_2
    const-string v4, "itemId"

    .line 317
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x4

    .line 318
    aput v3, p0, v2

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 321
    array-length v3, p0

    sub-int/2addr v3, v5

    new-array v3, v3, [I

    .line 322
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    move-object p0, v3

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 326
    :cond_4
    new-instance p0, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown match type in matchOrder: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0
.end method

.method private varargs onMessageChannelReady([I)V
    .locals 4

    if-eqz p1, :cond_5

    .line 510
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 513
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 514
    aget v2, p1, v1

    if-lez v2, :cond_1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 518
    invoke-static {p1, v1}, Lo/fromQueueItem;->onPostMessage([II)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains a duplicate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lo/fromQueueItem;->newSession:[I

    return-void

    .line 511
    :cond_5
    :goto_2
    sget-object p1, Lo/fromQueueItem;->onRelationshipValidationResult:[I

    iput-object p1, p0, Lo/fromQueueItem;->newSession:[I

    return-void
.end method

.method private static onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;Ljava/lang/String;)Z
    .locals 0

    .line 1866
    iget-object p0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1867
    iget-object p1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 1877
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return p2

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return p2
.end method

.method private onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Lo/MediaBrowserCompat$MediaBrowserImplApi23;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 667
    new-instance v3, Lo/postOrRun;

    iget-object v4, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-direct {v3, v4}, Lo/postOrRun;-><init>(Lo/fromMediaItemList;)V

    .line 668
    new-instance v4, Lo/postOrRun;

    iget-object v5, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-direct {v4, v5}, Lo/postOrRun;-><init>(Lo/fromMediaItemList;)V

    const/4 v6, 0x0

    .line 670
    :goto_0
    iget-object v7, v0, Lo/fromQueueItem;->newSession:[I

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v6, v8, :cond_c

    .line 671
    aget v7, v7, v6

    if-eq v7, v10, :cond_9

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    goto/16 :goto_5

    .line 684
    :cond_0
    iget-object v7, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    iget-object v8, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 10327
    iget-boolean v10, v7, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v10, :cond_1

    .line 10328
    invoke-virtual {v7}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 10331
    :cond_1
    iget v10, v7, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_b

    .line 10373
    iget-boolean v12, v7, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v12, :cond_2

    .line 10374
    invoke-virtual {v7}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 10377
    :cond_2
    iget-object v12, v7, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v12, v12, v11

    .line 9569
    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_4

    .line 9570
    invoke-virtual {v0, v12}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 11353
    iget-boolean v13, v7, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v13, :cond_3

    .line 11354
    invoke-virtual {v7}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 11357
    :cond_3
    iget-object v13, v7, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback:[J

    aget-wide v14, v13, v11

    .line 12109
    invoke-virtual {v8, v14, v15, v9}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 9571
    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_4

    .line 9572
    invoke-virtual {v0, v13}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 9573
    invoke-virtual {v3, v12}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 9574
    invoke-virtual {v4, v13}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    .line 9576
    iget-object v5, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9577
    iget-object v5, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9578
    invoke-virtual {v3, v12}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9579
    invoke-virtual {v4, v13}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 680
    :cond_5
    iget-object v5, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    iget-object v7, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    .line 8594
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_b

    .line 8596
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_6

    .line 8597
    invoke-virtual {v0, v10}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8598
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_6

    .line 8599
    invoke-virtual {v0, v11}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 8600
    invoke-virtual {v3, v10}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 8601
    invoke-virtual {v4, v11}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-eqz v12, :cond_6

    if-eqz v13, :cond_6

    .line 8603
    iget-object v14, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8604
    iget-object v12, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8605
    invoke-virtual {v3, v10}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8606
    invoke-virtual {v4, v11}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 676
    :cond_7
    iget-object v5, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->ICustomTabsCallback:Lo/postOrRun;

    iget-object v7, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->ICustomTabsCallback:Lo/postOrRun;

    .line 6621
    invoke-virtual {v5}, Lo/fromMediaItemList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_b

    .line 7399
    iget-object v10, v5, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v11, 0x1

    aget-object v10, v10, v12

    .line 6623
    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_8

    .line 6624
    invoke-virtual {v0, v10}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 8390
    iget-object v12, v5, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    aget-object v11, v12, v11

    .line 6625
    invoke-virtual {v7, v11}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_8

    .line 6626
    invoke-virtual {v0, v11}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 6627
    invoke-virtual {v3, v10}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 6628
    invoke-virtual {v4, v11}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    .line 6630
    iget-object v14, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6631
    iget-object v12, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6632
    invoke-virtual {v3, v10}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6633
    invoke-virtual {v4, v11}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 5546
    :cond_9
    invoke-virtual {v3}, Lo/fromMediaItemList;->size()I

    move-result v5

    sub-int/2addr v5, v10

    :goto_4
    if-ltz v5, :cond_b

    .line 6390
    iget-object v7, v3, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    .line 5547
    check-cast v7, Landroid/view/View;

    if-eqz v7, :cond_a

    .line 5548
    invoke-virtual {v0, v7}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 5549
    invoke-virtual {v4, v7}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-eqz v7, :cond_a

    .line 5550
    iget-object v8, v7, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0, v8}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 5551
    invoke-virtual {v3, v5}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 5552
    iget-object v9, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 5553
    iget-object v8, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    .line 12647
    :goto_6
    invoke-virtual {v3}, Lo/fromMediaItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 13399
    iget-object v2, v3, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v5, v10

    aget-object v2, v2, v5

    .line 12648
    check-cast v2, Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 12649
    iget-object v5, v2, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0, v5}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 12650
    iget-object v5, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12651
    iget-object v2, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    .line 12656
    :goto_7
    invoke-virtual {v4}, Lo/fromMediaItemList;->size()I

    move-result v1

    if-ge v5, v1, :cond_10

    .line 14399
    iget-object v1, v4, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, v5, 0x1

    add-int/2addr v2, v10

    aget-object v1, v1, v2

    .line 12657
    check-cast v1, Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 12658
    iget-object v2, v1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0, v2}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 12659
    iget-object v2, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12660
    iget-object v1, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    return-void
.end method

.method private onPostMessage(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1602
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 1617
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1618
    new-instance v0, Lo/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v0, p1}, Lo/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 1620
    invoke-virtual {p0, v0}, Lo/fromQueueItem;->extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    goto :goto_0

    .line 1622
    :cond_1
    invoke-virtual {p0, v0}, Lo/fromQueueItem;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 1624
    :goto_0
    iget-object v1, v0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1625
    invoke-virtual {p0, v0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    if-eqz p2, :cond_2

    .line 1627
    iget-object v1, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-static {v1, p1, v0}, Lo/fromQueueItem;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    goto :goto_1

    .line 1629
    :cond_2
    iget-object v1, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-static {v1, p1, v0}, Lo/fromQueueItem;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 1632
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1648
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1649
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1650
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 4

    .line 1532
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v0, p1, p2}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1535
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1537
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1539
    :cond_0
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1542
    :cond_1
    :goto_0
    invoke-static {p1}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1544
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {v1, p2}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1546
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {v1, p2, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1548
    :cond_2
    iget-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->ICustomTabsCallback:Lo/postOrRun;

    invoke-virtual {v1, p2, p1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7

    .line 1552
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1553
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1554
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1555
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1556
    iget-object p2, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 23399
    iget-boolean v3, p2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v3, :cond_4

    .line 23400
    invoke-virtual {p2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 23403
    :cond_4
    iget-object v3, p2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback:[J

    iget p2, p2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    invoke-static {v3, p2, v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback([JIJ)I

    move-result p2

    if-ltz p2, :cond_6

    .line 1558
    iget-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 24109
    invoke-virtual {p1, v1, v2, v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1558
    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1560
    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Z)V

    .line 1561
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {p0, v1, v2, v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    const/4 p2, 0x1

    .line 1564
    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Z)V

    .line 1565
    iget-object p0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {p0, v1, v2, p1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private static onPostMessage([II)Z
    .locals 4

    .line 531
    aget v0, p0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 533
    aget v3, p0, v2

    if-ne v3, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lo/fromQueueItem;->getInterfaceDescriptor:J

    return-wide v0
.end method

.method ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2256
    iget-wide v0, p0, Lo/fromQueueItem;->onNavigationEvent:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lo/fromQueueItem;->onNavigationEvent:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2259
    :cond_0
    iget-wide v0, p0, Lo/fromQueueItem;->getInterfaceDescriptor:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/fromQueueItem;->getInterfaceDescriptor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    :cond_1
    iget-object v0, p0, Lo/fromQueueItem;->ICustomTabsService:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/fromQueueItem;->ICustomTabsService:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2265
    :cond_2
    iget-object v0, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2266
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2267
    iget-object v0, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 2268
    :goto_0
    iget-object v3, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 2270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2272
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2275
    :cond_5
    iget-object v0, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2276
    :goto_1
    iget-object v0, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2280
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2283
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method final ICustomTabsCallback(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;
    .locals 7

    move-object v0, p0

    .line 1682
    :goto_0
    iget-object v1, v0, Lo/fromQueueItem;->extraCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1685
    iget-object v1, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    return-object v2

    .line 1689
    :cond_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 1692
    invoke-virtual {v1, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-nez v6, :cond_3

    return-object v2

    .line 1697
    :cond_3
    iget-object v6, v6, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    if-ne v6, p1, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-ltz v4, :cond_7

    if-eqz p2, :cond_6

    .line 1704
    iget-object p1, v0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    iget-object p1, v0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    .line 1705
    :goto_4
    invoke-virtual {p1, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lo/MediaSessionCompat$ResultReceiverWrapper;

    :cond_7
    return-object v2
.end method

.method public ICustomTabsCallback(Landroid/view/View;)Lo/fromQueueItem;
    .locals 1

    .line 1098
    iget-object v0, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public abstract ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
.end method

.method public ICustomTabsCallback(Lo/sendCaptioningEnabled;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2086
    sget-object p1, Lo/fromQueueItem;->asInterface:Lo/sendCaptioningEnabled;

    iput-object p1, p0, Lo/fromQueueItem;->validateRelationship:Lo/sendCaptioningEnabled;

    return-void

    .line 2088
    :cond_0
    iput-object p1, p0, Lo/fromQueueItem;->validateRelationship:Lo/sendCaptioningEnabled;

    return-void
.end method

.method protected ICustomTabsCallback$Stub()V
    .locals 4

    .line 2017
    iget-object v0, p0, Lo/fromQueueItem;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2019
    iget-object v1, p0, Lo/fromQueueItem;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 2020
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2022
    :cond_0
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2023
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 2024
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2025
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 2027
    invoke-virtual {v0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem$onMessageChannelReady;

    invoke-interface {v3, p0}, Lo/fromQueueItem$onMessageChannelReady;->onMessageChannelReady(Lo/fromQueueItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public asBinder()Lo/fromQueueItem;
    .locals 3

    const/4 v0, 0x0

    .line 2224
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    .line 2225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    .line 2226
    new-instance v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23;-><init>()V

    iput-object v2, v1, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    .line 2227
    new-instance v2, Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi23;-><init>()V

    iput-object v2, v1, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    .line 2228
    iput-object v0, v1, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    .line 2229
    iput-object v0, v1, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public final asInterface()Lo/sendCaptioningEnabled;
    .locals 1

    .line 2103
    iget-object v0, p0, Lo/fromQueueItem;->validateRelationship:Lo/sendCaptioningEnabled;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lo/fromQueueItem;->asBinder()Lo/fromQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;
    .locals 1

    .line 2042
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 2045
    :cond_0
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected extraCallback()V
    .locals 8

    .line 878
    invoke-virtual {p0}, Lo/fromQueueItem;->onMessageChannelReady()V

    .line 17859
    sget-object v0, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/postOrRun;

    if-nez v0, :cond_0

    .line 17861
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 17862
    sget-object v1, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 881
    :cond_0
    iget-object v1, p0, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 885
    invoke-virtual {v0, v2}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 886
    invoke-virtual {p0}, Lo/fromQueueItem;->onMessageChannelReady()V

    if-eqz v2, :cond_1

    .line 17898
    new-instance v3, Lo/fromQueueItem$4;

    invoke-direct {v3, p0, v0}, Lo/fromQueueItem$4;-><init>(Lo/fromQueueItem;Lo/postOrRun;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v2, :cond_2

    .line 18900
    invoke-virtual {p0}, Lo/fromQueueItem;->onRelationshipValidationResult()V

    goto :goto_0

    .line 19357
    :cond_2
    iget-wide v3, p0, Lo/fromQueueItem;->onNavigationEvent:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    .line 18903
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 20384
    :cond_3
    iget-wide v3, p0, Lo/fromQueueItem;->getInterfaceDescriptor:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    .line 18906
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 21412
    :cond_4
    iget-object v3, p0, Lo/fromQueueItem;->ICustomTabsService:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_5

    .line 18909
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18911
    :cond_5
    new-instance v3, Lo/fromQueueItem$1;

    invoke-direct {v3, p0}, Lo/fromQueueItem$1;-><init>(Lo/fromQueueItem;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18918
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 890
    :cond_6
    iget-object v0, p0, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 891
    invoke-virtual {p0}, Lo/fromQueueItem;->onRelationshipValidationResult()V

    return-void
.end method

.method public extraCallback(Landroid/view/View;)V
    .locals 8

    .line 1719
    iget-boolean v0, p0, Lo/fromQueueItem;->ICustomTabsService$Stub$Proxy:Z

    if-nez v0, :cond_6

    .line 24859
    sget-object v0, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/postOrRun;

    if-nez v0, :cond_0

    .line 24861
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 24862
    sget-object v1, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1721
    :cond_0
    invoke-virtual {v0}, Lo/fromMediaItemList;->size()I

    move-result v1

    .line 1722
    invoke-static {p1}, Lo/equals;->ICustomTabsCallback(Landroid/view/View;)Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-result-object p1

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    .line 25399
    iget-object v3, v0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-object v3, v3, v5

    .line 1724
    check-cast v3, Lo/fromQueueItem$onPostMessage;

    .line 1725
    iget-object v5, v3, Lo/fromQueueItem$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v3, v3, Lo/fromQueueItem$onPostMessage;->onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26390
    iget-object v3, v0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    aget-object v3, v3, v4

    .line 1726
    check-cast v3, Landroid/animation/Animator;

    .line 27037
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 27038
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    goto :goto_0

    .line 27040
    :cond_2
    invoke-virtual {v3}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 27042
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_1

    .line 27043
    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    .line 27044
    instance-of v7, v6, Lo/sendEvent$ICustomTabsCallback;

    if-eqz v7, :cond_3

    .line 27045
    check-cast v6, Lo/sendEvent$ICustomTabsCallback;

    invoke-interface {v6, v3}, Lo/sendEvent$ICustomTabsCallback;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1730
    :cond_4
    iget-object p1, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1731
    iget-object p1, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 1732
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1733
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 1735
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem$onMessageChannelReady;

    invoke-interface {v1, p0}, Lo/fromQueueItem$onMessageChannelReady;->extraCallback(Lo/fromQueueItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    .line 1738
    iput-boolean p1, p0, Lo/fromQueueItem;->requestPostMessageChannel:Z

    :cond_6
    return-void
.end method

.method final extraCallback(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1471
    invoke-virtual {p0, p2}, Lo/fromQueueItem;->onNavigationEvent(Z)V

    .line 1472
    iget-object v0, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 1511
    :cond_0
    invoke-direct {p0, p1, p2}, Lo/fromQueueItem;->onPostMessage(Landroid/view/View;Z)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1475
    :goto_1
    iget-object v2, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1476
    iget-object v2, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1477
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1479
    new-instance v3, Lo/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v3, v2}, Lo/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    .line 1481
    invoke-virtual {p0, v3}, Lo/fromQueueItem;->extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    goto :goto_2

    .line 1483
    :cond_2
    invoke-virtual {p0, v3}, Lo/fromQueueItem;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 1485
    :goto_2
    iget-object v4, v3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-virtual {p0, v3}, Lo/fromQueueItem;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    if-eqz p2, :cond_3

    .line 1488
    iget-object v4, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-static {v4, v2, v3}, Lo/fromQueueItem;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    goto :goto_3

    .line 1490
    :cond_3
    iget-object v4, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-static {v4, v2, v3}, Lo/fromQueueItem;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1494
    :cond_5
    :goto_4
    iget-object p1, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 1495
    iget-object p1, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1496
    new-instance v1, Lo/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v1, p1}, Lo/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    .line 1498
    invoke-virtual {p0, v1}, Lo/fromQueueItem;->extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    goto :goto_5

    .line 1500
    :cond_6
    invoke-virtual {p0, v1}, Lo/fromQueueItem;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 1502
    :goto_5
    iget-object v2, v1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1503
    invoke-virtual {p0, v1}, Lo/fromQueueItem;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    if-eqz p2, :cond_7

    .line 1505
    iget-object v2, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-static {v2, p1, v1}, Lo/fromQueueItem;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    goto :goto_6

    .line 1507
    :cond_7
    iget-object v2, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-static {v2, p1, v1}, Lo/fromQueueItem;->onPostMessage(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public abstract extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
.end method

.method public final onMessageChannelReady(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;
    .locals 2

    move-object v0, p0

    .line 1663
    :goto_0
    iget-object v1, v0, Lo/fromQueueItem;->extraCallback:Lo/MediaSessionCompat$ResultReceiverWrapper$1;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1666
    iget-object p2, v0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    goto :goto_1

    :cond_1
    iget-object p2, v0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    .line 1667
    :goto_1
    iget-object p2, p2, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p2, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$ResultReceiverWrapper;

    return-object p1
.end method

.method public onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;
    .locals 0

    .line 398
    iput-object p1, p0, Lo/fromQueueItem;->ICustomTabsService:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;
    .locals 1

    .line 2058
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 2061
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 2062
    iget-object p1, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2063
    iput-object p1, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method protected final onMessageChannelReady()V
    .locals 5

    .line 1931
    iget v0, p0, Lo/fromQueueItem;->mayLaunchUrl:I

    if-nez v0, :cond_1

    .line 1932
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 1934
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1935
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1937
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/fromQueueItem$onMessageChannelReady;

    invoke-interface {v4, p0}, Lo/fromQueueItem$onMessageChannelReady;->onNavigationEvent(Lo/fromQueueItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1940
    :cond_0
    iput-boolean v1, p0, Lo/fromQueueItem;->ICustomTabsService$Stub$Proxy:Z

    .line 1942
    :cond_1
    iget v0, p0, Lo/fromQueueItem;->mayLaunchUrl:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/fromQueueItem;->mayLaunchUrl:I

    return-void
.end method

.method public onMessageChannelReady(Landroid/view/View;)V
    .locals 9

    .line 1751
    iget-boolean v0, p0, Lo/fromQueueItem;->requestPostMessageChannel:Z

    if-eqz v0, :cond_6

    .line 1752
    iget-boolean v0, p0, Lo/fromQueueItem;->ICustomTabsService$Stub$Proxy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 27859
    sget-object v0, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/postOrRun;

    if-nez v0, :cond_0

    .line 27861
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 27862
    sget-object v2, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1754
    :cond_0
    invoke-virtual {v0}, Lo/fromMediaItemList;->size()I

    move-result v2

    .line 1755
    invoke-static {p1}, Lo/equals;->ICustomTabsCallback(Landroid/view/View;)Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-result-object p1

    :cond_1
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 28399
    iget-object v3, v0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-object v3, v3, v5

    .line 1757
    check-cast v3, Lo/fromQueueItem$onPostMessage;

    .line 1758
    iget-object v5, v3, Lo/fromQueueItem$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v3, v3, Lo/fromQueueItem$onPostMessage;->onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29390
    iget-object v3, v0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    aget-object v3, v3, v4

    .line 1759
    check-cast v3, Landroid/animation/Animator;

    .line 30053
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 30054
    invoke-virtual {v3}, Landroid/animation/Animator;->resume()V

    goto :goto_0

    .line 30056
    :cond_2
    invoke-virtual {v3}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 30058
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 30059
    invoke-virtual {v4, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    .line 30060
    instance-of v8, v7, Lo/sendEvent$ICustomTabsCallback;

    if-eqz v8, :cond_3

    .line 30061
    check-cast v7, Lo/sendEvent$ICustomTabsCallback;

    invoke-interface {v7, v3}, Lo/sendEvent$ICustomTabsCallback;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1763
    :cond_4
    iget-object p1, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1764
    iget-object p1, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 1765
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1766
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 1768
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem$onMessageChannelReady;

    invoke-interface {v3, p0}, Lo/fromQueueItem$onMessageChannelReady;->onPostMessage(Lo/fromQueueItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1772
    :cond_5
    iput-boolean v1, p0, Lo/fromQueueItem;->requestPostMessageChannel:Z

    :cond_6
    return-void
.end method

.method final onMessageChannelReady(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    .line 1784
    iget-object v0, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v1, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    invoke-direct {p0, v0, v1}, Lo/fromQueueItem;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplApi23;Lo/MediaBrowserCompat$MediaBrowserImplApi23;)V

    .line 30859
    sget-object v0, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/postOrRun;

    if-nez v0, :cond_0

    .line 30861
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 30862
    sget-object v1, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1787
    :cond_0
    invoke-virtual {v0}, Lo/fromMediaItemList;->size()I

    move-result v1

    .line 1788
    invoke-static {p1}, Lo/equals;->ICustomTabsCallback(Landroid/view/View;)Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-result-object v2

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    .line 31390
    iget-object v3, v0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    .line 1790
    check-cast v3, Landroid/animation/Animator;

    if-eqz v3, :cond_1

    .line 1792
    invoke-virtual {v0, v3}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/fromQueueItem$onPostMessage;

    if-eqz v4, :cond_1

    .line 1793
    iget-object v5, v4, Lo/fromQueueItem$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lo/fromQueueItem$onPostMessage;->onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 1794
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1795
    iget-object v5, v4, Lo/fromQueueItem$onPostMessage;->onMessageChannelReady:Lo/MediaSessionCompat$ResultReceiverWrapper;

    .line 1796
    iget-object v6, v4, Lo/fromQueueItem$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    const/4 v7, 0x1

    .line 1797
    invoke-virtual {p0, v6, v7}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object v8

    .line 1798
    invoke-virtual {p0, v6, v7}, Lo/fromQueueItem;->ICustomTabsCallback(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object v9

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    .line 1800
    iget-object v9, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v9, v9, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v9, v6}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lo/MediaSessionCompat$ResultReceiverWrapper;

    :cond_2
    if-nez v8, :cond_3

    if-eqz v9, :cond_4

    .line 1802
    :cond_3
    iget-object v4, v4, Lo/fromQueueItem$onPostMessage;->extraCallback:Lo/fromQueueItem;

    .line 1803
    invoke-virtual {v4, v5, v9}, Lo/fromQueueItem;->onPostMessage(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_1

    .line 1805
    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    .line 1814
    :cond_5
    invoke-virtual {v0, v3}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1809
    :cond_6
    :goto_2
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 1821
    :cond_7
    iget-object v5, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v6, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v7, p0, Lo/fromQueueItem;->updateVisuals:Ljava/util/ArrayList;

    iget-object v8, p0, Lo/fromQueueItem;->extraCommand:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/view/ViewGroup;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1822
    invoke-virtual {p0}, Lo/fromQueueItem;->extraCallback()V

    return-void
.end method

.method protected onMessageChannelReady(Landroid/view/ViewGroup;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Lo/MediaBrowserCompat$MediaBrowserImplApi23;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23;",
            "Lo/MediaBrowserCompat$MediaBrowserImplApi23;",
            "Ljava/util/ArrayList<",
            "Lo/MediaSessionCompat$ResultReceiverWrapper;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lo/MediaSessionCompat$ResultReceiverWrapper;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 14859
    sget-object v0, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/postOrRun;

    if-nez v0, :cond_0

    .line 14861
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 14862
    sget-object v1, Lo/fromQueueItem;->postMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    move-object v8, v0

    const-wide v0, 0x7fffffffffffffffL

    .line 712
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 713
    invoke-virtual/range {p4 .. p4}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_e

    move-object/from16 v13, p4

    .line 715
    invoke-virtual {v13, v12}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaSessionCompat$ResultReceiverWrapper;

    move-object/from16 v14, p5

    .line 716
    invoke-virtual {v14, v12}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-eqz v2, :cond_1

    .line 717
    iget-object v5, v2, Lo/MediaSessionCompat$ResultReceiverWrapper;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    if-eqz v3, :cond_2

    .line 720
    iget-object v5, v3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_8

    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    .line 727
    invoke-virtual {v6, v2, v3}, Lo/fromQueueItem;->onPostMessage(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_3

    .line 747
    invoke-virtual {v6, v7, v2, v3}, Lo/fromQueueItem;->onNavigationEvent(Landroid/view/ViewGroup;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_b

    .line 753
    iget-object v15, v3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    .line 754
    invoke-virtual/range {p0 .. p0}, Lo/fromQueueItem;->onNavigationEvent()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 755
    array-length v11, v4

    if-lez v11, :cond_a

    .line 756
    new-instance v11, Lo/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v11, v15}, Lo/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 757
    iget-object v5, v10, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {v5, v15}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-eqz v5, :cond_7

    const/4 v10, 0x0

    .line 759
    :goto_4
    array-length v13, v4

    if-ge v10, v13, :cond_7

    .line 760
    iget-object v13, v11, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 761
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 760
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_4

    :cond_7
    move/from16 v18, v12

    .line 764
    invoke-virtual {v8}, Lo/fromMediaItemList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_9

    .line 15390
    iget-object v10, v8, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v12, v5, 0x1

    aget-object v10, v10, v12

    .line 766
    check-cast v10, Landroid/animation/Animator;

    .line 767
    invoke-virtual {v8, v10}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/fromQueueItem$onPostMessage;

    .line 768
    iget-object v12, v10, Lo/fromQueueItem$onPostMessage;->onMessageChannelReady:Lo/MediaSessionCompat$ResultReceiverWrapper;

    if-eqz v12, :cond_8

    iget-object v12, v10, Lo/fromQueueItem$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    if-ne v12, v15, :cond_8

    iget-object v12, v10, Lo/fromQueueItem$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 16250
    iget-object v13, v6, Lo/fromQueueItem;->asBinder:Ljava/lang/String;

    .line 769
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 770
    iget-object v10, v10, Lo/fromQueueItem$onPostMessage;->onMessageChannelReady:Lo/MediaSessionCompat$ResultReceiverWrapper;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v5, v11

    const/4 v10, 0x0

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    move-object v4, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    const/4 v4, 0x0

    :goto_6
    move-object v5, v4

    move-object/from16 v10, v17

    goto :goto_7

    :cond_b
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 779
    iget-object v4, v2, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_7
    if-eqz v10, :cond_d

    .line 782
    iget-object v4, v6, Lo/fromQueueItem;->onTransact:Lo/getQueueId;

    if-eqz v4, :cond_c

    .line 783
    invoke-virtual {v4, v7, v6, v2, v3}, Lo/getQueueId;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)J

    move-result-wide v2

    .line 784
    iget-object v4, v6, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_c
    move-wide v11, v0

    .line 787
    new-instance v13, Lo/fromQueueItem$onPostMessage;

    .line 17250
    iget-object v2, v6, Lo/fromQueueItem;->asBinder:Ljava/lang/String;

    .line 788
    invoke-static/range {p1 .. p1}, Lo/equals;->ICustomTabsCallback(Landroid/view/View;)Lo/MediaSessionCompat$1$onMessageChannelReady;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lo/fromQueueItem$onPostMessage;-><init>(Landroid/view/View;Ljava/lang/String;Lo/fromQueueItem;Lo/MediaSessionCompat$1$onMessageChannelReady;Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 789
    invoke-virtual {v8, v10, v13}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, v6, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_d
    :goto_8
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 795
    :cond_e
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v11, 0x0

    .line 796
    :goto_9
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_f

    .line 797
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 798
    iget-object v3, v6, Lo/fromQueueItem;->ICustomTabsService$Stub:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 799
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 800
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 5

    .line 2189
    iget-object v0, p0, Lo/fromQueueItem;->onTransact:Lo/getQueueId;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2190
    iget-object v0, p0, Lo/fromQueueItem;->onTransact:Lo/getQueueId;

    invoke-virtual {v0}, Lo/getQueueId;->onNavigationEvent()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2195
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2196
    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 2202
    iget-object v0, p0, Lo/fromQueueItem;->onTransact:Lo/getQueueId;

    invoke-virtual {v0, p1}, Lo/getQueueId;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    :cond_3
    return-void
.end method

.method public onNavigationEvent(Landroid/view/ViewGroup;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onNavigationEvent(J)Lo/fromQueueItem;
    .locals 0

    .line 371
    iput-wide p1, p0, Lo/fromQueueItem;->getInterfaceDescriptor:J

    return-object p0
.end method

.method public onNavigationEvent(Landroid/view/View;)Lo/fromQueueItem;
    .locals 1

    .line 1000
    iget-object v0, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public onNavigationEvent(Lo/fromQueueItem$extraCallback;)V
    .locals 0

    .line 2118
    iput-object p1, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub:Lo/fromQueueItem$extraCallback;

    return-void
.end method

.method public onNavigationEvent(Lo/getQueueId;)V
    .locals 0

    .line 2164
    iput-object p1, p0, Lo/fromQueueItem;->onTransact:Lo/getQueueId;

    return-void
.end method

.method final onNavigationEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1578
    iget-object p1, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p1}, Lo/fromMediaItemList;->clear()V

    .line 1579
    iget-object p1, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1580
    iget-object p1, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback()V

    return-void

    .line 1582
    :cond_0
    iget-object p1, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onMessageChannelReady:Lo/postOrRun;

    invoke-virtual {p1}, Lo/fromMediaItemList;->clear()V

    .line 1583
    iget-object p1, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1584
    iget-object p1, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback()V

    return-void
.end method

.method public onNavigationEvent()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostMessage()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 412
    iget-object v0, p0, Lo/fromQueueItem;->ICustomTabsService:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public onPostMessage(J)Lo/fromQueueItem;
    .locals 0

    .line 344
    iput-wide p1, p0, Lo/fromQueueItem;->onNavigationEvent:J

    return-object p0
.end method

.method final onPostMessage(Landroid/view/View;)Z
    .locals 3

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 837
    iget-object v1, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 842
    :cond_0
    iget-object v1, p0, Lo/fromQueueItem;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/fromQueueItem;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public onPostMessage(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1844
    invoke-virtual {p0}, Lo/fromQueueItem;->onNavigationEvent()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1846
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 1847
    invoke-static {p1, p2, v5}, Lo/fromQueueItem;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1853
    :cond_1
    iget-object v2, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1854
    invoke-static {p1, p2, v3}, Lo/fromQueueItem;->onMessageChannelReady(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method protected final onRelationshipValidationResult()V
    .locals 6

    .line 1958
    iget v0, p0, Lo/fromQueueItem;->mayLaunchUrl:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/fromQueueItem;->mayLaunchUrl:I

    if-nez v0, :cond_9

    .line 1960
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1961
    iget-object v0, p0, Lo/fromQueueItem;->IPostMessageService$Stub:Ljava/util/ArrayList;

    .line 1962
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1963
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1965
    invoke-virtual {v0, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/fromQueueItem$onMessageChannelReady;

    invoke-interface {v5, p0}, Lo/fromQueueItem$onMessageChannelReady;->ICustomTabsCallback(Lo/fromQueueItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1968
    :goto_1
    iget-object v3, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 32327
    iget-boolean v4, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v4, :cond_1

    .line 32328
    invoke-virtual {v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 32331
    :cond_1
    iget v3, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-ge v0, v3, :cond_4

    .line 1969
    iget-object v3, p0, Lo/fromQueueItem;->ICustomTabsCallback$Stub$Proxy:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 32373
    iget-boolean v4, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v4, :cond_2

    .line 32374
    invoke-virtual {v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 32377
    :cond_2
    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 1969
    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1971
    invoke-static {v3, v2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1974
    :goto_2
    iget-object v3, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 33327
    iget-boolean v4, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v4, :cond_5

    .line 33328
    invoke-virtual {v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 33331
    :cond_5
    iget v3, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-ge v0, v3, :cond_8

    .line 1975
    iget-object v3, p0, Lo/fromQueueItem;->warmup:Lo/MediaBrowserCompat$MediaBrowserImplApi23;

    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserImplApi23;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 33373
    iget-boolean v4, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v4, :cond_6

    .line 33374
    invoke-virtual {v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 33377
    :cond_6
    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v3, v3, v0

    .line 1975
    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_7

    .line 1977
    invoke-static {v3, v2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Z)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1980
    :cond_8
    iput-boolean v1, p0, Lo/fromQueueItem;->ICustomTabsService$Stub$Proxy:Z

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2218
    invoke-virtual {p0, v0}, Lo/fromQueueItem;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
