.class public final Lo/AuthRequestClass;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private extraCallback:I

.field private onMessageChannelReady:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private onNavigationEvent:I

.field private onPostMessage:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 33
    invoke-direct {p0, v0}, Lo/AuthRequestClass;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, p1, [J

    iput-object v0, p0, Lo/AuthRequestClass;->onPostMessage:[J

    .line 39
    invoke-static {p1}, Lo/AuthRequestClass;->onNavigationEvent(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    return-void
.end method

.method private extraCallback(JLjava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 150
    iget v0, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    iget v1, p0, Lo/AuthRequestClass;->extraCallback:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 151
    iget-object v3, p0, Lo/AuthRequestClass;->onPostMessage:[J

    aput-wide p1, v3, v0

    .line 152
    aput-object p3, v2, v0

    add-int/lit8 v1, v1, 0x1

    .line 153
    iput v1, p0, Lo/AuthRequestClass;->extraCallback:I

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 6

    .line 127
    iget-object v0, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    array-length v0, v0

    .line 128
    iget v1, p0, Lo/AuthRequestClass;->extraCallback:I

    if-ge v1, v0, :cond_0

    return-void

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 132
    new-array v2, v1, [J

    .line 133
    invoke-static {v1}, Lo/AuthRequestClass;->onNavigationEvent(I)[Ljava/lang/Object;

    move-result-object v1

    .line 136
    iget v3, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    sub-int/2addr v0, v3

    .line 137
    iget-object v4, p0, Lo/AuthRequestClass;->onPostMessage:[J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v3, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    iget v4, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget v3, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    if-lez v3, :cond_1

    .line 141
    iget-object v4, p0, Lo/AuthRequestClass;->onPostMessage:[J

    invoke-static {v4, v5, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v3, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    iget v4, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    invoke-static {v3, v5, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    :cond_1
    iput-object v2, p0, Lo/AuthRequestClass;->onPostMessage:[J

    .line 145
    iput-object v1, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    .line 146
    iput v5, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    return-void
.end method

.method private onNavigationEvent(JZ)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-object v3, v0

    .line 103
    :goto_0
    iget v4, p0, Lo/AuthRequestClass;->extraCallback:I

    if-lez v4, :cond_1

    .line 104
    iget-object v4, p0, Lo/AuthRequestClass;->onPostMessage:[J

    iget v5, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    aget-wide v5, v4, v5

    sub-long v4, p1, v5

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    if-nez p3, :cond_1

    neg-long v6, v4

    cmp-long v8, v6, v1

    if-gez v8, :cond_1

    .line 109
    :cond_0
    iget-object v1, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    iget v2, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    aget-object v3, v1, v2

    .line 110
    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 111
    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    .line 112
    iget v1, p0, Lo/AuthRequestClass;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/AuthRequestClass;->extraCallback:I

    move-wide v1, v4

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private onNavigationEvent(J)V
    .locals 3

    .line 118
    iget v0, p0, Lo/AuthRequestClass;->extraCallback:I

    if-lez v0, :cond_0

    .line 119
    iget v1, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    .line 120
    iget-object v0, p0, Lo/AuthRequestClass;->onPostMessage:[J

    aget-wide v1, v0, v1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lo/AuthRequestClass;->extraCallback()V

    :cond_0
    return-void
.end method

.method private static onNavigationEvent(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 158
    new-array p0, p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 75
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lo/AuthRequestClass;->onNavigationEvent(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    :try_start_0
    iput v0, p0, Lo/AuthRequestClass;->onNavigationEvent:I

    .line 56
    iput v0, p0, Lo/AuthRequestClass;->extraCallback:I

    .line 57
    iget-object v0, p0, Lo/AuthRequestClass;->onMessageChannelReady:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lo/AuthRequestClass;->onNavigationEvent(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    invoke-direct {p0, p1, p2}, Lo/AuthRequestClass;->onNavigationEvent(J)V

    .line 49
    invoke-direct {p0}, Lo/AuthRequestClass;->onMessageChannelReady()V

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lo/AuthRequestClass;->extraCallback(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
