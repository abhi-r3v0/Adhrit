.class public abstract Lo/HeaderDataJsonAdapter;
.super Lo/InstrumentViewMapping;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HeaderDataJsonAdapter$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private extraCallback:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/InstrumentViewMapping;-><init>()V

    return-void
.end method

.method private static extraCallback(Lo/MandatoryFields;Lo/getJuspayUpi;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 480
    iget v0, p1, Lo/getJuspayUpi;->ICustomTabsCallback:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 481
    :goto_0
    iget v2, p1, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_0

    .line 482
    invoke-virtual {p1, v1}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v2

    invoke-interface {p0, v2}, Lo/MandatoryFields;->extraCallback(Lo/p$a;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static extraCallback([Lo/MandatoryFields;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 498
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 500
    aget-object v3, p0, v2

    invoke-interface {v3}, Lo/MandatoryFields;->ICustomTabsCallback$Stub$Proxy()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static onPostMessage([Lo/MandatoryFields;Lo/getJuspayUpi;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 448
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 450
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 451
    aget-object v4, p0, v2

    const/4 v5, 0x0

    .line 452
    :goto_1
    iget v6, p1, Lo/getJuspayUpi;->ICustomTabsCallback:I

    if-ge v5, v6, :cond_2

    .line 453
    invoke-virtual {p1, v5}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v6

    invoke-interface {v4, v6}, Lo/MandatoryFields;->extraCallback(Lo/p$a;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-le v6, v3, :cond_1

    const/4 v0, 0x4

    if-ne v6, v0, :cond_0

    return v2

    :cond_0
    move v0, v2

    move v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public final extraCallback([Lo/MandatoryFields;Lo/JuspaySessionToken;Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/t;)Lo/OfferJsonAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 342
    array-length p3, p1

    add-int/lit8 p3, p3, 0x1

    new-array p3, p3, [I

    .line 343
    array-length p4, p1

    add-int/lit8 p4, p4, 0x1

    new-array v0, p4, [[Lo/getJuspayUpi;

    .line 344
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [[[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_0

    .line 346
    iget v4, p2, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    new-array v4, v4, [Lo/getJuspayUpi;

    aput-object v4, v0, v3

    .line 347
    iget v4, p2, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    new-array v4, v4, [[I

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {p1}, Lo/HeaderDataJsonAdapter;->extraCallback([Lo/MandatoryFields;)[I

    move-result-object p4

    const/4 v3, 0x0

    .line 356
    :goto_1
    iget v4, p2, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    if-ge v3, v4, :cond_2

    .line 357
    invoke-virtual {p2, v3}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v4

    .line 359
    invoke-static {p1, v4}, Lo/HeaderDataJsonAdapter;->onPostMessage([Lo/MandatoryFields;Lo/getJuspayUpi;)I

    move-result v5

    .line 361
    array-length v6, p1

    if-ne v5, v6, :cond_1

    iget v6, v4, Lo/getJuspayUpi;->ICustomTabsCallback:I

    new-array v6, v6, [I

    goto :goto_2

    :cond_1
    aget-object v6, p1, v5

    .line 362
    invoke-static {v6, v4}, Lo/HeaderDataJsonAdapter;->extraCallback(Lo/MandatoryFields;Lo/getJuspayUpi;)[I

    move-result-object v6

    .line 364
    :goto_2
    aget v7, p3, v5

    .line 365
    aget-object v8, v0, v5

    aput-object v4, v8, v7

    .line 366
    aget-object v4, v1, v5

    aput-object v6, v4, v7

    .line 367
    aget v4, p3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, p3, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 371
    :cond_2
    array-length p2, p1

    new-array v4, p2, [Lo/JuspaySessionToken;

    .line 372
    array-length p2, p1

    new-array v3, p2, [I

    .line 373
    :goto_3
    array-length p2, p1

    if-ge v2, p2, :cond_3

    .line 374
    aget p2, p3, v2

    .line 375
    new-instance v5, Lo/JuspaySessionToken;

    aget-object v6, v0, v2

    .line 377
    invoke-static {v6, p2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lo/getJuspayUpi;

    invoke-direct {v5, v6}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    aput-object v5, v4, v2

    .line 378
    aget-object v5, v1, v2

    .line 379
    invoke-static {v5, p2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    aput-object p2, v1, v2

    .line 380
    aget-object p2, p1, v2

    invoke-interface {p2}, Lo/MandatoryFields;->extraCallback()I

    move-result p2

    aput p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 384
    :cond_3
    array-length p2, p1

    aget p2, p3, p2

    .line 385
    new-instance v7, Lo/JuspaySessionToken;

    array-length p1, p1

    aget-object p1, v0, p1

    .line 387
    invoke-static {p1, p2}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/getJuspayUpi;

    invoke-direct {v7, p1}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    .line 391
    new-instance p1, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    move-object v2, p1

    move-object v5, p4

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;-><init>([I[Lo/JuspaySessionToken;[I[[[ILo/JuspaySessionToken;)V

    .line 400
    invoke-virtual {p0, p1, v1, p4}, Lo/HeaderDataJsonAdapter;->onNavigationEvent(Lo/HeaderDataJsonAdapter$ICustomTabsCallback;[[[I[I)Landroid/util/Pair;

    move-result-object p2

    .line 402
    new-instance p3, Lo/OfferJsonAdapter;

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, [Lo/Payload;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [Lo/InstrumentView;

    invoke-direct {p3, p4, p2, p1}, Lo/OfferJsonAdapter;-><init>([Lo/Payload;[Lo/InstrumentView;Ljava/lang/Object;)V

    return-object p3
.end method

.method protected abstract onNavigationEvent(Lo/HeaderDataJsonAdapter$ICustomTabsCallback;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/HeaderDataJsonAdapter$ICustomTabsCallback;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lo/Payload;",
            "[",
            "Lo/InstrumentView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 329
    check-cast p1, Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    iput-object p1, p0, Lo/HeaderDataJsonAdapter;->extraCallback:Lo/HeaderDataJsonAdapter$ICustomTabsCallback;

    return-void
.end method
