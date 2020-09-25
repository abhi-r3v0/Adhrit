.class final Lo/dr;
.super Lo/FreshchatReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FreshchatReceiver<",
        "Lo/ch;",
        "Lo/ch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/FreshchatReceiver;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;Lo/ch;)V
    .locals 0

    .line 3
    check-cast p0, Lo/fa;

    iput-object p1, p0, Lo/fa;->zzb:Lo/ch;

    return-void
.end method


# virtual methods
.method final synthetic ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lo/ch;

    .line 13
    invoke-virtual {p1}, Lo/ch;->extraCallback()I

    move-result p1

    return p1
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;IJ)V
    .locals 0

    .line 64
    check-cast p1, Lo/ch;

    shl-int/lit8 p2, p2, 0x3

    .line 66
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/ch;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;ILo/ac$1;)V
    .locals 0

    .line 52
    check-cast p1, Lo/ch;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 54
    invoke-virtual {p1, p2, p3}, Lo/ch;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic ICustomTabsCallback(Ljava/lang/Object;Lo/dS;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lo/ch;

    .line 24
    invoke-virtual {p1, p2}, Lo/ch;->ICustomTabsCallback(Lo/dS;)V

    return-void
.end method

.method final synthetic ICustomTabsCallback$Stub(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lo/ch;

    .line 10
    invoke-virtual {p1}, Lo/ch;->onMessageChannelReady()I

    move-result p1

    return p1
.end method

.method final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lo/ch;

    check-cast p2, Lo/ch;

    .line 16
    invoke-static {}, Lo/ch;->onNavigationEvent()Lo/ch;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/ch;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lo/ch;->onNavigationEvent(Lo/ch;Lo/ch;)Lo/ch;

    move-result-object p1

    return-object p1
.end method

.method final extraCallback(Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p1, Lo/fa;

    iget-object p1, p1, Lo/fa;->zzb:Lo/ch;

    .line 7
    invoke-virtual {p1}, Lo/ch;->onPostMessage()V

    return-void
.end method

.method final synthetic extraCallback(Ljava/lang/Object;IJ)V
    .locals 0

    .line 56
    check-cast p1, Lo/ch;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 58
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/ch;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic extraCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lo/ch;

    check-cast p3, Lo/ch;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 50
    invoke-virtual {p1, p2, p3}, Lo/ch;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic extraCallback(Ljava/lang/Object;Lo/dS;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lo/ch;

    .line 21
    invoke-virtual {p1, p2}, Lo/ch;->onNavigationEvent(Lo/dS;)V

    return-void
.end method

.method final extraCallback(Lo/ef;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 31
    move-object v0, p1

    check-cast v0, Lo/fa;

    iget-object v0, v0, Lo/fa;->zzb:Lo/ch;

    .line 33
    invoke-static {}, Lo/ch;->onNavigationEvent()Lo/ch;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lo/ch;->ICustomTabsCallback()Lo/ch;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lo/dr;->ICustomTabsCallback(Ljava/lang/Object;Lo/ch;)V

    :cond_0
    return-object v0
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/ch;

    .line 27
    invoke-static {p1, p2}, Lo/dr;->ICustomTabsCallback(Ljava/lang/Object;Lo/ch;)V

    return-void
.end method

.method final synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lo/ch;->ICustomTabsCallback()Lo/ch;

    move-result-object v0

    return-object v0
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lo/ch;

    .line 43
    invoke-virtual {p1}, Lo/ch;->onPostMessage()V

    return-object p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lo/fa;

    iget-object p1, p1, Lo/fa;->zzb:Lo/ch;

    return-object p1
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;II)V
    .locals 0

    .line 60
    check-cast p1, Lo/ch;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 62
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/ch;->ICustomTabsCallback(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lo/ch;

    invoke-static {p1, p2}, Lo/dr;->ICustomTabsCallback(Ljava/lang/Object;Lo/ch;)V

    return-void
.end method
