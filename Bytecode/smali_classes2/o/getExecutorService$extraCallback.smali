.class final Lo/getExecutorService$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/getExecutorService;


# direct methods
.method private constructor <init>(Lo/getExecutorService;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getExecutorService;B)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lo/getExecutorService$extraCallback;-><init>(Lo/getExecutorService;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/getExecutorService$extraCallback;I)V
    .locals 8

    .line 8089
    iget-object v0, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 9038
    iget v0, v0, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 8089
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 10038
    iget v1, v1, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 8092
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8093
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 11038
    iget-object v1, v1, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    .line 8093
    iget-object v2, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 12038
    iget-object v2, v2, Lo/getExecutorService;->onNavigationEvent:[B

    .line 8093
    iget-object v3, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 13038
    iget v3, v3, Lo/getExecutorService;->onMessageChannelReady:I

    .line 8093
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 8094
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 14038
    iget v2, v1, Lo/getExecutorService;->onMessageChannelReady:I

    add-int/2addr v2, v0

    iput v2, v1, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    const/16 v1, 0x200

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    sub-int v5, v0, v4

    .line 8102
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 8103
    iget-object v6, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 15038
    iget-object v6, v6, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 15091
    new-instance v7, Lo/buildPennant$5;

    invoke-direct {v7, v3, v2}, Lo/buildPennant$5;-><init>(I[B)V

    invoke-virtual {v6, v7, v5}, Lo/buildPennant;->onPostMessage(Lo/buildPennant$extraCallback;I)V

    .line 8104
    iget-object v6, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 16038
    iget-object v6, v6, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    .line 8104
    invoke-virtual {v6, v2, v3, v5}, Ljava/util/zip/CRC32;->update([BII)V

    add-int/2addr v4, v5

    goto :goto_1

    .line 8109
    :cond_1
    iget-object p0, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 17038
    iget v0, p0, Lo/getExecutorService;->getInterfaceDescriptor:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/getExecutorService;->getInterfaceDescriptor:I

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getExecutorService$extraCallback;)Z
    .locals 2

    .line 18113
    :cond_0
    iget-object v0, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 19038
    iget v0, v0, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 18113
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 20038
    iget v1, v1, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    .line 18113
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 21038
    iget-object v1, v1, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 21063
    iget v1, v1, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 17119
    invoke-virtual {p0}, Lo/getExecutorService$extraCallback;->extraCallback()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final extraCallback()I
    .locals 3

    .line 67
    iget-object v0, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 1038
    iget v0, v0, Lo/getExecutorService;->ICustomTabsCallback$Stub:I

    .line 67
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 2038
    iget v1, v1, Lo/getExecutorService;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 3038
    iget-object v0, v0, Lo/getExecutorService;->onNavigationEvent:[B

    .line 70
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 4038
    iget v1, v1, Lo/getExecutorService;->onMessageChannelReady:I

    .line 70
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 71
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 5038
    iget v2, v1, Lo/getExecutorService;->onMessageChannelReady:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lo/getExecutorService;->onMessageChannelReady:I

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 6038
    iget-object v0, v0, Lo/getExecutorService;->ICustomTabsCallback:Lo/buildPennant;

    .line 73
    invoke-virtual {v0}, Lo/buildPennant;->extraCallback()I

    move-result v0

    .line 75
    :goto_0
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 7038
    iget-object v1, v1, Lo/getExecutorService;->extraCallback:Ljava/util/zip/CRC32;

    .line 75
    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 76
    iget-object v1, p0, Lo/getExecutorService$extraCallback;->onPostMessage:Lo/getExecutorService;

    .line 8038
    iget v2, v1, Lo/getExecutorService;->getInterfaceDescriptor:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lo/getExecutorService;->getInterfaceDescriptor:I

    return v0
.end method
