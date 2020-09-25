.class final Lo/getThreadSize$ICustomTabsCallback;
.super Lo/getThreadSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getThreadSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lo/getThreadSize;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lo/getThreadSize$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1187
    invoke-static {p1, p2, p3}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventLogSize$asBinder;

    .line 151
    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 154
    :goto_0
    invoke-interface {v0, v1}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object v0

    .line 156
    invoke-static {p1, p2, p3, v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 3187
    invoke-static {p1, p3, p4}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventLogSize$asBinder;

    .line 4187
    invoke-static {p2, p3, p4}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getEventLogSize$asBinder;

    .line 172
    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v1

    .line 173
    invoke-interface {p2}, Lo/getEventLogSize$asBinder;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 175
    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 176
    invoke-interface {v0, v2}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object v0

    .line 178
    :cond_0
    invoke-interface {v0, p2}, Lo/getEventLogSize$asBinder;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    .line 182
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final onNavigationEvent(Ljava/lang/Object;J)V
    .locals 0

    .line 2187
    invoke-static {p1, p2, p3}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getEventLogSize$asBinder;

    .line 164
    invoke-interface {p1}, Lo/getEventLogSize$asBinder;->extraCallback()V

    return-void
.end method
