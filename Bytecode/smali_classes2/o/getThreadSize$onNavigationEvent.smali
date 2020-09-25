.class final Lo/getThreadSize$onNavigationEvent;
.super Lo/getThreadSize;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getThreadSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/getThreadSize$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lo/getThreadSize;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lo/getThreadSize$onNavigationEvent;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/lang/Object;JI)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1141
    invoke-static {p0, p1, p2}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    instance-of v1, v0, Lo/stringToByteString;

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Lo/getEventAppExecutionSignalSize;

    invoke-direct {v0, p3}, Lo/getEventAppExecutionSignalSize;-><init>(I)V

    goto :goto_0

    .line 99
    :cond_0
    instance-of v1, v0, Lo/deleteReport;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lo/getEventLogSize$asBinder;

    if-eqz v1, :cond_1

    .line 100
    check-cast v0, Lo/getEventLogSize$asBinder;

    invoke-interface {v0, p3}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object p3

    move-object v0, p3

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 105
    :cond_2
    sget-object v1, Lo/getThreadSize$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-static {p0, p1, p2, v1}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 110
    :cond_3
    instance-of v1, v0, Lo/CompositeCreateReportSpiCall;

    if-eqz v1, :cond_4

    .line 111
    new-instance v1, Lo/getEventAppExecutionSignalSize;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lo/getEventAppExecutionSignalSize;-><init>(I)V

    .line 112
    check-cast v0, Lo/CompositeCreateReportSpiCall;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-static {p0, p1, p2, v1}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 115
    :cond_4
    instance-of v1, v0, Lo/deleteReport;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lo/getEventLogSize$asBinder;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lo/getEventLogSize$asBinder;

    .line 117
    invoke-interface {v1}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result v2

    if-nez v2, :cond_5

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object v0

    .line 119
    invoke-static {p0, p1, p2, v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
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

    const/16 v0, 0xa

    .line 70
    invoke-static {p1, p2, p3, v0}, Lo/getThreadSize$onNavigationEvent;->extraCallback(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
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

    .line 2141
    invoke-static {p2, p3, p4}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lo/getThreadSize$onNavigationEvent;->extraCallback(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 130
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 132
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v1, :cond_1

    move-object p2, v0

    .line 136
    :cond_1
    invoke-static {p1, p3, p4, p2}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final onNavigationEvent(Ljava/lang/Object;J)V
    .locals 3

    .line 75
    invoke-static {p1, p2, p3}, Lo/CreateReportSpiCall;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    instance-of v1, v0, Lo/stringToByteString;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Lo/stringToByteString;

    invoke-interface {v0}, Lo/stringToByteString;->ICustomTabsCallback()Lo/stringToByteString;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    sget-object v1, Lo/getThreadSize$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 82
    :cond_1
    instance-of v1, v0, Lo/deleteReport;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lo/getEventLogSize$asBinder;

    if-eqz v1, :cond_3

    .line 83
    check-cast v0, Lo/getEventLogSize$asBinder;

    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 84
    invoke-interface {v0}, Lo/getEventLogSize$asBinder;->extraCallback()V

    :cond_2
    return-void

    .line 88
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 90
    :goto_0
    invoke-static {p1, p2, p3, v0}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
