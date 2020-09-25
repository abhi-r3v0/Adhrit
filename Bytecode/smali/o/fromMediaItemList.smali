.class public Lo/fromMediaItemList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static onMessageChannelReady:I

.field private static onNavigationEvent:[Ljava/lang/Object;

.field private static onPostMessage:[Ljava/lang/Object;

.field private static onTransact:I


# instance fields
.field ICustomTabsCallback:I

.field private asInterface:[I

.field public extraCallback:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->ICustomTabsCallback:[I

    iput-object v0, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 238
    sget-object v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback:[Ljava/lang/Object;

    iput-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 248
    sget-object p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->ICustomTabsCallback:[I

    iput-object p1, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 249
    sget-object p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback:[Ljava/lang/Object;

    iput-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Lo/fromMediaItemList;->onPostMessage(I)V

    :goto_0
    const/4 p1, 0x0

    .line 253
    iput p1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    return-void
.end method

.method public constructor <init>(Lo/fromMediaItemList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromMediaItemList<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Lo/fromMediaItemList;-><init>()V

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lo/fromMediaItemList;->onPostMessage(Lo/fromMediaItemList;)V

    :cond_0
    return-void
.end method

.method private static ICustomTabsCallback([III)I
    .locals 0

    .line 77
    :try_start_0
    invoke-static {p0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->onNavigationEvent([III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 80
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static extraCallback([I[Ljava/lang/Object;I)V
    .locals 8

    .line 201
    const-class v0, Lo/fromMediaItemList;

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v1, v7, :cond_2

    .line 202
    monitor-enter v0

    .line 203
    :try_start_0
    sget v1, Lo/fromMediaItemList;->onTransact:I

    if-ge v1, v5, :cond_1

    .line 204
    sget-object v1, Lo/fromMediaItemList;->onNavigationEvent:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 205
    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_0
    if-lt p0, v3, :cond_0

    .line 207
    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 209
    :cond_0
    sput-object p1, Lo/fromMediaItemList;->onNavigationEvent:[Ljava/lang/Object;

    .line 210
    sget p0, Lo/fromMediaItemList;->onTransact:I

    add-int/2addr p0, v6

    sput p0, Lo/fromMediaItemList;->onTransact:I

    .line 214
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 215
    :cond_2
    array-length v1, p0

    const/4 v7, 0x4

    if-ne v1, v7, :cond_5

    .line 216
    monitor-enter v0

    .line 217
    :try_start_1
    sget v1, Lo/fromMediaItemList;->onMessageChannelReady:I

    if-ge v1, v5, :cond_4

    .line 218
    sget-object v1, Lo/fromMediaItemList;->onPostMessage:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 219
    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_1
    if-lt p0, v3, :cond_3

    .line 221
    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 223
    :cond_3
    sput-object p1, Lo/fromMediaItemList;->onPostMessage:[Ljava/lang/Object;

    .line 224
    sget p0, Lo/fromMediaItemList;->onMessageChannelReady:I

    add-int/2addr p0, v6

    sput p0, Lo/fromMediaItemList;->onMessageChannelReady:I

    .line 228
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    return-void
.end method

.method private onPostMessage(I)V
    .locals 5

    .line 165
    const-class v0, Lo/fromMediaItemList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne p1, v4, :cond_1

    .line 166
    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v4, Lo/fromMediaItemList;->onNavigationEvent:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 168
    sget-object p1, Lo/fromMediaItemList;->onNavigationEvent:[Ljava/lang/Object;

    .line 169
    iput-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    .line 170
    aget-object v4, p1, v2

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lo/fromMediaItemList;->onNavigationEvent:[Ljava/lang/Object;

    .line 171
    aget-object v4, p1, v3

    check-cast v4, [I

    iput-object v4, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 172
    aput-object v1, p1, v3

    aput-object v1, p1, v2

    .line 173
    sget p1, Lo/fromMediaItemList;->onTransact:I

    sub-int/2addr p1, v3

    sput p1, Lo/fromMediaItemList;->onTransact:I

    .line 176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 178
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_3

    .line 180
    monitor-enter v0

    .line 181
    :try_start_1
    sget-object v4, Lo/fromMediaItemList;->onPostMessage:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 182
    sget-object p1, Lo/fromMediaItemList;->onPostMessage:[Ljava/lang/Object;

    .line 183
    iput-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    .line 184
    aget-object v4, p1, v2

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Lo/fromMediaItemList;->onPostMessage:[Ljava/lang/Object;

    .line 185
    aget-object v4, p1, v3

    check-cast v4, [I

    iput-object v4, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 186
    aput-object v1, p1, v3

    aput-object v1, p1, v2

    .line 187
    sget p1, Lo/fromMediaItemList;->onMessageChannelReady:I

    sub-int/2addr p1, v3

    sput p1, Lo/fromMediaItemList;->onMessageChannelReady:I

    .line 190
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 192
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    .line 195
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Lo/fromMediaItemList;->asInterface:[I

    shl-int/2addr p1, v3

    .line 196
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 5

    .line 289
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    .line 290
    iget-object v1, p0, Lo/fromMediaItemList;->asInterface:[I

    array-length v2, v1

    if-ge v2, p1, :cond_1

    .line 292
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    .line 293
    invoke-direct {p0, p1}, Lo/fromMediaItemList;->onPostMessage(I)V

    .line 294
    iget p1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-lez p1, :cond_0

    .line 295
    iget-object p1, p0, Lo/fromMediaItemList;->asInterface:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_0
    invoke-static {v1, v2, v0}, Lo/fromMediaItemList;->extraCallback([I[Ljava/lang/Object;I)V

    .line 300
    :cond_1
    iget p1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ne p1, v0, :cond_2

    return-void

    .line 301
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 4

    .line 270
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-lez v0, :cond_0

    .line 271
    iget-object v1, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 272
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    .line 274
    sget-object v3, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->ICustomTabsCallback:[I

    iput-object v3, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 275
    sget-object v3, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback:[Ljava/lang/Object;

    iput-object v3, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 276
    iput v3, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    .line 277
    invoke-static {v1, v2, v0}, Lo/fromMediaItemList;->extraCallback([I[Ljava/lang/Object;I)V

    .line 279
    :cond_0
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-gtz v0, :cond_1

    return-void

    .line 280
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Lo/fromMediaItemList;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 684
    :cond_0
    instance-of v1, p1, Lo/fromMediaItemList;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 685
    check-cast p1, Lo/fromMediaItemList;

    .line 686
    invoke-virtual {p0}, Lo/fromMediaItemList;->size()I

    move-result v1

    invoke-virtual {p1}, Lo/fromMediaItemList;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 691
    :goto_0
    :try_start_0
    iget v3, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ge v1, v3, :cond_5

    .line 7390
    iget-object v3, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    .line 7399
    iget-object v5, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v5, v4

    .line 694
    invoke-virtual {p1, v3}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_3

    if-nez v5, :cond_2

    .line 696
    invoke-virtual {p1, v3}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    return v2

    .line 699
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :catch_0
    return v2

    .line 709
    :cond_6
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_c

    .line 710
    check-cast p1, Ljava/util/Map;

    .line 711
    invoke-virtual {p0}, Lo/fromMediaItemList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    const/4 v1, 0x0

    .line 716
    :goto_1
    :try_start_1
    iget v3, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ge v1, v3, :cond_b

    .line 8390
    iget-object v3, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    .line 8399
    iget-object v5, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v5, v4

    .line 719
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-nez v5, :cond_8

    .line 721
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    return v2

    .line 724
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_a

    return v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    return v0

    :catch_1
    :cond_c
    return v2
.end method

.method public final extraCallback()I
    .locals 5

    .line 126
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 133
    :cond_0
    iget-object v1, p0, Lo/fromMediaItemList;->asInterface:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lo/fromMediaItemList;->ICustomTabsCallback([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    .line 141
    :cond_1
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 147
    iget-object v3, p0, Lo/fromMediaItemList;->asInterface:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 148
    iget-object v3, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 152
    iget-object v0, p0, Lo/fromMediaItemList;->asInterface:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 153
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int v0, v2

    return v0
.end method

.method public extraCallback(I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    .line 571
    iget v3, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    .line 576
    iget-object p1, p0, Lo/fromMediaItemList;->asInterface:[I

    invoke-static {p1, v0, v3}, Lo/fromMediaItemList;->extraCallback([I[Ljava/lang/Object;I)V

    .line 577
    sget-object p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->ICustomTabsCallback:[I

    iput-object p1, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 578
    sget-object p1, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->extraCallback:[Ljava/lang/Object;

    iput-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, -0x1

    .line 582
    iget-object v6, p0, Lo/fromMediaItemList;->asInterface:[I

    array-length v7, v6

    const/16 v8, 0x8

    if-le v7, v8, :cond_4

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v3, v6, :cond_4

    if-le v3, v8, :cond_1

    shr-int/lit8 v6, v3, 0x1

    add-int v8, v3, v6

    .line 590
    :cond_1
    iget-object v6, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 591
    iget-object v7, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    .line 592
    invoke-direct {p0, v8}, Lo/fromMediaItemList;->onPostMessage(I)V

    .line 594
    iget v8, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ne v3, v8, :cond_3

    if-lez p1, :cond_2

    .line 600
    iget-object v8, p0, Lo/fromMediaItemList;->asInterface:[I

    invoke-static {v6, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    iget-object v8, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    invoke-static {v7, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-ge p1, v0, :cond_6

    add-int/lit8 v4, p1, 0x1

    .line 606
    iget-object v8, p0, Lo/fromMediaItemList;->asInterface:[I

    sub-int v9, v0, p1

    invoke-static {v6, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v4, 0x1

    .line 607
    iget-object v4, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v5, v9, 0x1

    invoke-static {v7, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 595
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_4
    if-ge p1, v0, :cond_5

    .line 614
    iget-object v4, p0, Lo/fromMediaItemList;->asInterface:[I

    add-int/lit8 v6, p1, 0x1

    sub-int v7, v0, p1

    invoke-static {v4, v6, v4, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    iget-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v6, 0x1

    shl-int/lit8 v6, v7, 0x1

    invoke-static {p1, v4, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    :cond_5
    iget-object p1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v1, v0, 0x1

    const/4 v4, 0x0

    aput-object v4, p1, v1

    add-int/2addr v1, v5

    .line 619
    aput-object v4, p1, v1

    :cond_6
    :goto_0
    move v4, v0

    .line 622
    :goto_1
    iget p1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ne v3, p1, :cond_7

    .line 625
    iput v4, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    return-object v2

    .line 623
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, v0}, Lo/fromMediaItemList;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2322
    invoke-virtual {p0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 381
    iget-object p2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public hashCode()I
    .locals 9

    .line 743
    iget-object v0, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 744
    iget-object v1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    .line 746
    iget v2, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 747
    aget-object v7, v1, v3

    .line 748
    aget v8, v0, v5

    if-nez v7, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v6
.end method

.method public isEmpty()Z
    .locals 1

    .line 419
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 5

    .line 326
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    .line 327
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    if-ge p1, v0, :cond_3

    .line 330
    aget-object v3, v2, p1

    if-nez v3, :cond_0

    shr-int/2addr p1, v1

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 336
    aget-object v4, v2, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    shr-int/lit8 p1, v3, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public final onMessageChannelReady(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public onMessageChannelReady(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 410
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 411
    aput-object p2, v0, p1

    return-object v1
.end method

.method public final onNavigationEvent(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;I)I
    .locals 5

    .line 88
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 95
    :cond_0
    iget-object v1, p0, Lo/fromMediaItemList;->asInterface:[I

    invoke-static {v1, v0, p2}, Lo/fromMediaItemList;->ICustomTabsCallback([III)I

    move-result v1

    if-gez v1, :cond_1

    return v1

    .line 103
    :cond_1
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 109
    iget-object v3, p0, Lo/fromMediaItemList;->asInterface:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 110
    iget-object v3, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    .line 114
    iget-object v0, p0, Lo/fromMediaItemList;->asInterface:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 115
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    not-int p1, v2

    return p1
.end method

.method public onPostMessage(Lo/fromMediaItemList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromMediaItemList<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 498
    iget v0, p1, Lo/fromMediaItemList;->ICustomTabsCallback:I

    .line 499
    iget v1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lo/fromMediaItemList;->ICustomTabsCallback(I)V

    .line 500
    iget v1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 502
    iget-object v1, p1, Lo/fromMediaItemList;->asInterface:[I

    iget-object v3, p0, Lo/fromMediaItemList;->asInterface:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget-object p1, p1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    iget-object v1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iput v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    return-void

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2390
    iget-object v1, p1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v2, 0x1

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 2399
    aget-object v1, v1, v3

    .line 508
    invoke-virtual {p0, v4, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 432
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 437
    invoke-virtual {p0}, Lo/fromMediaItemList;->extraCallback()I

    move-result v2

    const/4 v3, 0x0

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 440
    invoke-virtual {p0, p1, v2}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_0
    if-ltz v2, :cond_1

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 444
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 445
    aput-object p2, v0, p1

    return-object v1

    :cond_1
    not-int v2, v2

    .line 450
    iget-object v4, p0, Lo/fromMediaItemList;->asInterface:[I

    array-length v4, v4

    if-lt v0, v4, :cond_6

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v0, v5, :cond_2

    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    if-lt v0, v4, :cond_3

    const/16 v4, 0x8

    .line 456
    :cond_3
    :goto_1
    iget-object v5, p0, Lo/fromMediaItemList;->asInterface:[I

    .line 457
    iget-object v6, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    .line 458
    invoke-direct {p0, v4}, Lo/fromMediaItemList;->onPostMessage(I)V

    .line 460
    iget v4, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ne v0, v4, :cond_5

    .line 464
    iget-object v4, p0, Lo/fromMediaItemList;->asInterface:[I

    array-length v7, v4

    if-lez v7, :cond_4

    .line 466
    array-length v7, v5

    invoke-static {v5, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    iget-object v4, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    :cond_4
    invoke-static {v5, v6, v0}, Lo/fromMediaItemList;->extraCallback([I[Ljava/lang/Object;I)V

    goto :goto_2

    .line 461
    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-ge v2, v0, :cond_7

    .line 476
    iget-object v1, p0, Lo/fromMediaItemList;->asInterface:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object v1, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    :cond_7
    iget v1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lo/fromMediaItemList;->asInterface:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 486
    aput v3, v0, v2

    .line 487
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, v2, 0x1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 488
    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    .line 489
    iput v1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    const/4 p1, 0x0

    return-object p1

    .line 482
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0, p1, p2}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3322
    invoke-virtual {p0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 540
    invoke-virtual {p0, p1}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    if-nez p1, :cond_0

    .line 4322
    invoke-virtual {p0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    .line 4399
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_2

    .line 556
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 557
    :cond_1
    invoke-virtual {p0, p1}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5322
    invoke-virtual {p0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_1

    .line 639
    invoke-virtual {p0, p1, p2}, Lo/fromMediaItemList;->onMessageChannelReady(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 6322
    invoke-virtual {p0}, Lo/fromMediaItemList;->extraCallback()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lo/fromMediaItemList;->onPostMessage(Ljava/lang/Object;I)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    .line 6399
    iget-object v0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_2

    .line 656
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 657
    :cond_1
    invoke-virtual {p0, p1, p3}, Lo/fromMediaItemList;->onMessageChannelReady(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 668
    iget v0, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 762
    invoke-virtual {p0}, Lo/fromMediaItemList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 766
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 768
    :goto_0
    iget v2, p0, Lo/fromMediaItemList;->ICustomTabsCallback:I

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_1

    const-string v2, ", "

    .line 770
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9390
    :cond_1
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    const-string v4, "(this Map)"

    if-eq v2, p0, :cond_2

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 776
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v2, 0x3d

    .line 778
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9399
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    if-eq v2, p0, :cond_3

    .line 781
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 783
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
