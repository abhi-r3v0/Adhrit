.class public abstract Lo/frameInBuffer$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/frameInBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation


# instance fields
.field final extraCallback:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lo/frameInBuffer$onPostMessage;->extraCallback:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static extraCallback(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 545
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 546
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 547
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 548
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 549
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private varargs onNavigationEvent(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1381
    iget-object v0, p0, Lo/frameInBuffer$onPostMessage;->extraCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v1, p0, Lo/frameInBuffer$onPostMessage;->extraCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 512
    :cond_0
    invoke-virtual {p0, p1}, Lo/frameInBuffer$onPostMessage;->onNavigationEvent(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 515
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 p3, 0x0

    :cond_2
    if-nez p3, :cond_4

    if-nez p2, :cond_3

    return-void

    .line 522
    :cond_3
    invoke-static {p2}, Lo/frameInBuffer$onPostMessage;->extraCallback(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 524
    array-length v1, p4

    if-lez v1, :cond_5

    .line 1539
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    if-eqz p2, :cond_6

    .line 528
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lo/frameInBuffer$onPostMessage;->extraCallback(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 532
    :cond_6
    :goto_0
    invoke-virtual {p0, p1, v0, p3, p2}, Lo/frameInBuffer$onPostMessage;->onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public varargs extraCallback(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 480
    invoke-direct {p0, p1, v0, p2, p3}, Lo/frameInBuffer$onPostMessage;->onNavigationEvent(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract onMessageChannelReady(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public varargs onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 405
    invoke-direct {p0, v0, v1, p1, p2}, Lo/frameInBuffer$onPostMessage;->onNavigationEvent(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onNavigationEvent(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public varargs onPostMessage(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1, p2, p3, p4}, Lo/frameInBuffer$onPostMessage;->onNavigationEvent(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
