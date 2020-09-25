.class public final Lo/sendAuthAndRestoreState;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/logging/Logger;

.field private static final onPostMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lo/sendAuthAndRestoreState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/sendAuthAndRestoreState;->extraCallback:Ljava/util/logging/Logger;

    .line 40
    sget-object v0, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    const-string v1, "-bin"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lo/sendAuthAndRestoreState;->onPostMessage:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/getPredecessorKey;)[[B
    .locals 9

    .line 51
    invoke-static {p0}, Lo/onNodeValue;->ICustomTabsCallback(Lo/getPredecessorKey;)[[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_5

    .line 58
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    .line 59
    aget-object v4, p0, v4

    .line 60
    sget-object v5, Lo/sendAuthAndRestoreState;->onPostMessage:[B

    invoke-static {v3, v5}, Lo/sendAuthAndRestoreState;->onMessageChannelReady([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    aput-object v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    .line 63
    sget-object v5, Lo/onNodeValue;->ICustomTabsCallback:Lcom/google/common/io/BaseEncoding;

    .line 1148
    array-length v6, v4

    invoke-virtual {v5, v4, v6}, Lcom/google/common/io/BaseEncoding;->onMessageChannelReady([BI)Ljava/lang/String;

    move-result-object v4

    .line 64
    sget-object v5, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    aput-object v4, p0, v3

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    .line 1171
    :cond_0
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    aget-byte v7, v4, v6

    const/16 v8, 0x20

    if-lt v7, v8, :cond_2

    const/16 v8, 0x7e

    if-le v7, v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_4

    .line 71
    aput-object v3, p0, v2

    add-int/lit8 v3, v2, 0x1

    .line 72
    aput-object v4, p0, v3

    goto :goto_1

    .line 75
    :cond_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 76
    sget-object v3, Lo/sendAuthAndRestoreState;->extraCallback:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Metadata key="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contains invalid ASCII characters"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 82
    :cond_5
    array-length v1, p0

    if-ne v2, v1, :cond_6

    return-object p0

    .line 85
    :cond_6
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0
.end method

.method private static onMessageChannelReady([B[B)Z
    .locals 5

    .line 154
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    move v2, v0

    .line 158
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 159
    aget-byte v3, p0, v2

    sub-int v4, v2, v0

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static onMessageChannelReady([[B)[[B
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_9

    .line 102
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 103
    aget-object v4, p0, v3

    .line 104
    sget-object v5, Lo/sendAuthAndRestoreState;->onPostMessage:[B

    invoke-static {v2, v5}, Lo/sendAuthAndRestoreState;->onMessageChannelReady([B[B)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 106
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 107
    aget-byte v5, v4, v2

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_6

    .line 2122
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p0

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_0

    .line 2124
    aget-object v4, p0, v3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2126
    :cond_0
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_5

    .line 2127
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    .line 2128
    aget-object v4, p0, v4

    .line 2129
    sget-object v5, Lo/sendAuthAndRestoreState;->onPostMessage:[B

    invoke-static {v3, v5}, Lo/sendAuthAndRestoreState;->onMessageChannelReady([B[B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2130
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2131
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2136
    :goto_4
    array-length v8, v4

    if-gt v5, v8, :cond_4

    .line 2137
    array-length v8, v4

    if-eq v5, v8, :cond_2

    aget-byte v8, v4, v5

    if-ne v8, v6, :cond_3

    .line 2141
    :cond_2
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->onNavigationEvent()Lcom/google/common/io/BaseEncoding;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    sub-int v10, v5, v7

    sget-object v11, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v9, v4, v7, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v8, v9}, Lcom/google/common/io/BaseEncoding;->onMessageChannelReady(Ljava/lang/CharSequence;)[B

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    .line 2143
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2144
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_5
    new-array p0, v0, [[B

    .line 2147
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    return-object p0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_7
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->onNavigationEvent()Lcom/google/common/io/BaseEncoding;

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lo/performAutoConfigure;->onMessageChannelReady:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v5}, Lcom/google/common/io/BaseEncoding;->onMessageChannelReady(Ljava/lang/CharSequence;)[B

    move-result-object v2

    .line 112
    aput-object v2, p0, v3

    :cond_8
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_9
    return-object p0
.end method
