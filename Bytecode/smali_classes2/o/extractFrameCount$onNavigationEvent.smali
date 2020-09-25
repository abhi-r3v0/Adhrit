.class final Lo/extractFrameCount$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/extractFrameCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/WireFormat$FieldType$2;",
        ">",
        "Ljava/lang/Object;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final extraCallback:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/Reference<",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/WireFormat$FieldType$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/extractFrameCount$onNavigationEvent;->extraCallback:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lo/WireFormat$FieldType$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lo/extractFrameCount$onNavigationEvent;->ICustomTabsCallback:Lo/WireFormat$FieldType$2;

    .line 128
    invoke-interface {p1}, Lo/WireFormat$FieldType$2;->getParserForType()Lo/areReportsAvailable;

    move-result-object p1

    iput-object p1, p0, Lo/extractFrameCount$onNavigationEvent;->onPostMessage:Lo/areReportsAvailable;

    return-void
.end method

.method private onNavigationEvent(Ljava/io/InputStream;)Lo/WireFormat$FieldType$2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 151
    instance-of v0, p1, Lo/nop;

    if-eqz v0, :cond_1

    .line 152
    move-object v0, p1

    check-cast v0, Lo/nop;

    .line 1123
    iget-object v0, v0, Lo/nop;->ICustomTabsCallback:Lo/areReportsAvailable;

    .line 160
    iget-object v1, p0, Lo/extractFrameCount$onNavigationEvent;->onPostMessage:Lo/areReportsAvailable;

    if-ne v0, v1, :cond_1

    .line 163
    :try_start_0
    move-object v0, p1

    check-cast v0, Lo/nop;

    .line 2116
    iget-object v1, v0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    if-eqz v1, :cond_0

    .line 2119
    iget-object p1, v0, Lo/nop;->onNavigationEvent:Lo/WireFormat$FieldType$2;

    return-object p1

    .line 2117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 174
    :try_start_1
    instance-of v1, p1, Lo/commaSeparatedList;

    if-eqz v1, :cond_7

    .line 175
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_6

    const/high16 v2, 0x400000

    if-gt v1, v2, :cond_6

    .line 180
    sget-object v0, Lo/extractFrameCount$onNavigationEvent;->extraCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    array-length v2, v0

    if-ge v2, v1, :cond_3

    .line 181
    :cond_2
    new-array v0, v1, [B

    .line 182
    sget-object v2, Lo/extractFrameCount$onNavigationEvent;->extraCallback:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    move v2, v1

    :goto_0
    if-lez v2, :cond_4

    sub-int v3, v1, v2

    .line 188
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 199
    invoke-static {v0, v2, v1}, Lo/writeSessionAppClsId;->onMessageChannelReady([BII)Lo/writeSessionAppClsId;

    move-result-object v0

    goto :goto_1

    :cond_5
    sub-int p1, v1, v2

    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "size inaccurate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " != "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v1, :cond_7

    .line 201
    iget-object p1, p0, Lo/extractFrameCount$onNavigationEvent;->ICustomTabsCallback:Lo/WireFormat$FieldType$2;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :cond_7
    :goto_1
    if-nez v0, :cond_8

    .line 208
    invoke-static {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;

    move-result-object v0

    :cond_8
    const p1, 0x7fffffff

    .line 2415
    iput p1, v0, Lo/writeSessionAppClsId;->onNavigationEvent:I

    .line 215
    :try_start_2
    invoke-direct {p0, v0}, Lo/extractFrameCount$onNavigationEvent;->onNavigationEvent(Lo/writeSessionAppClsId;)Lo/WireFormat$FieldType$2;

    move-result-object p1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 217
    sget-object v0, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v1, "Invalid protobuf byte sequence"

    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p1

    .line 2524
    new-instance v0, Lio/grpc/StatusRuntimeException;

    invoke-direct {v0, p1}, Lio/grpc/StatusRuntimeException;-><init>(Lo/emptyMap;)V

    .line 218
    throw v0

    :catch_2
    move-exception p1

    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private onNavigationEvent(Lo/writeSessionAppClsId;)Lo/WireFormat$FieldType$2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeSessionAppClsId;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lo/extractFrameCount$onNavigationEvent;->onPostMessage:Lo/areReportsAvailable;

    sget-object v1, Lo/extractFrameCount;->onPostMessage:Lo/writeSessionEventDevice;

    invoke-interface {v0, p1, v1}, Lo/areReportsAvailable;->extraCallback(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/WireFormat$FieldType$2;

    const/4 v1, 0x0

    .line 225
    :try_start_0
    invoke-virtual {p1, v1}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 229
    throw p1
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lo/extractFrameCount$onNavigationEvent;->onNavigationEvent(Ljava/io/InputStream;)Lo/WireFormat$FieldType$2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    .line 118
    check-cast p1, Lo/WireFormat$FieldType$2;

    .line 3146
    new-instance v0, Lo/nop;

    iget-object v1, p0, Lo/extractFrameCount$onNavigationEvent;->onPostMessage:Lo/areReportsAvailable;

    invoke-direct {v0, p1, v1}, Lo/nop;-><init>(Lo/WireFormat$FieldType$2;Lo/areReportsAvailable;)V

    return-object v0
.end method
