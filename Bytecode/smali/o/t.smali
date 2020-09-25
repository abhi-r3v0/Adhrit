.class public abstract Lo/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/t$onPostMessage;,
        Lo/t$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 512
    new-instance v0, Lo/t$4;

    invoke-direct {v0}, Lo/t$4;-><init>()V

    sput-object v0, Lo/t;->extraCallback:Lo/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Z)I
    .locals 0

    .line 618
    invoke-virtual {p0}, Lo/t;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lo/t;->onMessageChannelReady()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final ICustomTabsCallback(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/t$onMessageChannelReady;",
            "Lo/t$onPostMessage;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 725
    invoke-virtual/range {v0 .. v7}, Lo/t;->onPostMessage(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 724
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    return-object p1
.end method

.method public abstract ICustomTabsCallback(I)Ljava/lang/Object;
.end method

.method public final ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;
    .locals 1

    const/4 v0, 0x0

    .line 789
    invoke-virtual {p0, p1, p2, v0}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public extraCallback(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 602
    invoke-virtual {p0, p3}, Lo/t;->extraCallback(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 603
    invoke-virtual {p0, p3}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p1

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1

    .line 605
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 597
    :cond_3
    invoke-virtual {p0, p3}, Lo/t;->extraCallback(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    sub-int/2addr p1, v0

    return p1
.end method

.method public final extraCallback(ILo/t$onPostMessage;Lo/t$onMessageChannelReady;IZ)I
    .locals 1

    .line 690
    invoke-virtual {p0, p1, p2}, Lo/t;->ICustomTabsCallback(ILo/t$onPostMessage;)Lo/t$onPostMessage;

    move-result-object p2

    iget p2, p2, Lo/t$onPostMessage;->onNavigationEvent:I

    .line 691
    invoke-virtual {p0, p2, p3}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object v0

    iget v0, v0, Lo/t$onMessageChannelReady;->onTransact:I

    if-ne v0, p1, :cond_1

    .line 692
    invoke-virtual {p0, p2, p4, p5}, Lo/t;->onMessageChannelReady(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 696
    :cond_0
    invoke-virtual {p0, p1, p3}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    move-result-object p1

    iget p1, p1, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public abstract extraCallback(Ljava/lang/Object;)I
.end method

.method public extraCallback(Z)I
    .locals 0

    .line 630
    invoke-virtual {p0}, Lo/t;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCallback(ILo/t$onMessageChannelReady;Z)Lo/t$onMessageChannelReady;
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 655
    invoke-virtual/range {v0 .. v5}, Lo/t;->onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback()Z
    .locals 1

    .line 551
    invoke-virtual {p0}, Lo/t;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onMessageChannelReady()I
.end method

.method public onMessageChannelReady(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 577
    invoke-virtual {p0, p3}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 578
    invoke-virtual {p0, p3}, Lo/t;->extraCallback(Z)I

    move-result p1

    return p1

    :cond_0
    add-int/2addr p1, v0

    return p1

    .line 580
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 572
    :cond_3
    invoke-virtual {p0, p3}, Lo/t;->ICustomTabsCallback(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public abstract onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;
.end method

.method public abstract onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;
.end method

.method public abstract onPostMessage()I
.end method

.method public final onPostMessage(Lo/t$onMessageChannelReady;Lo/t$onPostMessage;IJJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/t$onMessageChannelReady;",
            "Lo/t$onPostMessage;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 750
    invoke-virtual {p0}, Lo/t;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(III)I

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-wide v6, p6

    .line 751
    invoke-virtual/range {v2 .. v7}, Lo/t;->onNavigationEvent(ILo/t$onMessageChannelReady;ZJ)Lo/t$onMessageChannelReady;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 753
    invoke-virtual {p1}, Lo/t$onMessageChannelReady;->extraCallback()J

    move-result-wide p4

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 758
    :cond_0
    iget p3, p1, Lo/t$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 759
    invoke-virtual {p1}, Lo/t$onMessageChannelReady;->ICustomTabsCallback()J

    move-result-wide v0

    add-long/2addr v0, p4

    const/4 p4, 0x1

    .line 760
    invoke-virtual {p0, p3, p2, p4}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    move-result-object p5

    invoke-virtual {p5}, Lo/t$onPostMessage;->ICustomTabsCallback()J

    move-result-wide v2

    :goto_0
    cmp-long p5, v2, p6

    if-eqz p5, :cond_1

    cmp-long p5, v0, v2

    if-ltz p5, :cond_1

    .line 761
    iget p5, p1, Lo/t$onMessageChannelReady;->onTransact:I

    if-ge p3, p5, :cond_1

    sub-long/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    .line 764
    invoke-virtual {p0, p3, p2, p4}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    move-result-object p5

    invoke-virtual {p5}, Lo/t$onPostMessage;->ICustomTabsCallback()J

    move-result-wide v2

    goto :goto_0

    .line 766
    :cond_1
    iget-object p1, p2, Lo/t$onPostMessage;->extraCallback:Ljava/lang/Object;

    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;
    .locals 1

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0, p1, p2, v0}, Lo/t;->extraCallback(ILo/t$onMessageChannelReady;Z)Lo/t$onMessageChannelReady;

    move-result-object p1

    return-object p1
.end method

.method public onPostMessage(Ljava/lang/Object;Lo/t$onPostMessage;)Lo/t$onPostMessage;
    .locals 1

    .line 777
    invoke-virtual {p0, p1}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lo/t;->onNavigationEvent(ILo/t$onPostMessage;Z)Lo/t$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(ILo/t$onPostMessage;Lo/t$onMessageChannelReady;IZ)Z
    .locals 0

    .line 714
    invoke-virtual/range {p0 .. p5}, Lo/t;->extraCallback(ILo/t$onPostMessage;Lo/t$onMessageChannelReady;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
