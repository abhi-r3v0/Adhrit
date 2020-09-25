.class final Lo/onDisconnectMerge$onMessageChannelReady;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDisconnectMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onDisconnectMerge;


# direct methods
.method private constructor <init>(Lo/onDisconnectMerge;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lo/onDisconnectMerge$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectMerge;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/onDisconnectMerge;B)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lo/onDisconnectMerge$onMessageChannelReady;-><init>(Lo/onDisconnectMerge;)V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 372
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 377
    iget-object v0, p0, Lo/onDisconnectMerge$onMessageChannelReady;->onMessageChannelReady:Lo/onDisconnectMerge;

    .line 1043
    invoke-virtual {v0, p1, p2, p3}, Lo/onDisconnectMerge;->onMessageChannelReady([BII)V

    return-void
.end method
