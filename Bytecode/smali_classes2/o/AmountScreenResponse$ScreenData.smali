.class public final Lo/AmountScreenResponse$ScreenData;
.super Ljava/io/ByteArrayOutputStream;


# instance fields
.field private final onNavigationEvent:Lo/ReferredContactsJsonAdapter;


# direct methods
.method public constructor <init>(Lo/ReferredContactsJsonAdapter;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lo/AmountScreenResponse$ScreenData;->onNavigationEvent:Lo/ReferredContactsJsonAdapter;

    const/16 v0, 0x100

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lo/ReferredContactsJsonAdapter;->onPostMessage(I)[B

    move-result-object p1

    iput-object p1, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 3

    iget v0, p0, Lo/AmountScreenResponse$ScreenData;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/AmountScreenResponse$ScreenData;->onNavigationEvent:Lo/ReferredContactsJsonAdapter;

    iget v1, p0, Lo/AmountScreenResponse$ScreenData;->count:I

    add-int/2addr v1, p1

    shl-int/lit8 p1, v1, 0x1

    invoke-virtual {v0, p1}, Lo/ReferredContactsJsonAdapter;->onPostMessage(I)[B

    move-result-object p1

    iget-object v0, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    iget v1, p0, Lo/AmountScreenResponse$ScreenData;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lo/AmountScreenResponse$ScreenData;->onNavigationEvent:Lo/ReferredContactsJsonAdapter;

    iget-object v1, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    invoke-virtual {v0, v1}, Lo/ReferredContactsJsonAdapter;->onNavigationEvent([B)V

    iput-object p1, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo/AmountScreenResponse$ScreenData;->onNavigationEvent:Lo/ReferredContactsJsonAdapter;

    iget-object v1, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    invoke-virtual {v0, v1}, Lo/ReferredContactsJsonAdapter;->onNavigationEvent([B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public final finalize()V
    .locals 2

    iget-object v0, p0, Lo/AmountScreenResponse$ScreenData;->onNavigationEvent:Lo/ReferredContactsJsonAdapter;

    iget-object v1, p0, Lo/AmountScreenResponse$ScreenData;->buf:[B

    invoke-virtual {v0, v1}, Lo/ReferredContactsJsonAdapter;->onNavigationEvent([B)V

    return-void
.end method

.method public final declared-synchronized write(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lo/AmountScreenResponse$ScreenData;->ICustomTabsCallback(I)V

    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lo/AmountScreenResponse$ScreenData;->ICustomTabsCallback(I)V

    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
