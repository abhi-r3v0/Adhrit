.class final Lo/bv;
.super Lo/bs;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/bs<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/bs<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient extraCallback:Ljava/lang/Object;

.field private final transient onMessageChannelReady:[Ljava/lang/Object;

.field private final transient onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 125
    new-instance v0, Lo/bv;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lo/bv;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lo/bv;->ICustomTabsCallback:Lo/bs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lo/bs;-><init>()V

    .line 74
    iput-object p1, p0, Lo/bv;->extraCallback:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lo/bv;->onMessageChannelReady:[Ljava/lang/Object;

    .line 76
    iput p3, p0, Lo/bv;->onPostMessage:I

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 72
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

.method static ICustomTabsCallback(I[Ljava/lang/Object;)Lo/bv;
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
            "Lo/bv<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    array-length p0, p1

    const/4 v0, 0x1

    shr-int/2addr p0, v0

    const/4 v1, 0x4

    invoke-static {v1, p0}, Lo/bZ;->onMessageChannelReady(II)I

    const/4 p0, 0x2

    .line 3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const v4, 0x2ccccccc

    if-ge p0, v4, :cond_0

    add-int/lit8 v2, p0, -0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    shl-int/lit8 v0, v2, 0x1

    move v2, v0

    :goto_0
    int-to-double v4, v2

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double v4, v4, v6

    int-to-double v6, p0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_2

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ge p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string p0, "collection too large"

    .line 9
    invoke-static {v0, p0}, Lo/bZ;->extraCallback(ZLjava/lang/Object;)V

    :cond_2
    add-int/lit8 p0, v2, -0x1

    const/16 v0, 0x80

    const/4 v4, -0x1

    if-gt v2, v0, :cond_5

    .line 15
    new-array v0, v2, [B

    .line 16
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    :goto_2
    if-ge v3, v1, :cond_b

    mul-int/lit8 v2, v3, 0x2

    .line 19
    aget-object v4, p1, v2

    xor-int/lit8 v5, v2, 0x1

    .line 20
    aget-object v5, p1, v5

    .line 21
    invoke-static {v4, v5}, Lo/bo;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lo/bl;->extraCallback(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, p0

    .line 24
    aget-byte v7, v0, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3

    int-to-byte v2, v2

    .line 26
    aput-byte v2, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 28
    :cond_3
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 29
    :cond_4
    invoke-static {v4, v5, p1, v7}, Lo/bv;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    const v0, 0x8000

    if-gt v2, v0, :cond_8

    .line 34
    new-array v0, v2, [S

    .line 35
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([SS)V

    :goto_4
    if-ge v3, v1, :cond_b

    mul-int/lit8 v2, v3, 0x2

    .line 38
    aget-object v4, p1, v2

    xor-int/lit8 v5, v2, 0x1

    .line 39
    aget-object v5, p1, v5

    .line 40
    invoke-static {v4, v5}, Lo/bo;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lo/bl;->extraCallback(I)I

    move-result v6

    :goto_5
    and-int/2addr v6, p0

    .line 43
    aget-short v7, v0, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_6

    int-to-short v2, v2

    .line 45
    aput-short v2, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 47
    :cond_6
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 48
    :cond_7
    invoke-static {v4, v5, p1, v7}, Lo/bv;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 52
    :cond_8
    new-array v0, v2, [I

    .line 53
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([II)V

    :goto_6
    if-ge v3, v1, :cond_b

    mul-int/lit8 v2, v3, 0x2

    .line 56
    aget-object v5, p1, v2

    xor-int/lit8 v6, v2, 0x1

    .line 57
    aget-object v6, p1, v6

    .line 58
    invoke-static {v5, v6}, Lo/bo;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lo/bl;->extraCallback(I)I

    move-result v7

    :goto_7
    and-int/2addr v7, p0

    .line 61
    aget v8, v0, v7

    if-ne v8, v4, :cond_9

    .line 63
    aput v2, v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 65
    :cond_9
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 66
    :cond_a
    invoke-static {v5, v6, p1, v8}, Lo/bv;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 71
    :cond_b
    new-instance p0, Lo/bv;

    invoke-direct {p0, v0, p1, v1}, Lo/bv;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method final ICustomTabsCallback()Lo/bx;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/bx<",
            "TK;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lo/isNotificationInterceptionEnabled;

    iget-object v1, p0, Lo/bv;->onMessageChannelReady:[Ljava/lang/Object;

    iget v2, p0, Lo/bv;->onPostMessage:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lo/isNotificationInterceptionEnabled;-><init>([Ljava/lang/Object;II)V

    .line 123
    new-instance v1, Lo/by;

    invoke-direct {v1, p0, v0}, Lo/by;-><init>(Lo/bs;Lo/br;)V

    return-object v1
.end method

.method final extraCallback()Lo/bn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/bn<",
            "TV;>;"
        }
    .end annotation

    .line 124
    new-instance v0, Lo/isNotificationInterceptionEnabled;

    iget-object v1, p0, Lo/bv;->onMessageChannelReady:[Ljava/lang/Object;

    iget v2, p0, Lo/bv;->onPostMessage:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lo/isNotificationInterceptionEnabled;-><init>([Ljava/lang/Object;II)V

    return-object v0
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

    .line 79
    iget-object v0, p0, Lo/bv;->extraCallback:Ljava/lang/Object;

    iget-object v1, p0, Lo/bv;->onMessageChannelReady:[Ljava/lang/Object;

    iget v2, p0, Lo/bv;->onPostMessage:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x0

    .line 83
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    aget-object p1, v1, v4

    return-object p1

    :cond_1
    return-object v3

    :cond_2
    if-nez v0, :cond_3

    return-object v3

    .line 89
    :cond_3
    instance-of v2, v0, [B

    if-eqz v2, :cond_6

    .line 90
    move-object v2, v0

    check-cast v2, [B

    .line 91
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lo/bl;->extraCallback(I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v5

    .line 94
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    return-object v3

    .line 97
    :cond_4
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v6, 0x1

    .line 98
    aget-object p1, v1, p1

    return-object p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    .line 101
    move-object v2, v0

    check-cast v2, [S

    .line 102
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lo/bl;->extraCallback(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v5

    .line 105
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    return-object v3

    .line 108
    :cond_7
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v6, 0x1

    .line 109
    aget-object p1, v1, p1

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_9
    check-cast v0, [I

    .line 112
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lo/bl;->extraCallback(I)I

    move-result v5

    :goto_2
    and-int/2addr v5, v2

    .line 115
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    return-object v3

    .line 118
    :cond_a
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    xor-int/lit8 p1, v6, 0x1

    .line 119
    aget-object p1, v1, p1

    return-object p1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method final onNavigationEvent()Lo/bx;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/bx<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lo/bu;

    iget-object v1, p0, Lo/bv;->onMessageChannelReady:[Ljava/lang/Object;

    iget v2, p0, Lo/bv;->onPostMessage:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lo/bu;-><init>(Lo/bs;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 78
    iget v0, p0, Lo/bv;->onPostMessage:I

    return v0
.end method
