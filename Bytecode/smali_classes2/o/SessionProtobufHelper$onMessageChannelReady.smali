.class final Lo/SessionProtobufHelper$onMessageChannelReady;
.super Lo/SessionProtobufHelper$asInterface;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionProtobufHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:I

.field private final onPostMessage:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1550
    invoke-direct {p0, p1}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    add-int v0, p2, p3

    .line 1551
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lo/SessionProtobufHelper$onMessageChannelReady;->onMessageChannelReady(III)I

    .line 1553
    iput p2, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onPostMessage:I

    .line 1554
    iput p3, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onMessageChannelReady:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final ICustomTabsCallback([BIII)V
    .locals 2

    .line 1595
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    .line 2586
    iget v1, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onPostMessage:I

    add-int/2addr v1, p2

    .line 1595
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final asInterface()I
    .locals 1

    .line 1586
    iget v0, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onPostMessage:I

    return v0
.end method

.method final onMessageChannelReady(I)B
    .locals 2

    .line 1576
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    iget v1, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onPostMessage:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 1581
    iget v0, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onMessageChannelReady:I

    return v0
.end method

.method public final onNavigationEvent(I)B
    .locals 2

    .line 2581
    iget v0, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onMessageChannelReady:I

    .line 1570
    invoke-static {p1, v0}, Lo/SessionProtobufHelper$onMessageChannelReady;->onPostMessage(II)V

    .line 1571
    iget-object v0, p0, Lo/SessionProtobufHelper$asInterface;->ICustomTabsCallback:[B

    iget v1, p0, Lo/SessionProtobufHelper$onMessageChannelReady;->onPostMessage:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1605
    invoke-virtual {p0}, Lo/SessionProtobufHelper;->onPostMessage()[B

    move-result-object v0

    .line 3391
    new-instance v1, Lo/SessionProtobufHelper$asInterface;

    invoke-direct {v1, v0}, Lo/SessionProtobufHelper$asInterface;-><init>([B)V

    return-object v1
.end method
