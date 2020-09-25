.class final Lo/onHandshake;
.super Lo/reverseIteratorFrom;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onHandshake$onPostMessage;,
        Lo/onHandshake$ICustomTabsCallback;,
        Lo/onHandshake$extraCallback;,
        Lo/onHandshake$onRelationshipValidationResult;,
        Lo/onHandshake$onNavigationEvent;,
        Lo/onHandshake$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private static synthetic INotificationSideChannel:Z

.field private static final asBinder:Lo/onHandshake$onRelationshipValidationResult;

.field private static final asInterface:Ljava/lang/String;

.field static extraCallback:Z

.field private static newSession:Ljava/lang/String;

.field static onMessageChannelReady:Z

.field private static final onNavigationEvent:Ljava/util/logging/Logger;

.field static onPostMessage:Z

.field private static final onRelationshipValidationResult:Ljava/lang/String;

.field private static final onTransact:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final ICustomTabsCallback:Lo/addToArray;

.field private volatile ICustomTabsCallback$Stub$Proxy:Lo/onHandshake$extraCallback;

.field private final ICustomTabsService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/onHandshake$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsService$Stub:Lo/Onboarding$3;

.field private final ICustomTabsService$Stub$Proxy:Z

.field private IPostMessageService:Ljava/util/concurrent/Executor;

.field private IPostMessageService$Stub:Lo/onHandshake$onNavigationEvent;

.field private IPostMessageService$Stub$Proxy:Z

.field private final cancel:Lo/reverseIteratorFrom$onRelationshipValidationResult;

.field private final cancelAll:Z

.field private final extraCommand:Ljava/lang/String;

.field private final getInterfaceDescriptor:Ljava/lang/String;

.field private final mayLaunchUrl:I

.field private notify:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

.field private final postMessage:Lo/onDataPush$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataPush$onNavigationEvent<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final requestPostMessageChannel:J

.field private final updateVisuals:Lo/unionWith;

.field private validateRelationship:Z

