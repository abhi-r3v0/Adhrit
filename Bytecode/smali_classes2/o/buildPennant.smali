.class public final Lo/buildPennant;
.super Lo/setLeft;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/buildPennant$extraCallback;
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/onServerInfoUpdate;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/setLeft;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    return-void
.end method

.method private onNavigationEvent()V
    .locals 1

    .line 197
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onServerInfoUpdate;

    .line 198
    invoke-interface {v0}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/buildPennant;
    .locals 3

    .line 1052
    invoke-virtual {p0}, Lo/setLeft;->onPostMessage()I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 139
    iget v0, p0, Lo/buildPennant;->onPostMessage:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/buildPennant;->onPostMessage:I

    .line 141
    new-instance v0, Lo/buildPennant;

    invoke-direct {v0}, Lo/buildPennant;-><init>()V

    :goto_0
    if-lez p1, :cond_1

    .line 143
    iget-object v1, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/onServerInfoUpdate;

    .line 144
    invoke-interface {v1}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 145
    invoke-interface {v1, p1}, Lo/onServerInfoUpdate;->onPostMessage(I)Lo/onServerInfoUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/buildPennant;->onPostMessage(Lo/onServerInfoUpdate;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v2, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onServerInfoUpdate;

    invoke-virtual {v0, v2}, Lo/buildPennant;->onPostMessage(Lo/onServerInfoUpdate;)V

    .line 149
    invoke-interface {v1}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return-object v0

    .line 1053
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final ICustomTabsCallback([BII)V
    .locals 1

    .line 91
    new-instance v0, Lo/buildPennant$5;

    invoke-direct {v0, p2, p1}, Lo/buildPennant$5;-><init>(I[B)V

    invoke-virtual {p0, v0, p3}, Lo/buildPennant;->onPostMessage(Lo/buildPennant$extraCallback;I)V

    return-void
.end method

.method public final close()V
    .locals 1

    .line 157
    :goto_0
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onServerInfoUpdate;

    invoke-interface {v0}, Lo/onServerInfoUpdate;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback()I
    .locals 2

    .line 68
    new-instance v0, Lo/buildPennant$1;

    invoke-direct {v0}, Lo/buildPennant$1;-><init>()V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v0, v1}, Lo/buildPennant;->onPostMessage(Lo/buildPennant$extraCallback;I)V

    .line 75
    iget v0, v0, Lo/buildPennant$extraCallback;->onNavigationEvent:I

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 63
    iget v0, p0, Lo/buildPennant;->onPostMessage:I

    return v0
.end method

.method public final synthetic onPostMessage(I)Lo/onServerInfoUpdate;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lo/buildPennant;->ICustomTabsCallback(I)Lo/buildPennant;

    move-result-object p1

    return-object p1
.end method

.method onPostMessage(Lo/buildPennant$extraCallback;I)V
    .locals 2

    .line 2052
    invoke-virtual {p0}, Lo/setLeft;->onPostMessage()I

    move-result v0

    if-lt v0, p2, :cond_5

    .line 169
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lo/buildPennant;->onNavigationEvent()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    .line 173
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onServerInfoUpdate;

    .line 175
    invoke-interface {v0}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2220
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lo/buildPennant$extraCallback;->extraCallback(Lo/onServerInfoUpdate;I)I

    move-result v0

    iput v0, p1, Lo/buildPennant$extraCallback;->onNavigationEvent:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2222
    iput-object v0, p1, Lo/buildPennant$extraCallback;->onPostMessage:Ljava/io/IOException;

    .line 2227
    :goto_1
    iget-object v0, p1, Lo/buildPennant$extraCallback;->onPostMessage:Ljava/io/IOException;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_2

    return-void

    :cond_2
    sub-int/2addr p2, v1

    .line 184
    iget v0, p0, Lo/buildPennant;->onPostMessage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/buildPennant;->onPostMessage:I

    .line 173
    invoke-direct {p0}, Lo/buildPennant;->onNavigationEvent()V

    goto :goto_0

    :cond_3
    if-gtz p2, :cond_4

    return-void

    .line 189
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Failed executing read operation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2053
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Lo/onServerInfoUpdate;)V
    .locals 2

    .line 45
    instance-of v0, p1, Lo/buildPennant;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 47
    iget v0, p0, Lo/buildPennant;->onPostMessage:I

    invoke-interface {p1}, Lo/onServerInfoUpdate;->onPostMessage()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lo/buildPennant;->onPostMessage:I

    return-void

    .line 51
    :cond_0
    check-cast p1, Lo/buildPennant;

    .line 52
    :goto_0
    iget-object v0, p1, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p1, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/onServerInfoUpdate;

    .line 54
    iget-object v1, p0, Lo/buildPennant;->onNavigationEvent:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    iget v0, p0, Lo/buildPennant;->onPostMessage:I

    iget v1, p1, Lo/buildPennant;->onPostMessage:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/buildPennant;->onPostMessage:I

    const/4 v0, 0x0

    .line 57
    iput v0, p1, Lo/buildPennant;->onPostMessage:I

    .line 58
    invoke-virtual {p1}, Lo/setLeft;->close()V

    return-void
.end method
