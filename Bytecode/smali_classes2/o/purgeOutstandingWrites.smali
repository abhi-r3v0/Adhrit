.class public final Lo/purgeOutstandingWrites;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/purgeOutstandingWrites$extraCallback;,
        Lo/purgeOutstandingWrites$ICustomTabsCallback;,
        Lo/purgeOutstandingWrites$onNavigationEvent;
    }
.end annotation


# static fields
.field static final synthetic asBinder:Z


# instance fields
.field ICustomTabsCallback:J

.field public final ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

.field public final asInterface:Lo/purgeOutstandingWrites$extraCallback;

.field final extraCallback:I

.field private getInterfaceDescriptor:Lo/getReferenceFromUrl;

.field onMessageChannelReady:J

.field final onNavigationEvent:Lo/setPersistenceEnabled;

.field onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;"
        }
    .end annotation
.end field

.field final onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

.field public final onTransact:Lo/purgeOutstandingWrites$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lo/purgeOutstandingWrites;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lo/purgeOutstandingWrites;->asBinder:Z

    return-void
.end method

.method constructor <init>(ILo/setPersistenceEnabled;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/setPersistenceEnabled;",
            "ZZ",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback:J

    .line 66
    new-instance v0, Lo/purgeOutstandingWrites$extraCallback;

    invoke-direct {v0, p0}, Lo/purgeOutstandingWrites$extraCallback;-><init>(Lo/purgeOutstandingWrites;)V

    iput-object v0, p0, Lo/purgeOutstandingWrites;->onTransact:Lo/purgeOutstandingWrites$extraCallback;

    .line 67
    new-instance v0, Lo/purgeOutstandingWrites$extraCallback;

    invoke-direct {v0, p0}, Lo/purgeOutstandingWrites$extraCallback;-><init>(Lo/purgeOutstandingWrites;)V

    iput-object v0, p0, Lo/purgeOutstandingWrites;->asInterface:Lo/purgeOutstandingWrites$extraCallback;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    if-eqz p2, :cond_3

    if-eqz p5, :cond_2

    .line 80
    iput p1, p0, Lo/purgeOutstandingWrites;->extraCallback:I

    .line 81
    iput-object p2, p0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    .line 82
    iget-object p1, p2, Lo/setPersistenceEnabled;->asBinder:Lo/isZombied$onPostMessage;

    .line 1198
    iget p5, p1, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 p5, p5, 0x80

    const/4 v0, 0x7

    const/high16 v1, 0x10000

    if-eqz p5, :cond_0

    iget-object p1, p1, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000

    :goto_0
    int-to-long v2, p1

    .line 83
    iput-wide v2, p0, Lo/purgeOutstandingWrites;->onMessageChannelReady:J

    .line 84
    new-instance p1, Lo/purgeOutstandingWrites$onNavigationEvent;

    iget-object p2, p2, Lo/setPersistenceEnabled;->onNavigationEvent:Lo/isZombied$onPostMessage;

    .line 2198
    iget p5, p2, Lo/isZombied$onPostMessage;->ICustomTabsCallback:I

    and-int/lit16 p5, p5, 0x80

    if-eqz p5, :cond_1

    iget-object p2, p2, Lo/isZombied$onPostMessage;->onNavigationEvent:[I

    aget v1, p2, v0

    :cond_1
    int-to-long v0, v1

    const/4 p2, 0x0

    .line 85
    invoke-direct {p1, p0, v0, v1, p2}, Lo/purgeOutstandingWrites$onNavigationEvent;-><init>(Lo/purgeOutstandingWrites;JB)V

    iput-object p1, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    .line 86
    new-instance p1, Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;-><init>(Lo/purgeOutstandingWrites;)V

    iput-object p1, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    .line 87
    iget-object p1, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    invoke-static {p1, p4}, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage(Lo/purgeOutstandingWrites$onNavigationEvent;Z)Z

    .line 88
    iget-object p1, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-static {p1, p3}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->ICustomTabsCallback(Lo/purgeOutstandingWrites$ICustomTabsCallback;Z)Z

    return-void

    .line 79
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/purgeOutstandingWrites;->onTransact:Lo/purgeOutstandingWrites$extraCallback;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/purgeOutstandingWrites;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7573
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-static {v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7575
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-static {v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7577
    iget-object v0, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    if-nez v0, :cond_0

    return-void

    .line 7578
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7576
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream finished"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7574
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic asInterface(Lo/purgeOutstandingWrites;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6448
    sget-boolean v0, Lo/purgeOutstandingWrites;->asBinder:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 6451
    :cond_1
    :goto_0
    monitor-enter p0

    .line 6452
    :try_start_0
    iget-object v0, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    invoke-static {v0}, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage(Lo/purgeOutstandingWrites$onNavigationEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    invoke-static {v0}, Lo/purgeOutstandingWrites$onNavigationEvent;->onNavigationEvent(Lo/purgeOutstandingWrites$onNavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-static {v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-static {v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 6453
    :goto_1
    invoke-virtual {p0}, Lo/purgeOutstandingWrites;->onPostMessage()Z

    move-result v1

    .line 6454
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 6460
    sget-object v0, Lo/getReferenceFromUrl;->asInterface:Lo/getReferenceFromUrl;

    .line 7219
    invoke-virtual {p0, v0}, Lo/purgeOutstandingWrites;->ICustomTabsCallback(Lo/getReferenceFromUrl;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7222
    iget-object v1, p0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget p0, p0, Lo/purgeOutstandingWrites;->extraCallback:I

    .line 7360
    iget-object v1, v1, Lo/setPersistenceEnabled;->asInterface:Lo/getReference;

    invoke-interface {v1, p0, v0}, Lo/getReference;->onNavigationEvent(ILo/getReferenceFromUrl;)V

    :cond_4
    return-void

    :cond_5
    if-nez v1, :cond_6

    .line 6462
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget p0, p0, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {v0, p0}, Lo/setPersistenceEnabled;->extraCallback(I)Lo/purgeOutstandingWrites;

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 6454
    monitor-exit p0

    throw v0
.end method

.method static synthetic extraCallback(Lo/purgeOutstandingWrites;)I
    .locals 0

    .line 35
    iget p0, p0, Lo/purgeOutstandingWrites;->extraCallback:I

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/purgeOutstandingWrites;)Lo/getReferenceFromUrl;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/purgeOutstandingWrites;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 5588
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5590
    :catch_0
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method static synthetic onPostMessage(Lo/purgeOutstandingWrites;)Lo/setPersistenceEnabled;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    return-object p0
.end method

.method static synthetic onTransact(Lo/purgeOutstandingWrites;)Lo/purgeOutstandingWrites$extraCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lo/purgeOutstandingWrites;->asInterface:Lo/purgeOutstandingWrites$extraCallback;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/setPersistenceCacheSizeBytes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onTransact:Lo/purgeOutstandingWrites$extraCallback;

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/4 v0, 0x0

    .line 139
    :try_start_1
    iget-object v1, p0, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 2588
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2590
    :catch_0
    :try_start_3
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    :cond_0
    :try_start_4
    iget-object v1, p0, Lo/purgeOutstandingWrites;->onTransact:Lo/purgeOutstandingWrites$extraCallback;

    .line 3120
    iget-boolean v2, v1, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 3121
    :cond_1
    iput-boolean v0, v1, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 3122
    invoke-static {v1}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 146
    :cond_2
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3605
    :cond_3
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 2613
    throw v0

    :catchall_0
    move-exception v1

    .line 143
    iget-object v2, p0, Lo/purgeOutstandingWrites;->onTransact:Lo/purgeOutstandingWrites$extraCallback;

    .line 4120
    iget-boolean v3, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    if-nez v3, :cond_4

    goto :goto_2

    .line 4121
    :cond_4
    iput-boolean v0, v2, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 4122
    invoke-static {v2}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_5

    .line 4605
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3613
    throw v0

    .line 143
    :cond_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final ICustomTabsCallback(Lo/getReferenceFromUrl;)Z
    .locals 2

    .line 238
    sget-boolean v0, Lo/purgeOutstandingWrites;->asBinder:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 239
    :cond_1
    :goto_0
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 241
    monitor-exit p0

    return v1

    .line 243
    :cond_2
    iget-object v0, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    invoke-static {v0}, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage(Lo/purgeOutstandingWrites$onNavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-static {v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    monitor-exit p0

    return v1

    .line 246
    :cond_3
    iput-object p1, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iget-object p1, p0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v0, p0, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {p1, v0}, Lo/setPersistenceEnabled;->extraCallback(I)Lo/purgeOutstandingWrites;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 248
    monitor-exit p0

    throw p1
.end method

.method final onMessageChannelReady()V
    .locals 2

    .line 290
    sget-boolean v0, Lo/purgeOutstandingWrites;->asBinder:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_1
    :goto_0
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage(Lo/purgeOutstandingWrites$onNavigationEvent;Z)Z

    .line 294
    invoke-virtual {p0}, Lo/purgeOutstandingWrites;->onPostMessage()Z

    move-result v0

    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget v1, p0, Lo/purgeOutstandingWrites;->extraCallback:I

    invoke-virtual {v0, v1}, Lo/setPersistenceEnabled;->extraCallback(I)Lo/purgeOutstandingWrites;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 296
    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized onMessageChannelReady(Lo/getReferenceFromUrl;)V
    .locals 1

    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    if-nez v0, :cond_0

    .line 304
    iput-object p1, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent()Lo/exceptionStacktrace;
    .locals 4

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;

    if-nez v0, :cond_3

    .line 5120
    iget v0, p0, Lo/purgeOutstandingWrites;->extraCallback:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5121
    :goto_0
    iget-object v3, p0, Lo/purgeOutstandingWrites;->onNavigationEvent:Lo/setPersistenceEnabled;

    iget-boolean v3, v3, Lo/setPersistenceEnabled;->extraCallback:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    return-object v0

    :catchall_0
    move-exception v0

    .line 210
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage()Z
    .locals 2

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lo/purgeOutstandingWrites;->getInterfaceDescriptor:Lo/getReferenceFromUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    monitor-exit p0

    return v1

    .line 110
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    invoke-static {v0}, Lo/purgeOutstandingWrites$onNavigationEvent;->onPostMessage(Lo/purgeOutstandingWrites$onNavigationEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/purgeOutstandingWrites;->ICustomTabsCallback$Stub:Lo/purgeOutstandingWrites$onNavigationEvent;

    invoke-static {v0}, Lo/purgeOutstandingWrites$onNavigationEvent;->onNavigationEvent(Lo/purgeOutstandingWrites$onNavigationEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    .line 111
    invoke-static {v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->onMessageChannelReady(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/purgeOutstandingWrites;->onRelationshipValidationResult:Lo/purgeOutstandingWrites$ICustomTabsCallback;

    invoke-static {v0}, Lo/purgeOutstandingWrites$ICustomTabsCallback;->extraCallback(Lo/purgeOutstandingWrites$ICustomTabsCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lo/purgeOutstandingWrites;->onPostMessage:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 113
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 115
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
