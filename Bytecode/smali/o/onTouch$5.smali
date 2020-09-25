.class final Lo/onTouch$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setInternalImageTint$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setInternalImageTint$onMessageChannelReady<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 61
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/onTouch$5;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 3

    .line 60
    check-cast p2, Ljava/lang/Long;

    .line 1068
    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1069
    iget-object p1, p0, Lo/onTouch$5;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    monitor-enter p1

    .line 1070
    :try_start_0
    iget-object v0, p0, Lo/onTouch$5;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1071
    iget-object v0, p0, Lo/onTouch$5;->onMessageChannelReady:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 1072
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method
