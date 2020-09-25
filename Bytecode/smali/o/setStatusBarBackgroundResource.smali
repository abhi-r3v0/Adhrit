.class public Lo/setStatusBarBackgroundResource;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:[B

.field public static final extraCallback:Lo/currentHashLength;

.field public static final onMessageChannelReady:[B


# instance fields
.field public asInterface:Lo/setGuidelineEnd;

.field public onNavigationEvent:Z

.field public onPostMessage:Lo/setStatusBarBackground;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lo/setStatusBarBackgroundResource;

    invoke-static {v0}, Lo/appendKey;->onPostMessage(Ljava/lang/Class;)Lo/currentHashLength;

    move-result-object v0

    sput-object v0, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v0, "2PAY.SYS.DDF01"

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lo/setStatusBarBackgroundResource;->onMessageChannelReady:[B

    const-string v0, "1PAY.SYS.DDF01"

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lo/setStatusBarBackgroundResource;->ICustomTabsCallback:[B

    return-void
.end method

.method public constructor <init>(Lo/setStatusBarBackground;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lo/setStatusBarBackgroundResource;->onNavigationEvent:Z

    .line 91
    new-instance p1, Lo/setGuidelineEnd;

    invoke-direct {p1}, Lo/setGuidelineEnd;-><init>()V

    iput-object p1, p0, Lo/setStatusBarBackgroundResource;->asInterface:Lo/setGuidelineEnd;

    return-void
.end method

.method private ICustomTabsCallback()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    .line 130
    sget-object v0, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v0}, Lo/currentHashLength;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v1, "Get Left PIN try"

    invoke-interface {v0, v1}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v1, Lo/setSelectedTextTypeface;

    sget-object v2, Lo/setAllowsGoneWidget;->onPostMessage:Lo/setAllowsGoneWidget;

    const/16 v3, 0x9f

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;III)V

    invoke-virtual {v1}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v0

    .line 1027
    sget-object v1, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Lo/setMinHeight;

    .line 137
    sget-object v2, Lo/setTag;->warmup:Lo/setMinHeight;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 1049
    array-length v1, v0

    invoke-static {v0, v1}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback([BI)I

    move-result v0

    goto :goto_0

    .line 1047
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'byteArray\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/values;
    .locals 2

    .line 326
    invoke-static {p0}, Lo/values;->ICustomTabsCallback(Ljava/lang/String;)Lo/values;

    move-result-object p0

    .line 328
    sget-object v0, Lo/values;->onTransact:Lo/values;

    if-ne p0, v0, :cond_0

    .line 329
    invoke-static {p1}, Lo/values;->extraCallback(Ljava/lang/String;)Lo/values;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 331
    sget-object p1, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Real type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5106
    iget-object v1, p0, Lo/values;->INotificationSideChannel$Default:Ljava/lang/String;

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private ICustomTabsCallback([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    .line 278
    sget-object v0, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v0}, Lo/currentHashLength;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    sget-object v0, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Select AID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lo/extraCallback$ICustomTabsCallback;->extraCallback([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v1, Lo/setSelectedTextTypeface;

    sget-object v2, Lo/setAllowsGoneWidget;->ICustomTabsCallback:Lo/setAllowsGoneWidget;

    invoke-direct {v1, v2, p1}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;[B)V

    invoke-virtual {v1}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object p1

    return-object p1
.end method

.method private extraCallback()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    sget-object v1, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v1}, Lo/currentHashLength;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    sget-object v1, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v2, "GET log format"

    invoke-interface {v1, v2}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 439
    :cond_0
    iget-object v1, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v2, Lo/setSelectedTextTypeface;

    sget-object v3, Lo/setAllowsGoneWidget;->onPostMessage:Lo/setAllowsGoneWidget;

    const/16 v4, 0x9f

    const/16 v5, 0x4f

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;III)V

    invoke-virtual {v2}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v1

    .line 11027
    sget-object v2, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lo/setMinHeight;

    .line 441
    sget-object v2, Lo/setTag;->ICustomTabsService$Stub$Proxy:Lo/setMinHeight;

    aput-object v2, v0, v6

    invoke-static {v1, v0}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v0

    invoke-static {v0}, Lo/instantiateActivity;->extraCallback([B)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private extraCallback([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lo/setGuidelineBegin;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 456
    invoke-direct {p0}, Lo/setStatusBarBackgroundResource;->extraCallback()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 458
    :goto_0
    aget-byte v4, p1, v2

    if-gt v3, v4, :cond_3

    .line 459
    iget-object v4, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v5, Lo/setSelectedTextTypeface;

    sget-object v6, Lo/setAllowsGoneWidget;->onNavigationEvent:Lo/setAllowsGoneWidget;

    const/4 v7, 0x0

    aget-byte v8, p1, v7

    shl-int/lit8 v8, v8, 0x3

    or-int/lit8 v8, v8, 0x4

    invoke-direct {v5, v6, v3, v8, v7}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;III)V

    invoke-virtual {v5}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v4

    .line 12027
    sget-object v5, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {v4, v5}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 462
    new-instance v5, Lo/setGuidelineBegin;

    invoke-direct {v5}, Lo/setGuidelineBegin;-><init>()V

    .line 463
    invoke-virtual {v5, v4, v1}, Lo/CoreComponentFactory;->onMessageChannelReady([BLjava/util/List;)V

    .line 12072
    iget-object v4, v5, Lo/setGuidelineBegin;->onNavigationEvent:Ljava/lang/Float;

    .line 466
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const v6, 0x4eb2d05e    # 1.5E9f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    .line 13072
    iget-object v4, v5, Lo/setGuidelineBegin;->onNavigationEvent:Ljava/lang/Float;

    .line 467
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 13118
    iput-object v4, v5, Lo/setGuidelineBegin;->onNavigationEvent:Ljava/lang/Float;

    .line 14072
    :cond_0
    iget-object v4, v5, Lo/setGuidelineBegin;->onNavigationEvent:Ljava/lang/Float;

    if-eqz v4, :cond_2

    .line 15072
    iget-object v4, v5, Lo/setGuidelineBegin;->onNavigationEvent:Ljava/lang/Float;

    .line 471
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    .line 15090
    iget-object v4, v5, Lo/setGuidelineBegin;->ICustomTabsCallback:Lo/CoordinatorLayout;

    if-nez v4, :cond_1

    .line 478
    sget-object v4, Lo/CoordinatorLayout;->extraCallback:Lo/CoordinatorLayout;

    .line 15148
    iput-object v4, v5, Lo/setGuidelineBegin;->ICustomTabsCallback:Lo/CoordinatorLayout;

    .line 480
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static extraCallback([BLo/setStatusBarBackground;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    .line 541
    invoke-static {p0}, Lo/instantiateActivity;->extraCallback([B)Ljava/util/List;

    move-result-object p0

    .line 542
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 544
    :try_start_0
    sget-object v1, Lo/setTag;->onRelationshipValidationResult:Lo/setMinHeight;

    invoke-interface {v1}, Lo/setMinHeight;->onPostMessage()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 546
    invoke-static {p0}, Lo/instantiateActivity;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 548
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;

    .line 549
    invoke-static {v1}, Lo/setMinWidth;->onNavigationEvent(Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 553
    sget-object v1, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Construct GPO Command:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lo/currentHashLength;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    :cond_0
    new-instance p0, Lo/setSelectedTextTypeface;

    sget-object v1, Lo/setAllowsGoneWidget;->onMessageChannelReady:Lo/setAllowsGoneWidget;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;[B)V

    invoke-virtual {p0}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object p0

    invoke-interface {p1, p0}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady([B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lo/setMinHeight;

    .line 241
    sget-object v2, Lo/setTag;->onPostMessage:Lo/setMinHeight;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/setTag;->cancel:Lo/setMinHeight;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lo/instantiateActivity;->onPostMessage([B[Lo/setMinHeight;)Ljava/util/List;

    move-result-object p0

    .line 242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTintListFromCache$ICustomTabsCallback;

    .line 1052
    iget-object v2, v1, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    .line 243
    sget-object v4, Lo/setTag;->cancel:Lo/setMinHeight;

    if-ne v2, v4, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1090
    iget-object v1, v1, Lo/getTintListFromCache$ICustomTabsCallback;->onMessageChannelReady:[B

    .line 244
    invoke-static {v2, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2090
    :cond_0
    iget-object v1, v1, Lo/getTintListFromCache$ICustomTabsCallback;->onMessageChannelReady:[B

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static onNavigationEvent([B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lo/applyThumbTint$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 501
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    const/4 v2, 0x4

    if-lt p0, v2, :cond_0

    .line 502
    new-instance p0, Lo/applyThumbTint$ICustomTabsCallback;

    invoke-direct {p0}, Lo/applyThumbTint$ICustomTabsCallback;-><init>()V

    .line 503
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    shr-int/lit8 v2, v2, 0x3

    .line 16045
    iput v2, p0, Lo/applyThumbTint$ICustomTabsCallback;->onPostMessage:I

    .line 504
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 16064
    iput v2, p0, Lo/applyThumbTint$ICustomTabsCallback;->extraCallback:I

    .line 505
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 16083
    iput v2, p0, Lo/applyThumbTint$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 506
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 507
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private onNavigationEvent([BLo/setStatusBarBackground;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lo/setMinHeight;

    .line 5345
    sget-object v1, Lo/setTag;->IPostMessageService$Stub:Lo/setMinHeight;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/setTag;->ICustomTabsService$Stub:Lo/setMinHeight;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v0

    new-array v1, v3, [Lo/setMinHeight;

    .line 356
    sget-object v4, Lo/setTag;->mayLaunchUrl:Lo/setMinHeight;

    aput-object v4, v1, v2

    invoke-static {p1, v1}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object p1

    .line 358
    invoke-static {p1, p2}, Lo/setStatusBarBackgroundResource;->extraCallback([BLo/setStatusBarBackground;)[B

    move-result-object p1

    .line 6027
    sget-object v1, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 362
    invoke-static {p1, p2}, Lo/setStatusBarBackgroundResource;->extraCallback([BLo/setStatusBarBackground;)[B

    move-result-object p1

    .line 7027
    sget-object p2, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result p2

    if-nez p2, :cond_0

    return v2

    .line 370
    :cond_0
    invoke-direct {p0, p1}, Lo/setStatusBarBackgroundResource;->onPostMessage([B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 373
    invoke-direct {p0, v0}, Lo/setStatusBarBackgroundResource;->extraCallback([B)Ljava/util/List;

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private onPostMessage([B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lo/setMinHeight;

    .line 389
    sget-object v2, Lo/setTag;->ICustomTabsCallback$Stub:Lo/setMinHeight;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    .line 391
    array-length v2, v1

    invoke-static {v1, p1, v2}, Lorg/apache/commons/lang3/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_0

    .line 393
    :cond_0
    iget-object v2, p0, Lo/setStatusBarBackgroundResource;->asInterface:Lo/setGuidelineEnd;

    invoke-static {v2, p1}, Lo/instantiateService;->extraCallback(Lo/setGuidelineEnd;[B)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v1, v0, [Lo/setMinHeight;

    .line 395
    sget-object v4, Lo/setTag;->asBinder:Lo/setMinHeight;

    aput-object v4, v1, v3

    invoke-static {p1, v1}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v1

    goto :goto_0

    .line 397
    :cond_1
    invoke-direct {p0, p1}, Lo/setStatusBarBackgroundResource;->onTransact([B)V

    :goto_0
    if-eqz v1, :cond_5

    .line 403
    invoke-static {v1}, Lo/setStatusBarBackgroundResource;->onNavigationEvent([B)Ljava/util/List;

    move-result-object p1

    .line 405
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/applyThumbTint$ICustomTabsCallback;

    .line 7054
    iget v4, v1, Lo/applyThumbTint$ICustomTabsCallback;->extraCallback:I

    .line 7073
    :goto_1
    iget v5, v1, Lo/applyThumbTint$ICustomTabsCallback;->ICustomTabsCallback:I

    if-gt v4, v5, :cond_2

    .line 408
    iget-object v5, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v6, Lo/setSelectedTextTypeface;

    sget-object v7, Lo/setAllowsGoneWidget;->onNavigationEvent:Lo/setAllowsGoneWidget;

    .line 8035
    iget v8, v1, Lo/applyThumbTint$ICustomTabsCallback;->onPostMessage:I

    shl-int/lit8 v8, v8, 0x3

    or-int/lit8 v8, v8, 0x4

    .line 408
    invoke-direct {v6, v7, v4, v8, v3}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;III)V

    invoke-virtual {v6}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v5

    .line 409
    sget-object v6, Lo/setReferencedIds;->onPostMessage:Lo/setReferencedIds;

    invoke-static {v5, v6}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 410
    iget-object v6, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    new-instance v7, Lo/setSelectedTextTypeface;

    sget-object v8, Lo/setAllowsGoneWidget;->onNavigationEvent:Lo/setAllowsGoneWidget;

    .line 9035
    iget v9, v1, Lo/applyThumbTint$ICustomTabsCallback;->onPostMessage:I

    shl-int/lit8 v9, v9, 0x3

    or-int/lit8 v9, v9, 0x4

    .line 410
    array-length v10, v5

    sub-int/2addr v10, v0

    aget-byte v5, v5, v10

    invoke-direct {v7, v8, v4, v9, v5}, Lo/setSelectedTextTypeface;-><init>(Lo/setAllowsGoneWidget;III)V

    .line 411
    invoke-virtual {v7}, Lo/setSelectedTextTypeface;->onNavigationEvent()[B

    move-result-object v5

    .line 410
    invoke-interface {v6, v5}, Lo/setStatusBarBackground;->onNavigationEvent([B)[B

    move-result-object v5

    .line 10027
    :cond_3
    sget-object v6, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {v5, v6}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    invoke-direct {p0, v5}, Lo/setStatusBarBackgroundResource;->onTransact([B)V

    .line 417
    iget-object v6, p0, Lo/setStatusBarBackgroundResource;->asInterface:Lo/setGuidelineEnd;

    invoke-static {v6, v5}, Lo/instantiateService;->extraCallback(Lo/setGuidelineEnd;[B)Z

    move-result v5

    if-eqz v5, :cond_4

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method private onTransact([B)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lo/setMinHeight;

    .line 520
    sget-object v2, Lo/setTag;->getInterfaceDescriptor:Lo/setMinHeight;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 522
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-static {p1, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 523
    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 524
    iget-object v1, p0, Lo/setStatusBarBackgroundResource;->asInterface:Lo/setGuidelineEnd;

    aget-object v2, p1, v3

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16133
    iput-object v2, v1, Lo/setGuidelineEnd;->onNavigationEvent:Ljava/lang/String;

    .line 525
    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onNavigationEvent()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    .line 256
    sget-object v0, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v0}, Lo/currentHashLength;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    const-string v1, "Try to read card with AID"

    invoke-interface {v0, v1}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-static {}, Lo/values;->values()[Lo/values;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 2158
    iget-object v5, v4, Lo/values;->INotificationSideChannel:[[B

    .line 261
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 3106
    iget-object v9, v4, Lo/values;->INotificationSideChannel$Default:Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v8, v9}, Lo/setStatusBarBackgroundResource;->onPostMessage([BLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-void

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPostMessage([BLjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/CommunicationException;
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lo/setStatusBarBackgroundResource;->ICustomTabsCallback([B)[B

    move-result-object p1

    .line 4027
    sget-object v0, Lo/setReferencedIds;->extraCallback:Lo/setReferencedIds;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent([BLo/setReferencedIds;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lo/setStatusBarBackgroundResource;->onPostMessage:Lo/setStatusBarBackground;

    invoke-direct {p0, p1, v0}, Lo/setStatusBarBackgroundResource;->onNavigationEvent([BLo/setStatusBarBackground;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Lo/setMinHeight;

    .line 303
    sget-object v3, Lo/setTag;->onMessageChannelReady:Lo/setMinHeight;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object p1

    const-string v1, "%02x"

    .line 4125
    invoke-static {p1, v1}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    sget-object v1, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    invoke-interface {v1}, Lo/currentHashLength;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Lo/setStatusBarBackgroundResource;->extraCallback:Lo/currentHashLength;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application label:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with Aid:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object p2, p0, Lo/setStatusBarBackgroundResource;->asInterface:Lo/setGuidelineEnd;

    .line 4142
    iget-object v1, p2, Lo/setGuidelineEnd;->extraCallback:Ljava/lang/String;

    .line 308
    invoke-static {p1, v1}, Lo/setStatusBarBackgroundResource;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/values;

    move-result-object p1

    .line 4209
    iput-object p1, p2, Lo/setGuidelineEnd;->onPostMessage:Lo/values;

    .line 310
    invoke-direct {p0}, Lo/setStatusBarBackgroundResource;->ICustomTabsCallback()I

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method
