.class public final Lo/getHashRepresentation;
.super Lo/matches;
.source ""


# instance fields
.field private transient ICustomTabsCallback:[I

.field private transient onNavigationEvent:[[B


# direct methods
.method public constructor <init>(Lo/updatePriority;I)V
    .locals 7

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lo/matches;-><init>([B)V

    .line 58
    iget-wide v1, p1, Lo/updatePriority;->ICustomTabsCallback:J

    int-to-long v5, p2

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lo/getPriorityKey;->extraCallback(JJJ)V

    .line 63
    iget-object v0, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 64
    iget v4, v0, Lo/shouldLog;->onNavigationEvent:I

    iget v5, v0, Lo/shouldLog;->ICustomTabsCallback:I

    if-eq v4, v5, :cond_0

    .line 67
    iget v4, v0, Lo/shouldLog;->onNavigationEvent:I

    iget v5, v0, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    .line 63
    iget-object v0, v0, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "s.limit == s.pos"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 72
    :cond_1
    new-array v0, v3, [[B

    iput-object v0, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    const/4 v0, 0x1

    shl-int/lit8 v2, v3, 0x1

    .line 73
    new-array v2, v2, [I

    iput-object v2, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    .line 76
    iget-object p1, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    const/4 v2, 0x0

    :goto_1
    if-ge v1, p2, :cond_3

    .line 77
    iget-object v3, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    iget-object v4, p1, Lo/shouldLog;->extraCallback:[B

    aput-object v4, v3, v2

    .line 78
    iget v3, p1, Lo/shouldLog;->onNavigationEvent:I

    iget v4, p1, Lo/shouldLog;->ICustomTabsCallback:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    if-le v1, p2, :cond_2

    move v1, p2

    .line 82
    :cond_2
    iget-object v3, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    aput v1, v3, v2

    .line 83
    iget-object v4, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v4, v4

    add-int/2addr v4, v2

    iget v5, p1, Lo/shouldLog;->ICustomTabsCallback:I

    aput v5, v3, v4

    .line 84
    iput-boolean v0, p1, Lo/shouldLog;->onPostMessage:Z

    add-int/lit8 v2, v2, 0x1

    .line 76
    iget-object p1, p1, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 14257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 2

    .line 1257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 90
    invoke-virtual {v0}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(I[BII)Z
    .locals 8

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    .line 11161
    iget-object v1, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v2, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v3, v1, v3

    sub-int/2addr v3, p4

    if-gt p1, v3, :cond_5

    if-ltz p3, :cond_5

    .line 228
    array-length v3, p2

    sub-int/2addr v3, p4

    if-le p3, v3, :cond_0

    goto :goto_2

    .line 12156
    :cond_0
    array-length v2, v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    not-int v1, v1

    :goto_0
    if-lez p4, :cond_4

    if-nez v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 234
    :cond_2
    iget-object v2, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    .line 235
    :goto_1
    iget-object v3, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    aget v3, v3, v1

    sub-int/2addr v3, v2

    add-int/2addr v3, v2

    sub-int/2addr v3, p1

    .line 236
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 237
    iget-object v5, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v6, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v7, v6

    add-int/2addr v7, v1

    aget v5, v5, v7

    sub-int v2, p1, v2

    add-int/2addr v2, v5

    .line 239
    aget-object v5, v6, v1

    invoke-static {v5, v2, p2, p3, v3}, Lo/getPriorityKey;->onMessageChannelReady([BI[BII)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/2addr p1, v3

    add-int/2addr p3, v3

    sub-int/2addr p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v4

    :cond_5
    :goto_2
    return v0
.end method

.method final ICustomTabsCallback$Stub()[B
    .locals 1

    .line 261
    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()Lo/matches;
    .locals 2

    .line 4257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 106
    invoke-virtual {v0}, Lo/matches;->asBinder()Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method public final asInterface()[B
    .locals 8

    .line 165
    iget-object v0, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v1, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    new-array v0, v0, [B

    .line 167
    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 168
    iget-object v4, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    add-int v5, v1, v2

    aget v5, v4, v5

    .line 169
    aget v4, v4, v2

    .line 170
    iget-object v6, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    aget-object v6, v6, v2

    sub-int v7, v4, v3

    invoke-static {v6, v5, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 266
    :cond_0
    instance-of v1, p1, Lo/matches;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/matches;

    .line 267
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result v1

    .line 12161
    iget-object v3, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v4, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v5, v4

    sub-int/2addr v5, v0

    aget v5, v3, v5

    if-ne v1, v5, :cond_1

    .line 13161
    array-length v1, v4

    sub-int/2addr v1, v0

    aget v1, v3, v1

    .line 268
    invoke-virtual {p0, v2, p1, v2, v1}, Lo/matches;->onMessageChannelReady(ILo/matches;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final extraCallback()Lo/matches;
    .locals 2

    .line 6257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 118
    invoke-virtual {v0}, Lo/matches;->extraCallback()Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 8

    .line 272
    iget v0, p0, Lo/matches;->onPostMessage:I

    if-eqz v0, :cond_0

    return v0

    .line 278
    :cond_0
    iget-object v0, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 279
    iget-object v4, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    aget-object v4, v4, v1

    .line 280
    iget-object v5, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    add-int v6, v0, v1

    aget v6, v5, v6

    .line 281
    aget v5, v5, v1

    sub-int v2, v5, v2

    add-int/2addr v2, v6

    :goto_1
    if-ge v6, v2, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    .line 284
    aget-byte v7, v4, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    .line 288
    :cond_2
    iput v3, p0, Lo/matches;->onPostMessage:I

    return v3
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 2

    .line 2257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 98
    invoke-virtual {v0}, Lo/matches;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady(II)Lo/matches;
    .locals 2

    .line 8257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 142
    invoke-virtual {v0, p1, p2}, Lo/matches;->onMessageChannelReady(II)Lo/matches;

    move-result-object p1

    return-object p1
.end method

.method final onMessageChannelReady(Lo/updatePriority;)V
    .locals 8

    .line 194
    iget-object v0, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 195
    iget-object v3, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    add-int v4, v0, v1

    aget v4, v3, v4

    .line 196
    aget v3, v3, v1

    .line 197
    new-instance v5, Lo/shouldLog;

    iget-object v6, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    aget-object v6, v6, v1

    add-int v7, v4, v3

    sub-int/2addr v7, v2

    invoke-direct {v5, v6, v4, v7}, Lo/shouldLog;-><init>([BII)V

    .line 199
    iget-object v2, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    if-nez v2, :cond_0

    .line 200
    iput-object v5, v5, Lo/shouldLog;->onTransact:Lo/shouldLog;

    iput-object v5, v5, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    iput-object v5, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    goto :goto_1

    .line 202
    :cond_0
    iget-object v2, p1, Lo/updatePriority;->onNavigationEvent:Lo/shouldLog;

    iget-object v2, v2, Lo/shouldLog;->onTransact:Lo/shouldLog;

    .line 10109
    iput-object v2, v5, Lo/shouldLog;->onTransact:Lo/shouldLog;

    .line 10110
    iget-object v4, v2, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    iput-object v4, v5, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    .line 10111
    iget-object v4, v2, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    iput-object v5, v4, Lo/shouldLog;->onTransact:Lo/shouldLog;

    .line 10112
    iput-object v5, v2, Lo/shouldLog;->ICustomTabsCallback$Stub:Lo/shouldLog;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 206
    :cond_1
    iget-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lo/updatePriority;->ICustomTabsCallback:J

    return-void
.end method

.method public final onMessageChannelReady(ILo/matches;II)Z
    .locals 8

    .line 10161
    iget-object v0, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v1, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v2, v0, v2

    sub-int/2addr v2, p4

    const/4 v4, 0x0

    if-gez v2, :cond_0

    return v4

    .line 11156
    :cond_0
    array-length v1, v1

    invoke-static {v0, v4, v1, v3}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    not-int v0, v0

    :goto_0
    if-lez p4, :cond_4

    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    .line 214
    :cond_2
    iget-object v1, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 215
    :goto_1
    iget-object v2, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    aget v2, v2, v0

    sub-int/2addr v2, v1

    add-int/2addr v2, v1

    sub-int/2addr v2, p1

    .line 216
    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 217
    iget-object v5, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v6, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v7, v6

    add-int/2addr v7, v0

    aget v5, v5, v7

    sub-int v1, p1, v1

    add-int/2addr v1, v5

    .line 219
    aget-object v5, v6, v0

    invoke-virtual {p2, p3, v5, v1, v2}, Lo/matches;->ICustomTabsCallback(I[BII)Z

    move-result v1

    if-nez v1, :cond_3

    return v4

    :cond_3
    add-int/2addr p1, v2

    add-int/2addr p3, v2

    sub-int/2addr p4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public final onNavigationEvent()Lo/matches;
    .locals 2

    .line 5257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 114
    invoke-virtual {v0}, Lo/matches;->onNavigationEvent()Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(I)B
    .locals 7

    .line 146
    iget-object v0, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v1, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lo/getPriorityKey;->extraCallback(JJJ)V

    .line 9156
    iget-object v0, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v1, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    not-int v0, v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v1, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    .line 149
    :goto_1
    iget-object v1, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v2, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v4, v2

    add-int/2addr v4, v0

    aget v1, v1, v4

    .line 150
    aget-object v0, v2, v0

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    return p1
.end method

.method public final onPostMessage()Lo/matches;
    .locals 2

    .line 7257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 122
    invoke-virtual {v0}, Lo/matches;->onPostMessage()Lo/matches;

    move-result-object v0

    return-object v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 2

    .line 3257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 102
    invoke-virtual {v0}, Lo/matches;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()I
    .locals 2

    .line 161
    iget-object v0, p0, Lo/getHashRepresentation;->ICustomTabsCallback:[I

    iget-object v1, p0, Lo/getHashRepresentation;->onNavigationEvent:[[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 13257
    new-instance v0, Lo/matches;

    invoke-virtual {p0}, Lo/matches;->asInterface()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/matches;-><init>([B)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
