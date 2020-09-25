.class final Lo/getFirstChild$5;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getFirstChild<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getFirstChild;


# direct methods
.method constructor <init>(Lo/getFirstChild;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lo/getFirstChild$5;->onMessageChannelReady:Lo/getFirstChild;

    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    check-cast p2, Ljava/lang/Iterable;

    if-eqz p2, :cond_0

    .line 1037
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lo/getFirstChild$5;->onMessageChannelReady:Lo/getFirstChild;

    invoke-virtual {v1, p1, v0}, Lo/getFirstChild;->onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
