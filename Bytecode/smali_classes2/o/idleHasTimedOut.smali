.class final Lo/idleHasTimedOut;
.super Lo/setLeft;
.source ""


# instance fields
.field private final extraCallback:Lo/updatePriority;


# direct methods
.method constructor <init>(Lo/updatePriority;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/setLeft;-><init>()V

    .line 33
    iput-object p1, p0, Lo/idleHasTimedOut;->extraCallback:Lo/updatePriority;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    .line 58
    iget-object v0, p0, Lo/idleHasTimedOut;->extraCallback:Lo/updatePriority;

    invoke-virtual {v0, p1, p2, p3}, Lo/updatePriority;->extraCallback([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "EOF trying to read "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 3

    .line 87
    iget-object v0, p0, Lo/idleHasTimedOut;->extraCallback:Lo/updatePriority;

    .line 1930
    :try_start_0
    iget-wide v1, v0, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->asInterface(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1932
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final extraCallback()I
    .locals 1

    .line 43
    iget-object v0, p0, Lo/idleHasTimedOut;->extraCallback:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final onPostMessage()I
    .locals 2

    .line 38
    iget-object v0, p0, Lo/idleHasTimedOut;->extraCallback:Lo/updatePriority;

    .line 1067
    iget-wide v0, v0, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v1, v0

    return v1
.end method

.method public final onPostMessage(I)Lo/onServerInfoUpdate;
    .locals 4

    .line 80
    new-instance v0, Lo/updatePriority;

    invoke-direct {v0}, Lo/updatePriority;-><init>()V

    .line 81
    iget-object v1, p0, Lo/idleHasTimedOut;->extraCallback:Lo/updatePriority;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 82
    new-instance p1, Lo/idleHasTimedOut;

    invoke-direct {p1, v0}, Lo/idleHasTimedOut;-><init>(Lo/updatePriority;)V

    return-object p1
.end method
