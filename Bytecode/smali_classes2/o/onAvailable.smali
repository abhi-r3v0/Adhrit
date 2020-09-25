.class final Lo/onAvailable;
.super Lo/onShowCustomView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/onShowCustomView<",
        "Lo/onProgressChanged;",
        "Lo/onProgressChanged;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/onShowCustomView;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lo/fU;

    iget-object p1, p1, Lo/fU;->zzrb:Lo/onProgressChanged;

    .line 4
    invoke-virtual {p1}, Lo/onProgressChanged;->ICustomTabsCallback()V

    return-void
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/onProgressChanged;

    .line 27
    check-cast p1, Lo/fU;

    iput-object p2, p1, Lo/fU;->zzrb:Lo/onProgressChanged;

    return-void
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;Lo/bh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lo/onProgressChanged;

    .line 21
    invoke-virtual {p1, p2}, Lo/onProgressChanged;->onMessageChannelReady(Lo/bh;)V

    return-void
.end method

.method final synthetic extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lo/fU;

    iget-object p1, p1, Lo/fU;->zzrb:Lo/onProgressChanged;

    return-object p1
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lo/onProgressChanged;

    .line 10
    invoke-virtual {p1}, Lo/onProgressChanged;->onNavigationEvent()I

    move-result p1

    return p1
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Lo/bh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    check-cast p1, Lo/onProgressChanged;

    .line 18
    invoke-virtual {p1, p2}, Lo/onProgressChanged;->extraCallback(Lo/bh;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    check-cast p1, Lo/onProgressChanged;

    check-cast p2, Lo/onProgressChanged;

    .line 13
    invoke-static {}, Lo/onProgressChanged;->onMessageChannelReady()Lo/onProgressChanged;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/onProgressChanged;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 15
    :cond_0
    invoke-static {p1, p2}, Lo/onProgressChanged;->extraCallback(Lo/onProgressChanged;Lo/onProgressChanged;)Lo/onProgressChanged;

    move-result-object p1

    return-object p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lo/onProgressChanged;

    .line 7
    invoke-virtual {p1}, Lo/onProgressChanged;->onPostMessage()I

    move-result p1

    return p1
.end method
