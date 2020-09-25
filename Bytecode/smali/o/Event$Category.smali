.class public final Lo/Event$Category;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CryptLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/DreamAppGlideModule;I)V
    .locals 0

    .line 50
    invoke-virtual {p1, p2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    return-void
.end method

.method public final onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/Event$Action;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 38
    invoke-interface {p1, p2}, Lo/Event$Action;->ICustomTabsCallback(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 43
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public final onPostMessage(Lo/p$a;)V
    .locals 0

    return-void
.end method
