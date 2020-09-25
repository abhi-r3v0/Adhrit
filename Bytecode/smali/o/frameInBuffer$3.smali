.class final Lo/frameInBuffer$3;
.super Lo/frameInBuffer$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/frameInBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lo/frameInBuffer$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 346
    sget-object v0, Lo/frameInBuffer;->onMessageChannelReady:[Lo/frameInBuffer$onPostMessage;

    .line 347
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 348
    invoke-virtual {v3, p1, p2, p3}, Lo/frameInBuffer$onPostMessage;->extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 367
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Missing override for log method."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final varargs onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 241
    sget-object v0, Lo/frameInBuffer;->onMessageChannelReady:[Lo/frameInBuffer$onPostMessage;

    .line 242
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 243
    invoke-virtual {v3, p1, p2}, Lo/frameInBuffer$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs onPostMessage(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 353
    sget-object v0, Lo/frameInBuffer;->onMessageChannelReady:[Lo/frameInBuffer$onPostMessage;

    .line 354
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 355
    invoke-virtual {v3, p1, p2, p3, p4}, Lo/frameInBuffer$onPostMessage;->onPostMessage(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
