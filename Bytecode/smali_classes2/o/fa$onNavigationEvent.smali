.class public Lo/fa$onNavigationEvent;
.super Lo/eE;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/fa<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/fa$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Lo/eE<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected extraCallback:Z

.field protected onPostMessage:Lo/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/fa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/eE;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fa$onNavigationEvent;->ICustomTabsCallback:Lo/fa;

    .line 3
    sget v0, Lo/fa$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lo/fa;

    iput-object p1, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    return-void
.end method

.method private final extraCallback([BIILo/getMaxSize;)Lo/fa$onNavigationEvent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/getMaxSize;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 36
    iget-boolean p2, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object p2

    iget-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    invoke-virtual {p2, v0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v1

    iget-object v2, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    const/4 v4, 0x0

    new-instance v6, Lo/eI;

    invoke-direct {v6, p4}, Lo/eI;-><init>(Lo/getMaxSize;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lo/fP;->ICustomTabsCallback(Ljava/lang/Object;[BIILo/eI;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzig; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 43
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onMessageChannelReady()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 41
    throw p1
.end method

.method private final onMessageChannelReady(Lo/eL;Lo/getMaxSize;)Lo/fa$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/eL;",
            "Lo/getMaxSize;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 51
    :cond_0
    :try_start_0
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v0

    iget-object v1, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    invoke-virtual {v0, v1}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v0

    iget-object v1, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    .line 52
    invoke-static {p1}, Lo/eP;->onPostMessage(Lo/eL;)Lo/eP;

    move-result-object p1

    .line 53
    invoke-interface {v0, v1, p1, p2}, Lo/fP;->extraCallback(Ljava/lang/Object;Lo/ef;Lo/getMaxSize;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 58
    :cond_1
    throw p1
.end method

.method private static onNavigationEvent(Lo/fa;Lo/fa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lo/fP;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic ICustomTabsService$Stub()Lo/ek;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->ICustomTabsService$Stub$Proxy()Lo/fa;

    move-result-object v0

    return-object v0
.end method

.method public ICustomTabsService$Stub$Proxy()Lo/fa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    .line 18
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/fP;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 20
    iget-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    return-object v0
.end method

.method public final IPostMessageService()Lo/fa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->ICustomTabsService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    .line 22
    invoke-virtual {v0}, Lo/fa;->onProgressUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzko;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzko;-><init>(Lo/ek;)V

    .line 25
    throw v1
.end method

.method public synthetic IPostMessageService$Stub()Lo/ek;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->IPostMessageService()Lo/fa;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic MediaBrowserCompat$ItemCallback()Lo/ek;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/fa$onNavigationEvent;->ICustomTabsCallback:Lo/fa;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/fa$onNavigationEvent;->ICustomTabsCallback:Lo/fa;

    .line 77
    check-cast v0, Lo/fa;

    .line 78
    sget v1, Lo/fa$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, v1, v2, v2}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Lo/fa$onNavigationEvent;

    .line 82
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->ICustomTabsService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    invoke-virtual {v0, v1}, Lo/fa$onNavigationEvent;->onMessageChannelReady(Lo/fa;)Lo/fa$onNavigationEvent;

    return-object v0
.end method

.method protected final synthetic extraCallback(Lo/ab$a;)Lo/eE;
    .locals 0

    .line 60
    check-cast p1, Lo/fa;

    .line 61
    invoke-virtual {p0, p1}, Lo/fa$onNavigationEvent;->onMessageChannelReady(Lo/fa;)Lo/fa$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic extraCallback(Lo/eL;Lo/getMaxSize;)Lo/eE;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Lo/fa$onNavigationEvent;->onMessageChannelReady(Lo/eL;Lo/getMaxSize;)Lo/fa$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mayLaunchUrl()Lo/eE;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lo/eE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fa$onNavigationEvent;

    return-object v0
.end method

.method public final synthetic onMessageChannelReady([BII)Lo/eE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 65
    invoke-static {}, Lo/getMaxSize;->extraCallback()Lo/getMaxSize;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p2}, Lo/fa$onNavigationEvent;->extraCallback([BIILo/getMaxSize;)Lo/fa$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/fa;)Lo/fa$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    invoke-static {v0, p1}, Lo/fa$onNavigationEvent;->onNavigationEvent(Lo/fa;Lo/fa;)V

    return-object p0
.end method

.method public final synthetic onNavigationEvent([BIILo/getMaxSize;)Lo/eE;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    const/4 p2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lo/fa$onNavigationEvent;->extraCallback([BIILo/getMaxSize;)Lo/fa$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final onProgressUpdate()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/fa;->onMessageChannelReady(Lo/fa;Z)Z

    move-result v0

    return v0
.end method

.method protected validateRelationship()V
    .locals 3

    .line 8
    iget-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    sget v1, Lo/fa$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lo/fa;

    .line 11
    iget-object v1, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    invoke-static {v0, v1}, Lo/fa$onNavigationEvent;->onNavigationEvent(Lo/fa;Lo/fa;)V

    .line 12
    iput-object v0, p0, Lo/fa$onNavigationEvent;->onPostMessage:Lo/fa;

    return-void
.end method
