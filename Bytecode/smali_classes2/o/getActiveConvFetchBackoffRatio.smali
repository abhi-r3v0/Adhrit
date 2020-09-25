.class final Lo/getActiveConvFetchBackoffRatio;
.super Lo/setSessionTimeoutInterval;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setSessionTimeoutInterval<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final onPostMessage:Lo/setSessionTimeoutInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setSessionTimeoutInterval<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient ICustomTabsCallback:Ljava/lang/Object;

.field private final transient onMessageChannelReady:I

.field private final transient onNavigationEvent:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 135
    new-instance v0, Lo/getActiveConvFetchBackoffRatio;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lo/getActiveConvFetchBackoffRatio;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lo/getActiveConvFetchBackoffRatio;->onPostMessage:Lo/setSessionTimeoutInterval;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lo/setSessionTimeoutInterval;-><init>()V

    .line 84
    iput-object p1, p0, Lo/getActiveConvFetchBackoffRatio;->ICustomTabsCallback:Ljava/lang/Object;

    .line 85
    iput-object p2, p0, Lo/getActiveConvFetchBackoffRatio;->onNavigationEvent:[Ljava/lang/Object;

    .line 86
    iput p3, p0, Lo/getActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    return-void
.end method

.method private static extraCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static onMessageChannelReady(I[Ljava/lang/Object;)Lo/getActiveConvFetchBackoffRatio;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lo/getActiveConvFetchBackoffRatio<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lo/getActiveConvFetchBackoffRatio;->onPostMessage:Lo/setSessionTimeoutInterval;

    check-cast p0, Lo/getActiveConvFetchBackoffRatio;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 4
    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lo/cc;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance p0, Lo/getActiveConvFetchBackoffRatio;

    invoke-direct {p0, v0, p1, v2}, Lo/getActiveConvFetchBackoffRatio;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 6
    :cond_1
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lo/gw;->extraCallback(II)I

    const/4 v3, 0x2

    .line 8
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const v4, 0x2ccccccc

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, -0x1

    .line 10
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    shl-int/2addr v4, v2

    move v5, v4

    :goto_0
    int-to-double v6, v5

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double v6, v6, v8

    int-to-double v8, v3

    cmpg-double v4, v6, v8

    if-gez v4, :cond_4

    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ge v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_f

    :cond_4
    if-ne p0, v2, :cond_5

    .line 21
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lo/cc;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v0, v5, -0x1

    const/16 v2, 0x80

    const/4 v3, -0x1

    if-gt v5, v2, :cond_9

    .line 25
    new-array v2, v5, [B

    .line 26
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_2
    if-ge v1, p0, :cond_8

    mul-int/lit8 v3, v1, 0x2

    .line 29
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 30
    aget-object v5, p1, v5

    .line 31
    invoke-static {v4, v5}, Lo/cc;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lo/setRemoteConfigFetchInterval;->onMessageChannelReady(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v0

    .line 34
    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_6

    int-to-byte v3, v3

    .line 36
    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 38
    :cond_6
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 39
    :cond_7
    invoke-static {v4, v5, p1, v7}, Lo/getActiveConvFetchBackoffRatio;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    move-object v0, v2

    goto/16 :goto_8

    :cond_9
    const v2, 0x8000

    if-gt v5, v2, :cond_c

    .line 44
    new-array v2, v5, [S

    .line 45
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([SS)V

    :goto_4
    if-ge v1, p0, :cond_8

    mul-int/lit8 v3, v1, 0x2

    .line 48
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 49
    aget-object v5, p1, v5

    .line 50
    invoke-static {v4, v5}, Lo/cc;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lo/setRemoteConfigFetchInterval;->onMessageChannelReady(I)I

    move-result v6

    :goto_5
    and-int/2addr v6, v0

    .line 53
    aget-short v7, v2, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_a

    int-to-short v3, v3

    .line 55
    aput-short v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 57
    :cond_a
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 58
    :cond_b
    invoke-static {v4, v5, p1, v7}, Lo/getActiveConvFetchBackoffRatio;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 62
    :cond_c
    new-array v2, v5, [I

    .line 63
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :goto_6
    if-ge v1, p0, :cond_8

    mul-int/lit8 v4, v1, 0x2

    .line 66
    aget-object v5, p1, v4

    xor-int/lit8 v6, v4, 0x1

    .line 67
    aget-object v6, p1, v6

    .line 68
    invoke-static {v5, v6}, Lo/cc;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lo/setRemoteConfigFetchInterval;->onMessageChannelReady(I)I

    move-result v7

    :goto_7
    and-int/2addr v7, v0

    .line 71
    aget v8, v2, v7

    if-ne v8, v3, :cond_d

    .line 73
    aput v4, v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 75
    :cond_d
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 76
    :cond_e
    invoke-static {v5, v6, p1, v8}, Lo/getActiveConvFetchBackoffRatio;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 81
    :goto_8
    new-instance v1, Lo/getActiveConvFetchBackoffRatio;

    invoke-direct {v1, v0, p1, p0}, Lo/getActiveConvFetchBackoffRatio;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1

    .line 16
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "collection too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/getResponseTimeExpectationsFetchInterval;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getResponseTimeExpectationsFetchInterval<",
            "TK;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lo/setActiveConvMaxFetchInterval;

    iget-object v1, p0, Lo/getActiveConvFetchBackoffRatio;->onNavigationEvent:[Ljava/lang/Object;

    iget v2, p0, Lo/getActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lo/setActiveConvMaxFetchInterval;-><init>([Ljava/lang/Object;II)V

    .line 133
    new-instance v1, Lo/getActiveConvWindow;

    invoke-direct {v1, p0, v0}, Lo/getActiveConvWindow;-><init>(Lo/setSessionTimeoutInterval;Lo/setResponseTimeExpectationsFetchInterval;)V

    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/getActiveConvFetchBackoffRatio;->ICustomTabsCallback:Ljava/lang/Object;

    iget-object v1, p0, Lo/getActiveConvFetchBackoffRatio;->onNavigationEvent:[Ljava/lang/Object;

    iget v2, p0, Lo/getActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x0

    .line 93
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    aget-object p1, v1, v4

    return-object p1

    :cond_1
    return-object v3

    :cond_2
    if-nez v0, :cond_3

    return-object v3

    .line 99
    :cond_3
    instance-of v2, v0, [B

    if-eqz v2, :cond_6

    .line 100
    move-object v2, v0

    check-cast v2, [B

    .line 101
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lo/setRemoteConfigFetchInterval;->onMessageChannelReady(I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v5

    .line 104
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    return-object v3

    .line 107
    :cond_4
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v6, 0x1

    .line 108
    aget-object p1, v1, p1

    return-object p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    .line 111
    move-object v2, v0

    check-cast v2, [S

    .line 112
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lo/setRemoteConfigFetchInterval;->onMessageChannelReady(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v5

    .line 115
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    return-object v3

    .line 118
    :cond_7
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v6, 0x1

    .line 119
    aget-object p1, v1, p1

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_9
    check-cast v0, [I

    .line 122
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lo/setRemoteConfigFetchInterval;->onMessageChannelReady(I)I

    move-result v5

    :goto_2
    and-int/2addr v5, v2

    .line 125
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    return-object v3

    .line 128
    :cond_a
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    xor-int/lit8 p1, v6, 0x1

    .line 129
    aget-object p1, v1, p1

    return-object p1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method final onMessageChannelReady()Lo/getResponseTimeExpectationsFetchInterval;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getResponseTimeExpectationsFetchInterval<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 131
    new-instance v0, Lo/setActiveConvWindow;

    iget-object v1, p0, Lo/getActiveConvFetchBackoffRatio;->onNavigationEvent:[Ljava/lang/Object;

    iget v2, p0, Lo/getActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lo/setActiveConvWindow;-><init>(Lo/setSessionTimeoutInterval;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final onPostMessage()Lo/getRemoteConfigFetchInterval;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRemoteConfigFetchInterval<",
            "TV;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lo/setActiveConvMaxFetchInterval;

    iget-object v1, p0, Lo/getActiveConvFetchBackoffRatio;->onNavigationEvent:[Ljava/lang/Object;

    iget v2, p0, Lo/getActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lo/setActiveConvMaxFetchInterval;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 88
    iget v0, p0, Lo/getActiveConvFetchBackoffRatio;->onMessageChannelReady:I

    return v0
.end method
