.class final Lo/isEmailVerified;
.super Ljava/io/InputStream;


# instance fields
.field private extraCallback:J

.field private final onPostMessage:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lo/isEmailVerified;->onPostMessage:Ljava/io/InputStream;

    iput-wide p2, p0, Lo/isEmailVerified;->extraCallback:J

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

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lo/isEmailVerified;->onPostMessage:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/isEmailVerified;->extraCallback:J

    return-void
.end method

.method public final read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lo/isEmailVerified;->extraCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/isEmailVerified;->extraCallback:J

    iget-object v0, p0, Lo/isEmailVerified;->onPostMessage:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lo/isEmailVerified;->extraCallback:J

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return v2

    :cond_0
    int-to-long v3, p3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object p3, p0, Lo/isEmailVerified;->onPostMessage:Ljava/io/InputStream;

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v2, :cond_1

    iget-wide p2, p0, Lo/isEmailVerified;->extraCallback:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lo/isEmailVerified;->extraCallback:J

    :cond_1
    return p1
.end method