.field private final warmup:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 66
    const-class v0, Lo/onHandshake;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lo/onHandshake;->INotificationSideChannel:Z

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    .line 77
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "clientLanguage"

    const-string v3, "percentage"

    const-string v4, "clientHostname"

    const-string v5, "serviceConfig"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lo/onHandshake;->onTransact:Ljava/util/Set;

    const-string v1, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v2, "true"

    .line 92
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/onHandshake;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v1, "false"

    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    .line 94
    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lo/onHandshake;->onRelationshipValidationResult:Ljava/lang/String;

    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    .line 96
    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/onHandshake;->asInterface:Ljava/lang/String;

    .line 114
    sget-object v1, Lo/onHandshake;->ICustomTabsCallback$Stub:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lo/onHandshake;->extraCallback:Z

    .line 116
    sget-object v1, Lo/onHandshake;->onRelationshipValidationResult:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lo/onHandshake;->onMessageChannelReady:Z

    .line 118
    sget-object v1, Lo/onHandshake;->asInterface:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lo/onHandshake;->onPostMessage:Z

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lo/onHandshake;->onMessageChannelReady(Ljava/lang/ClassLoader;)Lo/onHandshake$onRelationshipValidationResult;

    move-result-object v0

    sput-object v0, Lo/onHandshake;->asBinder:Lo/onHandshake$onRelationshipValidationResult;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lo/reverseIteratorFrom$onMessageChannelReady;Lo/onDataPush$onNavigationEvent;Lo/Onboarding$3;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/reverseIteratorFrom$onMessageChannelReady;",
            "Lo/onDataPush$onNavigationEvent<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/Onboarding$3;",
            "ZZ)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lo/reverseIteratorFrom;-><init>()V

    .line 129
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lo/onHandshake;->warmup:Ljava/util/Random;

    .line 131
    sget-object v0, Lo/onHandshake$ICustomTabsCallback;->extraCallback:Lo/onHandshake$ICustomTabsCallback;

    iput-object v0, p0, Lo/onHandshake;->ICustomTabsCallback$Stub$Proxy:Lo/onHandshake$extraCallback;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/onHandshake;->ICustomTabsService:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_9

    .line 171
    iput-object p3, p0, Lo/onHandshake;->postMessage:Lo/onDataPush$onNavigationEvent;

    .line 174
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "//"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    .line 175
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {p3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/onHandshake;->getInterfaceDescriptor:Ljava/lang/String;

    .line 178
    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/onHandshake;->extraCommand:Ljava/lang/String;

    .line 179
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 4445
    iget p1, p2, Lo/reverseIteratorFrom$onMessageChannelReady;->ICustomTabsCallback:I

    .line 180
    iput p1, p0, Lo/onHandshake;->mayLaunchUrl:I

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Lo/onHandshake;->mayLaunchUrl:I

    .line 4455
    :goto_1
    iget-object p1, p2, Lo/reverseIteratorFrom$onMessageChannelReady;->onNavigationEvent:Lo/addToArray;

    if-eqz p1, :cond_5

    .line 184
    check-cast p1, Lo/addToArray;

    iput-object p1, p0, Lo/onHandshake;->ICustomTabsCallback:Lo/addToArray;

    .line 185
    invoke-static {p5}, Lo/onHandshake;->onNavigationEvent(Z)J

    move-result-wide v3

    iput-wide v3, p0, Lo/onHandshake;->requestPostMessageChannel:J

    .line 186
    check-cast p4, Lo/Onboarding$3;

    iput-object p4, p0, Lo/onHandshake;->ICustomTabsService$Stub:Lo/Onboarding$3;

    .line 6465
    iget-object p1, p2, Lo/reverseIteratorFrom$onMessageChannelReady;->onPostMessage:Lo/unionWith;

    if-eqz p1, :cond_4

    .line 187
    check-cast p1, Lo/unionWith;

    iput-object p1, p0, Lo/onHandshake;->updateVisuals:Lo/unionWith;

    .line 7518
    iget-object p1, p2, Lo/reverseIteratorFrom$onMessageChannelReady;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    .line 188
    iput-object p1, p0, Lo/onHandshake;->IPostMessageService:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 189
    :goto_2
    iput-boolean v1, p0, Lo/onHandshake;->ICustomTabsService$Stub$Proxy:Z

    .line 190
    iput-boolean p6, p0, Lo/onHandshake;->cancelAll:Z

    .line 8493
    iget-object p1, p2, Lo/reverseIteratorFrom$onMessageChannelReady;->extraCallback:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    if-eqz p1, :cond_3

    .line 191
    check-cast p1, Lo/reverseIteratorFrom$onRelationshipValidationResult;

    iput-object p1, p0, Lo/onHandshake;->cancel:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    return-void

    .line 8910
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "serviceConfigParser"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6910
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "syncContext"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4910
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxyDetector"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4005
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v2

    const-string p3, "nameUri (%s) doesn\'t have an authority"

    invoke-static {p3, p2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3217
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "Invalid DNS name: %s"

    invoke-static {p1, p3}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2910
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "args"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/onHandshake;)Lo/onHandshake$onPostMessage;
    .locals 1

    .line 14663
    iget-object p0, p0, Lo/onHandshake;->ICustomTabsService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onHandshake$onPostMessage;

    if-nez p0, :cond_2

    .line 14664
    sget-object v0, Lo/onHandshake;->asBinder:Lo/onHandshake$onRelationshipValidationResult;

    if-eqz v0, :cond_2

    .line 14665
    sget-boolean p0, Lo/onHandshake;->INotificationSideChannel:Z

    if-nez p0, :cond_1

    invoke-interface {v0}, Lo/onHandshake$onRelationshipValidationResult;->extraCallback()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 14666
    :cond_1
    :goto_0
    sget-object p0, Lo/onHandshake;->asBinder:Lo/onHandshake$onRelationshipValidationResult;

    invoke-interface {p0}, Lo/onHandshake$onRelationshipValidationResult;->onMessageChannelReady()Lo/onHandshake$onPostMessage;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method static ICustomTabsCallback(ZZLjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string p0, "localhost"

    .line 733
    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const-string p0, ":"

    .line 737
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 743
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 744
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3

    const/16 v3, 0x39

    if-gt v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v1, v2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    return p0

    :cond_6
    return v0
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/onHandshake;)Lo/Onboarding$3;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/onHandshake;->ICustomTabsService$Stub:Lo/Onboarding$3;

    return-object p0
.end method

.method static synthetic asBinder(Lo/onHandshake;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lo/onHandshake;->requestPostMessageChannel:J

    return-wide v0
.end method

.method private static asInterface()Ljava/lang/String;
    .locals 2

    .line 718
    sget-object v0, Lo/onHandshake;->newSession:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 720
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onHandshake;->newSession:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 722
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 725
    :cond_0
    :goto_0
    sget-object v0, Lo/onHandshake;->newSession:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic asInterface(Lo/onHandshake;)Ljava/util/Random;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/onHandshake;->warmup:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/onHandshake;)I
    .locals 0

    .line 66
    iget p0, p0, Lo/onHandshake;->mayLaunchUrl:I

    return p0
.end method

.method static synthetic onMessageChannelReady()Ljava/util/logging/Logger;
    .locals 1

    .line 66
    sget-object v0, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static onMessageChannelReady(Ljava/lang/ClassLoader;)Lo/onHandshake$onRelationshipValidationResult;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "io.grpc.internal.JndiResourceResolverFactory"

    const/4 v2, 0x1

    .line 678
    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-class v1, Lo/onHandshake$onRelationshipValidationResult;

    .line 679
    invoke-virtual {p0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 695
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 702
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onHandshake$onRelationshipValidationResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 707
    invoke-interface {p0}, Lo/onHandshake$onRelationshipValidationResult;->extraCallback()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 708
    sget-object v1, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 711
    invoke-interface {p0}, Lo/onHandshake$onRelationshipValidationResult;->extraCallback()Ljava/lang/Throwable;

    move-result-object p0

    const-string v3, "JndiResourceResolverFactory not available, skipping."

    .line 708
    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 704
    sget-object v1, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_1
    move-exception p0

    .line 697
    sget-object v1, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_2
    move-exception p0

    .line 690
    sget-object v1, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catch_3
    move-exception p0

    .line 681
    sget-object v1, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic onMessageChannelReady(Lo/onHandshake;)Lo/unionWith;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/onHandshake;->updateVisuals:Lo/unionWith;

    return-object p0
.end method

.method private static onNavigationEvent(Z)J
    .locals 9

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "networkaddress.cache.ttl"

    .line 502
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1e

    if-eqz v2, :cond_1

    .line 506
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    sget-object v5, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 p0, 0x1

    aput-object v2, v7, p0

    const/4 p0, 0x2

    .line 511
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, p0

    const-string p0, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    .line 508
    invoke-virtual {v5, v6, p0, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    cmp-long p0, v3, v0

    if-lez p0, :cond_2

    .line 514
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method static onNavigationEvent(Lo/onHandshake$extraCallback;Lo/onHandshake$onPostMessage;ZZLjava/lang/String;)Lo/onHandshake$onNavigationEvent;
    .locals 6

    .line 396
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 398
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 400
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 404
    :try_start_0
    invoke-interface {p0, p4}, Lo/onHandshake$extraCallback;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    .line 412
    :try_start_1
    invoke-interface {p1}, Lo/onHandshake$onPostMessage;->extraCallback()Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p4

    goto :goto_2

    :cond_0
    :goto_1
    move-object p4, v3

    :goto_2
    if-eqz p3, :cond_4

    const/4 p3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 p2, 0x1

    :goto_4
    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    :cond_3
    if-nez p3, :cond_4

    .line 425
    :try_start_2
    invoke-interface {p1}, Lo/onHandshake$onPostMessage;->onMessageChannelReady()Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    :cond_4
    :goto_5
    move-object p1, v3

    move-object v3, p4

    goto :goto_6

    :cond_5
    move-object p1, v3

    :goto_6
    const-string p2, "ServiceConfig resolution failure"

    const-string p3, "Balancer resolution failure"

    const-string p4, "Address resolution failure"

    if-eqz p0, :cond_a

    if-nez v3, :cond_6

    .line 434
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_7

    .line 435
    :cond_6
    invoke-static {p0}, Lo/getOverridenSpiEndpoint;->extraCallback(Ljava/lang/Throwable;)V

    .line 436
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 440
    sget-object v1, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, p4, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    if-eqz v3, :cond_8

    .line 443
    sget-object p0, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, p4, p3, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 446
    sget-object p0, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, p3, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    throw v0

    :cond_a
    :goto_7
    if-eqz p0, :cond_b

    .line 440
    sget-object v4, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, p4, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    if-eqz v3, :cond_c

    .line 443
    sget-object p0, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, p4, p3, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 446
    sget-object p0, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, p3, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    :cond_d
    new-instance p0, Lo/onHandshake$onNavigationEvent;

    invoke-direct {p0, v0, v2, v1}, Lo/onHandshake$onNavigationEvent;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/onHandshake;)Z
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lo/onHandshake;->IPostMessageService$Stub$Proxy:Z

    return v0
.end method

.method static synthetic onPostMessage()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-static {}, Lo/onHandshake;->asInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic onPostMessage(Lo/onHandshake;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/onHandshake;->extraCommand:Ljava/lang/String;

    return-object p0
.end method

.method private static onPostMessage(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 529
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 530
    sget-object v4, Lo/onHandshake;->onTransact:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 12183
    :cond_0
    new-instance p0, Lcom/google/common/base/VerifyException;

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v1, p1, v2

    const-string p2, "Bad key: %s"

    invoke-static {p2, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "clientLanguage"

    .line 12482
    invoke-static {p0, v0}, Lo/unlisten;->ICustomTabsCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 534
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 536
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "java"

    .line 537
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-object v1

    :cond_4
    const-string v0, "percentage"

    .line 13476
    invoke-static {p0, v0}, Lo/unlisten;->onMessageChannelReady(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 548
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/16 v5, 0x64

    if-ltz v4, :cond_5

    if-gt v4, v5, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    .line 550
    invoke-virtual {p1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-lt p1, v4, :cond_7

    return-object v1

    .line 14183
    :cond_6
    new-instance p0, Lcom/google/common/base/VerifyException;

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v2

    const-string p2, "Bad percentage: %s"

    invoke-static {p2, p1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string p1, "clientHostname"

    .line 14488
    invoke-static {p0, p1}, Lo/unlisten;->ICustomTabsCallback(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 555
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 557
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_a

    return-object v1

    :cond_a
    const-string p1, "serviceConfig"

    .line 568
    invoke-static {p0, p1}, Lo/unlisten;->onNavigationEvent(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_b

    return-object p2

    .line 570
    :cond_b
    new-instance p2, Lcom/google/common/base/VerifyException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v3

    const-string p0, "key \'%s\' missing in \'%s\'"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/common/base/VerifyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic onPostMessage(Lo/onHandshake;Lo/onHandshake$onNavigationEvent;)Lo/onHandshake$onNavigationEvent;
    .locals 0

    .line 66
    iput-object p1, p0, Lo/onHandshake;->IPostMessageService$Stub:Lo/onHandshake$onNavigationEvent;

    return-object p1
.end method

.method static onPostMessage(Ljava/util/List;Ljava/util/Random;Ljava/lang/String;)Lo/reverseIteratorFrom$onPostMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Random;",
            "Ljava/lang/String;",
            ")",
            "Lo/reverseIteratorFrom$onPostMessage;"
        }
    .end annotation

    .line 11458
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11459
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "grpc_config="

    .line 11460
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11461
    sget-object v2, Lo/onHandshake;->onNavigationEvent:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Ignoring non service config {0}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    .line 11464
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/getSimpleHash;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 11465
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 11468
    check-cast v1, Ljava/util/List;

    .line 11469
    invoke-static {v1}, Lo/unlisten;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11466
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "wrong type "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 345
    :try_start_1
    invoke-static {v1, p1, p2}, Lo/onHandshake;->onPostMessage(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_3

    goto :goto_1

    :catch_0
    move-exception p0

    .line 347
    sget-object p1, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    const-string p2, "failed to pick service config choice"

    .line 348
    invoke-virtual {p1, p2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p0

    .line 347
    invoke-static {p0}, Lo/reverseIteratorFrom$onPostMessage;->ICustomTabsCallback(Lo/emptyMap;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    return-object v0

    .line 357
    :cond_5
    invoke-static {v1}, Lo/reverseIteratorFrom$onPostMessage;->onPostMessage(Ljava/lang/Object;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 338
    :goto_2
    sget-object p1, Lo/emptyMap;->ICustomTabsCallback:Lo/emptyMap;

    const-string p2, "failed to parse TXT records"

    .line 339
    invoke-virtual {p1, p2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object p0

    .line 338
    invoke-static {p0}, Lo/reverseIteratorFrom$onPostMessage;->ICustomTabsCallback(Lo/emptyMap;)Lo/reverseIteratorFrom$onPostMessage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic onRelationshipValidationResult(Lo/onHandshake;)Lo/onHandshake$extraCallback;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/onHandshake;->ICustomTabsCallback$Stub$Proxy:Lo/onHandshake$extraCallback;

    return-object p0
.end method

.method private onRelationshipValidationResult()Z
    .locals 5

    .line 369
    iget-object v0, p0, Lo/onHandshake;->IPostMessageService$Stub:Lo/onHandshake$onNavigationEvent;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lo/onHandshake;->requestPostMessageChannel:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lo/onHandshake;->ICustomTabsService$Stub:Lo/Onboarding$3;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 371
    invoke-virtual {v0, v1}, Lo/Onboarding$3;->onPostMessage(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lo/onHandshake;->requestPostMessageChannel:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private onTransact()V
    .locals 3

    .line 361
    iget-boolean v0, p0, Lo/onHandshake;->IPostMessageService$Stub$Proxy:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/onHandshake;->validateRelationship:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/onHandshake;->onRelationshipValidationResult()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lo/onHandshake;->IPostMessageService$Stub$Proxy:Z

    .line 365
    iget-object v0, p0, Lo/onHandshake;->IPostMessageService:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/onHandshake$onMessageChannelReady;

    iget-object v2, p0, Lo/onHandshake;->notify:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    invoke-direct {v1, p0, v2}, Lo/onHandshake$onMessageChannelReady;-><init>(Lo/onHandshake;Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic onTransact(Lo/onHandshake;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lo/onHandshake;->cancelAll:Z

    return p0
.end method

.method static synthetic warmup(Lo/onHandshake;)Lo/reverseIteratorFrom$onRelationshipValidationResult;
    .locals 0

    .line 66
    iget-object p0, p0, Lo/onHandshake;->cancel:Lo/reverseIteratorFrom$onRelationshipValidationResult;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 211
    iget-object v0, p0, Lo/onHandshake;->notify:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0}, Lo/onHandshake;->onTransact()V

    return-void

    .line 10511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lo/onHandshake;->getInterfaceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lo/onHandshake;->notify:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 202
    iget-boolean v0, p0, Lo/onHandshake;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lo/onHandshake;->postMessage:Lo/onDataPush$onNavigationEvent;

    invoke-static {v0}, Lo/onDataPush;->ICustomTabsCallback(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lo/onHandshake;->IPostMessageService:Ljava/util/concurrent/Executor;

    :cond_1
    if-eqz p1, :cond_2

    .line 205
    check-cast p1, Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    iput-object p1, p0, Lo/onHandshake;->notify:Lo/reverseIteratorFrom$ICustomTabsCallback$Stub;

    .line 206
    invoke-direct {p0}, Lo/onHandshake;->onTransact()V

    return-void

    .line 9910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9511
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 376
    iget-boolean v0, p0, Lo/onHandshake;->validateRelationship:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lo/onHandshake;->validateRelationship:Z

    .line 380
    iget-object v0, p0, Lo/onHandshake;->IPostMessageService:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lo/onHandshake;->ICustomTabsService$Stub$Proxy:Z

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lo/onHandshake;->postMessage:Lo/onDataPush$onNavigationEvent;

    invoke-static {v1, v0}, Lo/onDataPush;->extraCallback(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lo/onHandshake;->IPostMessageService:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method
