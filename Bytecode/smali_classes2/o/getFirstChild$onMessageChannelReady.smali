.class final Lo/getFirstChild$onMessageChannelReady;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getFirstChild<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final onPostMessage:Lo/ensureIndexed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/ensureIndexed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/ensureIndexed<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    const-string v0, "name == null"

    .line 69
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/getFirstChild$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lo/getFirstChild$onMessageChannelReady;->onPostMessage:Lo/ensureIndexed;

    return-void
.end method


# virtual methods
.method final onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMaxNode;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lo/getFirstChild$onMessageChannelReady;->onPostMessage:Lo/ensureIndexed;

    invoke-interface {v0, p2}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lo/getFirstChild$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lo/getMaxNode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
