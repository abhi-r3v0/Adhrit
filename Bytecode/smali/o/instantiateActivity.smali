.class public final Lo/instantiateActivity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0086\u0002R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/helpers/ItemsRange;",
        "",
        "first",
        "",
        "count",
        "(II)V",
        "getFirst",
        "()I",
        "last",
        "getLast",
        "contains",
        "",
        "index",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 18000
    invoke-direct {p0, v0}, Lo/instantiateActivity;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    const/4 p1, 0x0

    .line 17008
    invoke-direct {p0, p1, p1}, Lo/instantiateActivity;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 17006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/instantiateActivity;->onPostMessage:I

    iput p2, p0, Lo/instantiateActivity;->onMessageChannelReady:I

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 534
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;

    .line 16019
    iget v1, v1, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;->onNavigationEvent:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 484
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 485
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 489
    rem-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    const-string v2, "\n"

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    .line 15462
    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 491
    :cond_1
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v2, " "

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback([BI)Ljava/lang/String;
    .locals 7

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    .line 1462
    invoke-static {v1, p1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x1

    const/4 v2, 0x1

    .line 56
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, "\n"

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v1}, Lo/instantiateActivity;->ICustomTabsCallback(Ljava/io/ByteArrayInputStream;)Lo/setMinHeight;

    move-result-object v4

    .line 65
    invoke-static {v1}, Lo/instantiateActivity;->onPostMessage(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 67
    invoke-interface {v4}, Lo/setMinHeight;->onPostMessage()[B

    move-result-object v6

    invoke-static {v6}, Lo/instantiateActivity;->onNavigationEvent([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    .line 68
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, p0, [Ljava/lang/Object;

    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v3, "%02x"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -- "

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-interface {v4}, Lo/setMinHeight;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback(Ljava/io/ByteArrayInputStream;)Lo/setMinHeight;
    .locals 0

    .line 46
    invoke-static {p0}, Lo/instantiateActivity;->extraCallback(Ljava/io/ByteArrayInputStream;)[B

    move-result-object p0

    .line 1035
    invoke-static {p0}, Lo/setTag;->extraCallback([B)Lo/setMinHeight;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ICustomTabsCallback([B[Lo/setMinHeight;)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 380
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 382
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_2

    .line 384
    invoke-static {v1}, Lo/instantiateActivity;->onNavigationEvent(Ljava/io/ByteArrayInputStream;)Lo/getTintListFromCache$ICustomTabsCallback;

    move-result-object p0

    .line 8052
    iget-object v2, p0, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    .line 385
    invoke-static {p1, v2}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8090
    iget-object p0, p0, Lo/getTintListFromCache$ICustomTabsCallback;->onMessageChannelReady:[B

    return-object p0

    .line 9052
    :cond_1
    iget-object v2, p0, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    .line 387
    invoke-interface {v2}, Lo/setMinHeight;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9090
    iget-object p0, p0, Lo/getTintListFromCache$ICustomTabsCallback;->onMessageChannelReady:[B

    .line 388
    invoke-static {p0, p1}, Lo/instantiateActivity;->ICustomTabsCallback([B[Lo/setMinHeight;)[B

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static extraCallback([BI)Ljava/lang/String;
    .locals 10

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 404
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_9

    const-string p0, "\n"

    .line 405
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    const-string v3, " -- "

    const/4 v4, 0x2

    const-string v5, ""

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    .line 407
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    new-array v6, v4, [B

    .line 410
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 413
    :goto_1
    invoke-static {v6}, Lo/setReferencedIds;->onPostMessage([B)Lo/setReferencedIds;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9462
    invoke-static {v5, v2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 415
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {v6}, Lo/extraCallback$ICustomTabsCallback;->extraCallback([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10221
    iget-object p0, v7, Lo/setReferencedIds;->ICustomTabsCallback:Ljava/lang/String;

    .line 417
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 10462
    :cond_1
    invoke-static {v5, p1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-static {v1}, Lo/instantiateActivity;->onNavigationEvent(Ljava/io/ByteArrayInputStream;)Lo/getTintListFromCache$ICustomTabsCallback;

    move-result-object v2

    .line 11128
    iget-object v6, v2, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    invoke-interface {v6}, Lo/setMinHeight;->onPostMessage()[B

    move-result-object v6

    .line 12071
    iget-object v7, v2, Lo/getTintListFromCache$ICustomTabsCallback;->onPostMessage:[B

    .line 12090
    iget-object v8, v2, Lo/getTintListFromCache$ICustomTabsCallback;->onMessageChannelReady:[B

    .line 13052
    iget-object v2, v2, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    .line 433
    invoke-static {v6}, Lo/instantiateActivity;->onNavigationEvent([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    .line 434
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {v7}, Lo/instantiateActivity;->onNavigationEvent([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-interface {v2}, Lo/setMinHeight;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    array-length v3, v7

    array-length v6, v6

    add-int/2addr v3, v6

    const/4 v6, 0x3

    mul-int/lit8 v3, v3, 0x3

    .line 441
    invoke-interface {v2}, Lo/setMinHeight;->extraCallback()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/2addr v3, p1

    .line 444
    invoke-static {v8, v3}, Lo/instantiateActivity;->extraCallback([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 446
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {v2}, Lo/setMinHeight;->ICustomTabsCallback()Lo/setType;

    move-result-object p0

    sget-object v7, Lo/setType;->extraCallback:Lo/setType;

    if-ne p0, v7, :cond_3

    add-int/2addr v3, p1

    .line 448
    invoke-static {v8, v3}, Lo/instantiateActivity;->ICustomTabsCallback([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    add-int/2addr v3, p1

    .line 13462
    invoke-static {v5, v3}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 450
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {v8}, Lo/extraCallback$ICustomTabsCallback;->onMessageChannelReady([B)Ljava/lang/String;

    move-result-object p0

    .line 13466
    invoke-static {p0, v3}, Lo/instantiateActivity;->ICustomTabsCallback(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 451
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    .line 452
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14247
    sget-object v3, Lo/instantiateActivity$4;->onPostMessage:[I

    invoke-interface {v2}, Lo/setMinHeight;->ICustomTabsCallback()Lo/setType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const-string v7, "="

    if-eq v2, v3, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v6, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    goto :goto_3

    .line 14259
    :cond_4
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_5

    goto :goto_2

    .line 14502
    :cond_5
    array-length v2, v8

    invoke-static {v8, v2}, Lo/instantiateActivity;->onPostMessage([BI)Ljava/lang/String;

    move-result-object v5

    .line 14260
    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v2, "BINARY"

    .line 14256
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v2, "NUMERIC"

    .line 14253
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 14249
    :cond_8
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14250
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14269
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 453
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 454
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 458
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 282
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 284
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_1

    .line 285
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    const/4 v2, 0x2

    if-lt p0, v2, :cond_0

    .line 289
    invoke-static {v1}, Lo/instantiateActivity;->extraCallback(Ljava/io/ByteArrayInputStream;)[B

    move-result-object p0

    .line 6035
    invoke-static {p0}, Lo/setTag;->extraCallback([B)Lo/setMinHeight;

    move-result-object p0

    .line 290
    invoke-static {v1}, Lo/instantiateActivity;->onPostMessage(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 292
    new-instance v3, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;

    invoke-direct {v3, p0, v2}, Lo/ScrollingTabContainerView$VisibilityAnimListener$onMessageChannelReady;-><init>(Lo/setMinHeight;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_0
    new-instance p0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Data length < 2 : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method private static extraCallback(Ljava/io/ByteArrayInputStream;)[B
    .locals 6

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v2, 0x1f

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_3

    int-to-byte v1, v1

    .line 92
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_0

    and-int/lit8 v1, v1, 0x7f

    if-eqz v1, :cond_3

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent([B)Ljava/lang/String;
    .locals 1

    const-string v0, "%02x"

    .line 15125
    invoke-static {p0, v0}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 478
    invoke-static {p0, v0}, Lo/instantiateActivity;->ICustomTabsCallback(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/io/ByteArrayInputStream;)Lo/getTintListFromCache$ICustomTabsCallback;
    .locals 8

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const-string v1, "Error parsing data. Available bytes < 2 . Length="

    const/4 v2, 0x2

    if-lt v0, v2, :cond_c

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 147
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    :goto_0
    int-to-byte v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    if-eq v4, v5, :cond_0

    if-nez v4, :cond_1

    .line 151
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 152
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 157
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lt v3, v2, :cond_b

    .line 161
    invoke-static {p0}, Lo/instantiateActivity;->extraCallback(Ljava/io/ByteArrayInputStream;)[B

    move-result-object v1

    .line 165
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 166
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 169
    invoke-static {p0}, Lo/instantiateActivity;->onPostMessage(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 171
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 172
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    sub-int/2addr v2, v4

    .line 173
    new-array v4, v2, [B

    if-lez v2, :cond_a

    const/4 v6, 0x4

    if-gt v2, v6, :cond_a

    .line 179
    invoke-virtual {p0, v4, v0, v2}, Ljava/io/InputStream;->read([BII)I

    .line 4049
    invoke-static {v4, v2}, Lo/extraCallback$ICustomTabsCallback;->ICustomTabsCallback([BI)I

    move-result v2

    .line 5035
    invoke-static {v1}, Lo/setTag;->extraCallback([B)Lo/setMinHeight;

    move-result-object v1

    const/16 v6, 0x80

    const/4 v7, 0x1

    if-ne v2, v6, :cond_5

    .line 190
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v7

    .line 196
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    if-ltz v6, :cond_4

    if-nez v3, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, -0x2

    .line 207
    new-array v2, v3, [B

    .line 208
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 209
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    goto :goto_4

    :cond_3
    :goto_2
    move v3, v6

    goto :goto_1

    .line 198
    :cond_4
    new-instance v0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing data. TLV length byte indicated indefinite length, but EOS was reached before 0x0000 was found"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-ge v2, v3, :cond_7

    .line 213
    new-instance v0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length byte(s) indicated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value bytes, but only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    if-le p0, v7, :cond_6

    const-string p0, "are"

    goto :goto_3

    :cond_6
    const-string p0, "is"

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " available"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_7
    new-array v2, v3, [B

    .line 218
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    .line 222
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 223
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    :goto_5
    int-to-byte v7, v6

    if-eq v6, v5, :cond_9

    if-eq v7, v5, :cond_8

    if-nez v7, :cond_9

    .line 226
    :cond_8
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 227
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v6

    goto :goto_5

    .line 230
    :cond_9
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 232
    new-instance p0, Lo/getTintListFromCache$ICustomTabsCallback;

    invoke-direct {p0, v1, v3, v4, v2}, Lo/getTintListFromCache$ICustomTabsCallback;-><init>(Lo/setMinHeight;I[B[B)V

    return-object p0

    .line 176
    :cond_a
    new-instance p0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of length bytes must be from 1 to 4. Found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_b
    new-instance v0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_c
    new-instance v0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static onPostMessage(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    .line 106
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 124
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_0
    new-instance p0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    const-string v0, "EOS when reading length bytes"

    invoke-direct {p0, v0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 109
    :cond_3
    new-instance p0, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Negative length: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dreamplug/androidapp/utils/creditCardNfcReader/exception/TlvException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage([BI)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 509
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_3

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 515
    aget-byte v2, p0, v1

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    aget-byte v2, p0, v1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 516
    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "."

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 510
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startPos(0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ")+length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > byteArray.length("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs onPostMessage([B[Lo/setMinHeight;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lo/setMinHeight;",
            ")",
            "Ljava/util/List<",
            "Lo/getTintListFromCache$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 353
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_2

    .line 355
    invoke-static {v1}, Lo/instantiateActivity;->onNavigationEvent(Ljava/io/ByteArrayInputStream;)Lo/getTintListFromCache$ICustomTabsCallback;

    move-result-object p0

    .line 6052
    iget-object v2, p0, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    .line 356
    invoke-static {p1, v2}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7052
    :cond_1
    iget-object v2, p0, Lo/getTintListFromCache$ICustomTabsCallback;->extraCallback:Lo/setMinHeight;

    .line 358
    invoke-interface {v2}, Lo/setMinHeight;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7090
    iget-object p0, p0, Lo/getTintListFromCache$ICustomTabsCallback;->onMessageChannelReady:[B

    .line 359
    invoke-static {p0, p1}, Lo/instantiateActivity;->onPostMessage([B[Lo/setMinHeight;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
