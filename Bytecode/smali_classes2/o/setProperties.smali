.class final Lo/setProperties;
.super Lo/shouldShowFaqCategoriesAsGrid;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/shouldShowFaqCategoriesAsGrid<",
        "Lo/Event$EventName;",
        "Lo/Event$EventName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/shouldShowFaqCategoriesAsGrid;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;Lo/Event$EventName;)V
    .locals 0

    check-cast p0, Lo/RealtimeSinceBootClock;

    iput-object p1, p0, Lo/RealtimeSinceBootClock;->zzjp:Lo/Event$EventName;

    return-void
.end method


# virtual methods
.method final synthetic extraCallback(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/Event$EventName;

    invoke-virtual {p1}, Lo/Event$EventName;->onMessageChannelReady()I

    move-result p1

    return p1
.end method

.method final synthetic extraCallback(Ljava/lang/Object;IJ)V
    .locals 0

    check-cast p1, Lo/Event$EventName;

    shl-int/lit8 p2, p2, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lo/Event$EventName;->onNavigationEvent(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lo/Event$EventName;

    invoke-static {p1, p2}, Lo/setProperties;->ICustomTabsCallback(Ljava/lang/Object;Lo/Event$EventName;)V

    return-void
.end method

.method final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lo/Event$EventName;->onPostMessage()Lo/Event$EventName;

    move-result-object v0

    return-object v0
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo/RealtimeSinceBootClock;

    iget-object p1, p1, Lo/RealtimeSinceBootClock;->zzjp:Lo/Event$EventName;

    return-object p1
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lo/Event$EventName;

    check-cast p2, Lo/Event$EventName;

    invoke-static {}, Lo/Event$EventName;->ICustomTabsCallback()Lo/Event$EventName;

    move-result-object v0

    invoke-virtual {p2, v0}, Lo/Event$EventName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lo/Event$EventName;->extraCallback(Lo/Event$EventName;Lo/Event$EventName;)Lo/Event$EventName;

    move-result-object p1

    return-object p1
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;ILo/setTopInset;)V
    .locals 0

    check-cast p1, Lo/Event$EventName;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, p3}, Lo/Event$EventName;->onNavigationEvent(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/Object;Lo/linkifyWithPattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lo/Event$EventName;

    invoke-virtual {p1, p2}, Lo/Event$EventName;->ICustomTabsCallback(Lo/linkifyWithPattern;)V

    return-void
.end method

.method final synthetic onNavigationEvent(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/Event$EventName;

    invoke-virtual {p1}, Lo/Event$EventName;->onNavigationEvent()I

    move-result p1

    return p1
.end method

.method final onPostMessage(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/RealtimeSinceBootClock;

    iget-object p1, p1, Lo/RealtimeSinceBootClock;->zzjp:Lo/Event$EventName;

    invoke-virtual {p1}, Lo/Event$EventName;->extraCallback()V

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lo/Event$EventName;

    invoke-static {p1, p2}, Lo/setProperties;->ICustomTabsCallback(Ljava/lang/Object;Lo/Event$EventName;)V

    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/Object;Lo/linkifyWithPattern;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lo/Event$EventName;

    invoke-virtual {p1, p2}, Lo/Event$EventName;->extraCallback(Lo/linkifyWithPattern;)V

    return-void
.end method
