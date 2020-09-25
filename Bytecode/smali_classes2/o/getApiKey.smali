.class final Lo/getApiKey;
.super Lo/getInstanceId;
.source ""


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Class;
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

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/getApiKey;->ICustomTabsCallback:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lo/getInstanceId;-><init>(Lo/doBestEffortWrite;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/doBestEffortWrite;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/getApiKey;-><init>()V

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1, p2}, Lo/WakeLockEvent;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static onNavigationEvent(Ljava/lang/Object;JI)Ljava/util/List;
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

    .line 15
    invoke-static {p0, p1, p2}, Lo/getApiKey;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    instance-of v1, v0, Lo/doUnregisterEventListener;

    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Lo/doRegisterEventListener;

    invoke-direct {v0, p3}, Lo/doRegisterEventListener;-><init>(I)V

    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Lo/isConnecting;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lo/UserRecoverableException;

    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Lo/UserRecoverableException;

    invoke-interface {v0, p3}, Lo/UserRecoverableException;->extraCallback(I)Lo/UserRecoverableException;

    move-result-object p3

    move-object v0, p3

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lo/WakeLockEvent;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_2
    sget-object v1, Lo/getApiKey;->ICustomTabsCallback:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-static {p0, p1, p2, v1}, Lo/WakeLockEvent;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 28
    :cond_3
    instance-of v1, v0, Lo/getEndpointPackageName;

    if-eqz v1, :cond_4

    .line 29
    new-instance v1, Lo/doRegisterEventListener;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lo/doRegisterEventListener;-><init>(I)V

    .line 30
    check-cast v0, Lo/getEndpointPackageName;

    invoke-virtual {v1, v0}, Lo/getIsAdIdFakeForDebugLogging;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-static {p0, p1, p2, v1}, Lo/WakeLockEvent;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_4
    instance-of v1, v0, Lo/isConnecting;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lo/UserRecoverableException;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lo/UserRecoverableException;

    .line 34
    invoke-interface {v1}, Lo/UserRecoverableException;->onMessageChannelReady()Z

    move-result v2

    if-nez v2, :cond_5

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lo/UserRecoverableException;->extraCallback(I)Lo/UserRecoverableException;

    move-result-object v0

    .line 36
    invoke-static {p0, p1, p2, v0}, Lo/WakeLockEvent;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;J)V
    .locals 3

    .line 3
    invoke-static {p1, p2, p3}, Lo/WakeLockEvent;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    instance-of v1, v0, Lo/doUnregisterEventListener;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lo/doUnregisterEventListener;

    invoke-interface {v0}, Lo/doUnregisterEventListener;->onNavigationEvent()Lo/doUnregisterEventListener;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lo/getApiKey;->ICustomTabsCallback:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 8
    :cond_1
    instance-of v1, v0, Lo/isConnecting;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lo/UserRecoverableException;

    if-eqz v1, :cond_3

    .line 9
    check-cast v0, Lo/UserRecoverableException;

    invoke-interface {v0}, Lo/UserRecoverableException;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {v0}, Lo/UserRecoverableException;->ICustomTabsCallback()V

    :cond_2
    return-void

    .line 12
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13
    :goto_0
    invoke-static {p1, p2, p3, v0}, Lo/WakeLockEvent;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;J)V
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

    .line 38
    invoke-static {p2, p3, p4}, Lo/getApiKey;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lo/getApiKey;->onNavigationEvent(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 43
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v1, :cond_1

    move-object p2, v0

    .line 45
    :cond_1
    invoke-static {p1, p3, p4, p2}, Lo/WakeLockEvent;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final onNavigationEvent(Ljava/lang/Object;J)Ljava/util/List;
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

    .line 2
    invoke-static {p1, p2, p3, v0}, Lo/getApiKey;->onNavigationEvent(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
