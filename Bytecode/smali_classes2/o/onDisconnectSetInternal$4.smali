.class final Lo/onDisconnectSetInternal$4;
.super Lo/getStartPost;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onDisconnectSetInternal;-><init>(Lo/fullLimitUpdateChild;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/onDisconnectSetInternal;


# direct methods
.method constructor <init>(Lo/onDisconnectSetInternal;Lo/toLog;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lo/onDisconnectSetInternal$4;->onPostMessage:Lo/onDisconnectSetInternal;

    invoke-direct {p0, p2}, Lo/getStartPost;-><init>(Lo/toLog;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/onDisconnectSetInternal$4;->onPostMessage:Lo/onDisconnectSetInternal;

    .line 1037
    iget v0, v0, Lo/onDisconnectSetInternal;->extraCallback:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 57
    :cond_0
    iget-object v0, p0, Lo/onDisconnectSetInternal$4;->onPostMessage:Lo/onDisconnectSetInternal;

    .line 2037
    iget v0, v0, Lo/onDisconnectSetInternal;->extraCallback:I

    int-to-long v3, v0

    .line 57
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lo/getStartPost;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    return-wide v1

    .line 59
    :cond_1
    iget-object p3, p0, Lo/onDisconnectSetInternal$4;->onPostMessage:Lo/onDisconnectSetInternal;

    .line 3037
    iget v0, p3, Lo/onDisconnectSetInternal;->extraCallback:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v1, v0

    .line 4037
    iput v1, p3, Lo/onDisconnectSetInternal;->extraCallback:I

    return-wide p1
.end method
