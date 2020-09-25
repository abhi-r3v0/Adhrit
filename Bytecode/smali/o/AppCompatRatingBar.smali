.class public final Lo/AppCompatRatingBar;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private final ICustomTabsCallback:Ljava/io/OutputStream;

.field private extraCallback:I

.field private onNavigationEvent:Lo/ButtonBarLayout;

.field private onPostMessage:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lo/ButtonBarLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lo/AppCompatRatingBar;-><init>(Ljava/io/OutputStream;Lo/ButtonBarLayout;B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Lo/ButtonBarLayout;B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 25
    iput-object p1, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    .line 26
    iput-object p2, p0, Lo/AppCompatRatingBar;->onNavigationEvent:Lo/ButtonBarLayout;

    .line 27
    const-class p1, [B

    const/high16 p3, 0x10000

    invoke-interface {p2, p3, p1}, Lo/ButtonBarLayout;->onNavigationEvent(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

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

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 4096
    iget-object v0, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    if-eqz v0, :cond_0

    .line 4097
    iget-object v1, p0, Lo/AppCompatRatingBar;->onNavigationEvent:Lo/ButtonBarLayout;

    invoke-interface {v1, v0}, Lo/ButtonBarLayout;->ICustomTabsCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4098
    iput-object v0, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 90
    iget-object v1, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4073
    iget v0, p0, Lo/AppCompatRatingBar;->extraCallback:I

    if-lez v0, :cond_0

    .line 4074
    iget-object v1, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    iget-object v2, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 4075
    iput v3, p0, Lo/AppCompatRatingBar;->extraCallback:I

    .line 69
    :cond_0
    iget-object v0, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    iget v1, p0, Lo/AppCompatRatingBar;->extraCallback:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/AppCompatRatingBar;->extraCallback:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1080
    array-length p1, v0

    if-ne v2, p1, :cond_0

    if-lez v2, :cond_0

    .line 2074
    iget-object p1, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 2075
    iput v1, p0, Lo/AppCompatRatingBar;->extraCallback:I

    :cond_0
    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    sub-int v2, p3, v1

    add-int v3, p2, v1

    .line 49
    iget v4, p0, Lo/AppCompatRatingBar;->extraCallback:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 50
    iget-object p2, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    invoke-virtual {p2, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    .line 54
    :cond_1
    iget-object v4, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    array-length v4, v4

    iget v5, p0, Lo/AppCompatRatingBar;->extraCallback:I

    sub-int/2addr v4, v5

    .line 55
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 57
    iget-object v4, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    iget v5, p0, Lo/AppCompatRatingBar;->extraCallback:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget v3, p0, Lo/AppCompatRatingBar;->extraCallback:I

    add-int/2addr v3, v2

    iput v3, p0, Lo/AppCompatRatingBar;->extraCallback:I

    add-int/2addr v1, v2

    .line 2080
    iget-object v2, p0, Lo/AppCompatRatingBar;->onPostMessage:[B

    array-length v4, v2

    if-ne v3, v4, :cond_2

    if-lez v3, :cond_2

    .line 3074
    iget-object v4, p0, Lo/AppCompatRatingBar;->ICustomTabsCallback:Ljava/io/OutputStream;

    invoke-virtual {v4, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 3075
    iput v0, p0, Lo/AppCompatRatingBar;->extraCallback:I

    :cond_2
    if-lt v1, p3, :cond_0

    return-void
.end method
