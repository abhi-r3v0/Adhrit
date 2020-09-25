.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PaymentSliderJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:J

.field private asBinder:J

.field private asInterface:Ljava/io/FileOutputStream;

.field private final extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:J

.field private onPostMessage:Lo/PaymentRequestJsonAdapter;

.field private onRelationshipValidationResult:Ljava/io/File;

.field private onTransact:Ljava/io/OutputStream;

.field private warmup:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V
    .locals 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gtz v4, :cond_1

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "fragmentSize must be positive or C.LENGTH_UNSET."

    .line 97
    invoke-static {v2, v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onNavigationEvent(ZLjava/lang/Object;)V

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    const-wide/32 v0, 0x200000

    cmp-long v3, p2, v0

    if-gez v3, :cond_2

    const-string v0, "CacheDataSink"

    const-string v1, "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance."

    .line 101
    invoke-static {v0, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v2, :cond_3

    const-wide p2, 0x7fffffffffffffffL

    .line 108
    :cond_3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onNavigationEvent:J

    .line 109
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onMessageChannelReady:I

    return-void
.end method

.method private extraCallback()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    iget-wide v0, v0, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    iget-wide v0, v0, Lo/PaymentRequestJsonAdapter;->asBinder:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->asBinder:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback:J

    .line 170
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_0
    move-wide v8, v2

    .line 171
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    iget-object v5, v0, Lo/PaymentRequestJsonAdapter;->onRelationshipValidationResult:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    iget-wide v0, v0, Lo/PaymentRequestJsonAdapter;->onMessageChannelReady:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->asBinder:J

    add-long v6, v0, v2

    .line 172
    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->onMessageChannelReady(Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onRelationshipValidationResult:Ljava/io/File;

    .line 174
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onRelationshipValidationResult:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->asInterface:Ljava/io/FileOutputStream;

    .line 175
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onMessageChannelReady:I

    if-lez v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->warmup:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    if-nez v1, :cond_1

    .line 177
    new-instance v0, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->asInterface:Ljava/io/FileOutputStream;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onMessageChannelReady:I

    invoke-direct {v0, v1, v2}, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->warmup:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {v1, v0}, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/io/OutputStream;)V

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->warmup:Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    goto :goto_2

    .line 184
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    :goto_2
    const-wide/16 v0, 0x0

    .line 186
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback$Stub:J

    return-void
.end method

.method private onNavigationEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 197
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 201
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onRelationshipValidationResult:Ljava/io/File;

    .line 203
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onRelationshipValidationResult:Ljava/io/File;

    .line 205
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->extraCallback:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback$Stub:J

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->onNavigationEvent(Ljava/io/File;J)V

    return-void

    :catchall_0
    move-exception v0

    .line 200
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    invoke-static {v2}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/io/Closeable;)V

    .line 201
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    .line 202
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onRelationshipValidationResult:Ljava/io/File;

    .line 203
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onRelationshipValidationResult:Ljava/io/File;

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 209
    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 138
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback$Stub:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onNavigationEvent()V

    .line 140
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->extraCallback()V

    :cond_1
    sub-int v1, p3, v0

    int-to-long v1, v1

    .line 142
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback$Stub:J

    sub-long/2addr v3, v5

    .line 143
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 144
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onTransact:Ljava/io/OutputStream;

    add-int v3, p2, v0

    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v0, v2

    .line 146
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback$Stub:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback$Stub:J

    .line 147
    iget-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->asBinder:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->asBinder:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_2
    return-void
.end method

.method public final extraCallback(Lo/PaymentRequestJsonAdapter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 114
    iget-wide v0, p1, Lo/PaymentRequestJsonAdapter;->asBinder:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x4

    .line 115
    invoke-virtual {p1, v0}, Lo/PaymentRequestJsonAdapter;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    const/16 v0, 0x8

    .line 121
    invoke-virtual {p1, v0}, Lo/PaymentRequestJsonAdapter;->extraCallback(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onNavigationEvent:J

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->ICustomTabsCallback:J

    const-wide/16 v0, 0x0

    .line 122
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->asBinder:J

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->extraCallback()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final onMessageChannelReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onPostMessage:Lo/PaymentRequestJsonAdapter;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$CacheDataSinkException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
