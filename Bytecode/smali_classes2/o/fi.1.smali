.class final Lo/fi;
.super Lo/abort;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/abort<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/abort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/abort<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient ICustomTabsCallback:I

.field private final transient extraCallback:Ljava/lang/Object;

.field private final transient onPostMessage:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 124
    new-instance v0, Lo/fi;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lo/fi;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lo/fi;->onMessageChannelReady:Lo/abort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lo/abort;-><init>()V

    .line 73
    iput-object p1, p0, Lo/fi;->extraCallback:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lo/fi;->onPostMessage:[Ljava/lang/Object;

    .line 75
    iput p3, p0, Lo/fi;->ICustomTabsCallback:I

    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 71
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

.method static onPostMessage(I[Ljava/lang/Object;)Lo/fi;
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
            "Lo/fi<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lo/fi;->onMessageChannelReady:Lo/abort;

    check-cast p0, Lo/fi;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 4
    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lo/c$5;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    new-instance p0, Lo/fi;

    invoke-direct {p0, v0, p1, v2}, Lo/fi;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 6
    :cond_1
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lo/dq;->onNavigationEvent(II)I

    .line 7
    invoke-static {p0}, Lo/fj;->extraCallback(I)I

    move-result v3

    if-ne p0, v2, :cond_2

    .line 10
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lo/c$5;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v0, v3, -0x1

    const/16 v2, 0x80

    const/4 v4, -0x1

    if-gt v3, v2, :cond_6

    .line 14
    new-array v2, v3, [B

    .line 15
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-ge v1, p0, :cond_5

    mul-int/lit8 v3, v1, 0x2

    .line 18
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 19
    aget-object v5, p1, v5

    .line 20
    invoke-static {v4, v5}, Lo/c$5;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lo/et;->onPostMessage(I)I

    move-result v6

    :goto_1
    and-int/2addr v6, v0

    .line 23
    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3

    int-to-byte v3, v3

    .line 25
    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_3
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 28
    :cond_4
    invoke-static {v4, v5, p1, v7}, Lo/fi;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    move-object v0, v2

    goto/16 :goto_6

    :cond_6
    const v2, 0x8000

    if-gt v3, v2, :cond_9

    .line 33
    new-array v2, v3, [S

    .line 34
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([SS)V

    :goto_2
    if-ge v1, p0, :cond_5

    mul-int/lit8 v3, v1, 0x2

    .line 37
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 38
    aget-object v5, p1, v5

    .line 39
    invoke-static {v4, v5}, Lo/c$5;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lo/et;->onPostMessage(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v0

    .line 42
    aget-short v7, v2, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_7

    int-to-short v3, v3

    .line 44
    aput-short v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 46
    :cond_7
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 47
    :cond_8
    invoke-static {v4, v5, p1, v7}, Lo/fi;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 51
    :cond_9
    new-array v2, v3, [I

    .line 52
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    :goto_4
    if-ge v1, p0, :cond_5

    mul-int/lit8 v3, v1, 0x2

    .line 55
    aget-object v5, p1, v3

    xor-int/lit8 v6, v3, 0x1

    .line 56
    aget-object v6, p1, v6

    .line 57
    invoke-static {v5, v6}, Lo/c$5;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lo/et;->onPostMessage(I)I

    move-result v7

    :goto_5
    and-int/2addr v7, v0

    .line 60
    aget v8, v2, v7

    if-ne v8, v4, :cond_a

    .line 62
    aput v3, v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 64
    :cond_a
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 65
    :cond_b
    invoke-static {v5, v6, p1, v8}, Lo/fi;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 70
    :goto_6
    new-instance v1, Lo/fi;

    invoke-direct {v1, v0, p1, p0}, Lo/fi;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method


# virtual methods
.method final extraCallback()Lo/isClosed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isClosed<",
            "TV;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Lo/fm;

    iget-object v1, p0, Lo/fi;->onPostMessage:[Ljava/lang/Object;

    iget v2, p0, Lo/fi;->ICustomTabsCallback:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lo/fm;-><init>([Ljava/lang/Object;II)V

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

    .line 78
    iget-object v0, p0, Lo/fi;->extraCallback:Ljava/lang/Object;

    iget-object v1, p0, Lo/fi;->onPostMessage:[Ljava/lang/Object;

    iget v2, p0, Lo/fi;->ICustomTabsCallback:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x0

    .line 82
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    aget-object p1, v1, v4

    return-object p1

    :cond_1
    return-object v3

    :cond_2
    if-nez v0, :cond_3

    return-object v3

    .line 88
    :cond_3
    instance-of v2, v0, [B

    if-eqz v2, :cond_6

    .line 89
    move-object v2, v0

    check-cast v2, [B

    .line 90
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lo/et;->onPostMessage(I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v5

    .line 93
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    return-object v3

    .line 96
    :cond_4
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v6, 0x1

    .line 97
    aget-object p1, v1, p1

    return-object p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    .line 100
    move-object v2, v0

    check-cast v2, [S

    .line 101
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lo/et;->onPostMessage(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v5

    .line 104
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    return-object v3

    .line 107
    :cond_7
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v6, 0x1

    .line 108
    aget-object p1, v1, p1

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    :cond_9
    check-cast v0, [I

    .line 111
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lo/et;->onPostMessage(I)I

    move-result v5

    :goto_2
    and-int/2addr v5, v2

    .line 114
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    return-object v3

    .line 117
    :cond_a
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    xor-int/lit8 p1, v6, 0x1

    .line 118
    aget-object p1, v1, p1

    return-object p1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method final onMessageChannelReady()Lo/fj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/fj<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lo/fp;

    iget-object v1, p0, Lo/fi;->onPostMessage:[Ljava/lang/Object;

    iget v2, p0, Lo/fi;->ICustomTabsCallback:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lo/fp;-><init>(Lo/abort;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final onPostMessage()Lo/fj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/fj<",
            "TK;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lo/fm;

    iget-object v1, p0, Lo/fi;->onPostMessage:[Ljava/lang/Object;

    iget v2, p0, Lo/fi;->ICustomTabsCallback:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lo/fm;-><init>([Ljava/lang/Object;II)V

    .line 122
    new-instance v1, Lo/fw;

    invoke-direct {v1, p0, v0}, Lo/fw;-><init>(Lo/abort;Lo/a$c$1;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 77
    iget v0, p0, Lo/fi;->ICustomTabsCallback:I

    return v0
.end method
