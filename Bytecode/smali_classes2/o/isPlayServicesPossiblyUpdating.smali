.class public abstract Lo/isPlayServicesPossiblyUpdating;
.super Lo/setShouldSkipGmsCoreVersionCheck;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isPlayServicesPossiblyUpdating$onMessageChannelReady;,
        Lo/isPlayServicesPossiblyUpdating$onTransact;,
        Lo/isPlayServicesPossiblyUpdating$onNavigationEvent;,
        Lo/isPlayServicesPossiblyUpdating$extraCallback;,
        Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;,
        Lo/isPlayServicesPossiblyUpdating$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/isPlayServicesPossiblyUpdating<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback<",
        "TMessageType;TBuilderType;>;>",
        "Lo/setShouldSkipGmsCoreVersionCheck<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzyb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/isPlayServicesPossiblyUpdating<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzxz:Lo/getUseDynamicLookup;

.field private zzya:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/isPlayServicesPossiblyUpdating;->zzyb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/setShouldSkipGmsCoreVersionCheck;-><init>()V

    .line 2
    invoke-static {}, Lo/getUseDynamicLookup;->ICustomTabsCallback()Lo/getUseDynamicLookup;

    move-result-object v0

    iput-object v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzxz:Lo/getUseDynamicLookup;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzya:I

    return-void
.end method

.method static varargs ICustomTabsCallback(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 56
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 58
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 59
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 57
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static ICustomTabsCallback$Stub$Proxy()Lo/UserRecoverableException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/UserRecoverableException<",
            "TE;>;"
        }
    .end annotation

    .line 77
    invoke-static {}, Lo/getAccount;->onPostMessage()Lo/getAccount;

    move-result-object v0

    return-object v0
.end method

.method protected static ICustomTabsService()Lo/KeepName;
    .locals 1

    .line 76
    invoke-static {}, Lo/getClientVersion;->onNavigationEvent()Lo/getClientVersion;

    move-result-object v0

    return-object v0
.end method

.method static onMessageChannelReady(Ljava/lang/Class;)Lo/isPlayServicesPossiblyUpdating;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/isPlayServicesPossiblyUpdating<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 30
    sget-object v0, Lo/isPlayServicesPossiblyUpdating;->zzyb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    if-nez v0, :cond_0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    sget-object v0, Lo/isPlayServicesPossiblyUpdating;->zzyb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 38
    invoke-static {p0}, Lo/WakeLockEvent;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    .line 39
    sget v1, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->ICustomTabsCallback$Stub:I

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2, v2}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    if-eqz v0, :cond_1

    .line 45
    sget-object v1, Lo/isPlayServicesPossiblyUpdating;->zzyb:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static onMessageChannelReady(Ljava/lang/Class;Lo/isPlayServicesPossiblyUpdating;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/isPlayServicesPossiblyUpdating<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 47
    sget-object v0, Lo/isPlayServicesPossiblyUpdating;->zzyb:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final onMessageChannelReady(Lo/isPlayServicesPossiblyUpdating;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/isPlayServicesPossiblyUpdating<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 62
    sget v0, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->extraCallback:I

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_1
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/getService;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 71
    sget p1, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->onNavigationEvent:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 74
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method protected static onPostMessage(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 49
    new-instance v0, Lo/triggerNotAvailable;

    invoke-direct {v0, p0, p1, p2}, Lo/triggerNotAvailable;-><init>(Lo/getStartServicePackage;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback$Stub()I
    .locals 1

    .line 20
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzya:I

    return v0
.end method

.method protected final asBinder()Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lo/isPlayServicesPossiblyUpdating<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->onMessageChannelReady:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 15
    :cond_2
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v0

    check-cast p1, Lo/isPlayServicesPossiblyUpdating;

    invoke-interface {v0, p0, p1}, Lo/getService;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getInterfaceDescriptor()I
    .locals 2

    .line 27
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzya:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/getService;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzya:I

    .line 29
    :cond_0
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzya:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzte:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzte:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/getService;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzte:I

    .line 8
    iget v0, p0, Lo/isPlayServicesPossiblyUpdating;->zzte:I

    return v0
.end method

.method public final synthetic mayLaunchUrl()Lo/getStartServicePackage;
    .locals 2

    .line 126
    sget v0, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0, v0, v1, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    return-object v0
.end method

.method public final synthetic newSession()Lo/DataHolder$zaa;
    .locals 2

    .line 121
    sget v0, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->onMessageChannelReady:I

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0, v0, v1, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    return-object v0
.end method

.method final onMessageChannelReady(I)V
    .locals 0

    .line 21
    iput p1, p0, Lo/isPlayServicesPossiblyUpdating;->zzya:I

    return-void
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/internal/vision/zzhl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v0

    .line 25
    invoke-static {p1}, Lo/getErrorString;->onNavigationEvent(Lcom/google/android/gms/internal/vision/zzhl;)Lo/getErrorString;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lo/getService;->extraCallback(Ljava/lang/Object;Lo/checkNotNull;)V

    return-void
.end method

.method protected abstract onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final onTransact()Z
    .locals 1

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Lo/isPlayServicesPossiblyUpdating;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/getFragment;->onMessageChannelReady(Lo/getStartServicePackage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic warmup()Lo/DataHolder$zaa;
    .locals 2

    .line 114
    sget v0, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->onMessageChannelReady:I

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    check-cast v0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    .line 117
    invoke-virtual {v0, p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback(Lo/isPlayServicesPossiblyUpdating;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    return-object v0
.end method
