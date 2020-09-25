.class public abstract Lo/RealtimeSinceBootClock;
.super Lo/getTargetId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/RealtimeSinceBootClock$onPostMessage;,
        Lo/RealtimeSinceBootClock$asInterface;,
        Lo/RealtimeSinceBootClock$extraCallback;,
        Lo/RealtimeSinceBootClock$onNavigationEvent;,
        Lo/RealtimeSinceBootClock$onMessageChannelReady;,
        Lo/RealtimeSinceBootClock$ICustomTabsCallback;,
        Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/RealtimeSinceBootClock<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "TMessageType;TBuilderType;>;>",
        "Lo/getTargetId<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzjr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/RealtimeSinceBootClock<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzjp:Lo/Event$EventName;

.field private zzjq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/RealtimeSinceBootClock;->zzjr:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/getTargetId;-><init>()V

    invoke-static {}, Lo/Event$EventName;->ICustomTabsCallback()Lo/Event$EventName;

    move-result-object v0

    iput-object v0, p0, Lo/RealtimeSinceBootClock;->zzjp:Lo/Event$EventName;

    const/4 v0, -0x1

    iput v0, p0, Lo/RealtimeSinceBootClock;->zzjq:I

    return-void
.end method

.method protected static ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/RealtimeSinceBootClock<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lo/RealtimeSinceBootClock;->zzjr:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static asBinder()Lo/setImageRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/setImageRequest<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lo/nativeToCircleWithBorderFilter;->onNavigationEvent()Lo/nativeToCircleWithBorderFilter;

    move-result-object v0

    return-object v0
.end method

.method protected static asInterface()Lo/setGlobalLegacyVisibilityHandlingEnabled;
    .locals 1

    invoke-static {}, Lo/now;->onPostMessage()Lo/now;

    move-result-object v0

    return-object v0
.end method

.method static extraCallback(Ljava/lang/Class;)Lo/RealtimeSinceBootClock;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/RealtimeSinceBootClock<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lo/RealtimeSinceBootClock;->zzjr:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lo/RealtimeSinceBootClock;->zzjr:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get default instance for: "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method protected static onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lo/KitKatPurgeableDecoder;

    invoke-direct {v0, p0, p1, p2}, Lo/KitKatPurgeableDecoder;-><init>(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/Object;Lo/NativeBlurFilter;Lo/setHierarchy;ILo/getSDKVersionCode;Ljava/lang/Class;)Lo/RealtimeSinceBootClock$asInterface;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lo/NativeBlurFilter;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lo/NativeBlurFilter;",
            "Lo/setHierarchy<",
            "*>;I",
            "Lo/getSDKVersionCode;",
            "Ljava/lang/Class;",
            ")",
            "Lo/RealtimeSinceBootClock$asInterface<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance p3, Lo/RealtimeSinceBootClock$asInterface;

    new-instance p4, Lo/RealtimeSinceBootClock$extraCallback;

    const/4 v1, 0x0

    const v2, 0x3f3fd17

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lo/RealtimeSinceBootClock$extraCallback;-><init>(Lo/setHierarchy;ILo/getSDKVersionCode;ZZ)V

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lo/RealtimeSinceBootClock$asInterface;-><init>(Lo/NativeBlurFilter;Ljava/lang/Object;Lo/NativeBlurFilter;Lo/RealtimeSinceBootClock$extraCallback;Ljava/lang/Class;)V

    return-object p3
.end method

.method private static onMessageChannelReady(Lo/RealtimeSinceBootClock;[B)Lo/RealtimeSinceBootClock;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/RealtimeSinceBootClock<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/clearcut/zzco;
        }
    .end annotation

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->extraCallback:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/RealtimeSinceBootClock;

    :try_start_0
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, p1

    new-instance v5, Lo/setTabBarOffsetListener;

    invoke-direct {v5}, Lo/setTabBarOffsetListener;-><init>()V

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lo/nativeAddRoundedCornersFilter;->onPostMessage(Ljava/lang/Object;[BIILo/setTabBarOffsetListener;)V

    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/nativeAddRoundedCornersFilter;->ICustomTabsCallback(Ljava/lang/Object;)V

    iget p1, p0, Lo/RealtimeSinceBootClock;->zzex:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzco;->onMessageChannelReady()Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/clearcut/zzco;->onPostMessage(Lo/NativeBlurFilter;)Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/clearcut/zzco;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/zzco;

    throw p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzco;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzco;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzco;->onPostMessage(Lo/NativeBlurFilter;)Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0
.end method

.method static varargs onPostMessage(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static onPostMessage(Lo/RealtimeSinceBootClock;[B)Lo/RealtimeSinceBootClock;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/RealtimeSinceBootClock<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/clearcut/zzco;
        }
    .end annotation

    invoke-static {p0, p1}, Lo/RealtimeSinceBootClock;->onMessageChannelReady(Lo/RealtimeSinceBootClock;[B)Lo/RealtimeSinceBootClock;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onMessageChannelReady:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/nativeAddRoundedCornersFilter;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_3

    sget p1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onPostMessage:I

    if-eqz v2, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/clearcut/zzew;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/clearcut/zzew;-><init>(Lo/NativeBlurFilter;)V

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzco;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzew;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzco;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/clearcut/zzco;->onPostMessage(Lo/NativeBlurFilter;)Lcom/google/android/gms/internal/clearcut/zzco;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    return-object p0
.end method

.method protected static final onPostMessage(Lo/RealtimeSinceBootClock;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/RealtimeSinceBootClock<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget p1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onMessageChannelReady:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object p1

    invoke-interface {p1, p0}, Lo/nativeAddRoundedCornersFilter;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static onTransact()Lo/setLegacyVisibilityHandlingEnabled;
    .locals 1

    invoke-static {}, Lo/NativeMemoryChunk;->onNavigationEvent()Lo/NativeMemoryChunk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget v1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onMessageChannelReady:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    return v3

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v1

    invoke-interface {v1, p0}, Lo/nativeAddRoundedCornersFilter;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_3

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onPostMessage:I

    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, v0, v3, v2}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v1
.end method

.method public final synthetic ICustomTabsCallback$Stub()Lo/nativeIterativeBoxBlur;
    .locals 2

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    return-object v0
.end method

.method public final synthetic ICustomTabsCallback$Stub$Proxy()Lo/NativeBlurFilter;
    .locals 2

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onRelationshipValidationResult:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onRelationshipValidationResult:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v0

    check-cast p1, Lo/RealtimeSinceBootClock;

    invoke-interface {v0, p0, p1}, Lo/nativeAddRoundedCornersFilter;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lo/RealtimeSinceBootClock;->zzex:I

    if-eqz v0, :cond_0

    iget v0, p0, Lo/RealtimeSinceBootClock;->zzex:I

    return v0

    :cond_0
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/nativeAddRoundedCornersFilter;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/RealtimeSinceBootClock;->zzex:I

    iget v0, p0, Lo/RealtimeSinceBootClock;->zzex:I

    return v0
.end method

.method public final onMessageChannelReady(Lcom/google/android/gms/internal/clearcut/zzbn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v0

    invoke-static {p1}, Lo/nativeDispose;->extraCallback(Lcom/google/android/gms/internal/clearcut/zzbn;)Lo/nativeDispose;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lo/nativeAddRoundedCornersFilter;->onNavigationEvent(Ljava/lang/Object;Lo/linkifyWithPattern;)V

    return-void
.end method

.method final onNavigationEvent()I
    .locals 1

    iget v0, p0, Lo/RealtimeSinceBootClock;->zzjq:I

    return v0
.end method

.method final onNavigationEvent(I)V
    .locals 0

    iput p1, p0, Lo/RealtimeSinceBootClock;->zzjq:I

    return-void
.end method

.method public final onPostMessage()I
    .locals 2

    iget v0, p0, Lo/RealtimeSinceBootClock;->zzjq:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/nativeAddRoundedCornersFilter;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/RealtimeSinceBootClock;->zzjq:I

    :cond_0
    iget v0, p0, Lo/RealtimeSinceBootClock;->zzjq:I

    return v0
.end method

.method protected abstract onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final synthetic onRelationshipValidationResult()Lo/nativeIterativeBoxBlur;
    .locals 2

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    invoke-virtual {v0, p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady(Lo/RealtimeSinceBootClock;)Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/DalvikPurgeableDecoder$OreoUtils;->onNavigationEvent(Lo/NativeBlurFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
