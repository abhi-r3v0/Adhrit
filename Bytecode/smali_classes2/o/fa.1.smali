.class public abstract Lo/fa;
.super Lo/ab$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fa$ICustomTabsCallback;,
        Lo/fa$asInterface;,
        Lo/fa$extraCallback;,
        Lo/fa$onPostMessage;,
        Lo/fa$onNavigationEvent;,
        Lo/fa$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/fa<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/fa$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Lo/ab$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/fa<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Lo/ch;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/fa;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/ab$a;-><init>()V

    .line 2
    invoke-static {}, Lo/ch;->onNavigationEvent()Lo/ch;

    move-result-object v0

    iput-object v0, p0, Lo/fa;->zzb:Lo/ch;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lo/fa;->zzc:I

    return-void
.end method

.method protected static ICustomTabsCallback(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 54
    new-instance v0, Lo/er;

    invoke-direct {v0, p0, p1, p2}, Lo/er;-><init>(Lo/ek;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static extraCallback(Ljava/lang/Class;)Lo/fa;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/fa<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    sget-object v0, Lo/fa;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fa;

    if-nez v0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    sget-object v0, Lo/fa;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fa;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 43
    invoke-static {p0}, Lo/f$1;->onPostMessage(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fa;

    .line 44
    sget v1, Lo/fa$onMessageChannelReady;->onRelationshipValidationResult:I

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, v2}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lo/fa;

    if-eqz v0, :cond_1

    .line 50
    sget-object v1, Lo/fa;->zzd:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static extraCallback(Lo/fb;)Lo/fb;
    .locals 1

    .line 80
    invoke-interface {p0}, Lo/fb;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 83
    :goto_0
    invoke-interface {p0, v0}, Lo/fb;->onMessageChannelReady(I)Lo/fb;

    move-result-object p0

    return-object p0
.end method

.method protected static onError()Lo/fd;
    .locals 1

    .line 78
    invoke-static {}, Lo/eN;->onMessageChannelReady()Lo/eN;

    move-result-object v0

    return-object v0
.end method

.method protected static onItemLoaded()Lo/ay$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/ay$1<",
            "TE;>;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lo/getDouble;->onMessageChannelReady()Lo/getDouble;

    move-result-object v0

    return-object v0
.end method

.method protected static onMessageChannelReady(Ljava/lang/Class;Lo/fa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/fa<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lo/fa;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final onMessageChannelReady(Lo/fa;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/fa<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 64
    sget v0, Lo/fa$onMessageChannelReady;->onNavigationEvent:I

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
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

    .line 71
    :cond_1
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/fP;->ICustomTabsCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 73
    sget p1, Lo/fa$onMessageChannelReady;->onPostMessage:I

    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 76
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method static varargs onNavigationEvent(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 59
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 61
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 62
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 60
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static onNavigationEvent(Lo/ay$1;)Lo/ay$1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ay$1<",
            "TE;>;)",
            "Lo/ay$1<",
            "TE;>;"
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lo/ay$1;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 88
    :goto_0
    invoke-interface {p0, v0}, Lo/ay$1;->onNavigationEvent(I)Lo/ay$1;

    move-result-object p0

    return-object p0
.end method

.method protected static onReceiveResult()Lo/fb;
    .locals 1

    .line 79
    invoke-static {}, Lo/gz;->onMessageChannelReady()Lo/gz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final ICustomTabsCallback$Stub(I)V
    .locals 0

    .line 26
    iput p1, p0, Lo/fa;->zzc:I

    return-void
.end method

.method public final MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 20
    sget v0, Lo/fa$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lo/fa$onNavigationEvent;

    .line 23
    invoke-virtual {v0, p0}, Lo/fa$onNavigationEvent;->onMessageChannelReady(Lo/fa;)Lo/fa$onNavigationEvent;

    return-object v0
.end method

.method public final MediaBrowserCompat$CustomActionCallback()I
    .locals 2

    .line 32
    iget v0, p0, Lo/fa;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/fP;->onPostMessage(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/fa;->zzc:I

    .line 34
    :cond_0
    iget v0, p0, Lo/fa;->zzc:I

    return v0
.end method

.method public final synthetic MediaBrowserCompat$CustomActionResultReceiver()Lo/startRecording;
    .locals 2

    .line 97
    sget v0, Lo/fa$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 99
    check-cast v0, Lo/fa$onNavigationEvent;

    return-object v0
.end method

.method public final synthetic MediaBrowserCompat$ItemCallback()Lo/ek;
    .locals 2

    .line 102
    sget v0, Lo/fa$onMessageChannelReady;->onRelationshipValidationResult:I

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Lo/fa;

    return-object v0
.end method

.method public final synthetic MediaBrowserCompat$ItemCallback$ItemCallbackApi23()Lo/startRecording;
    .locals 2

    .line 90
    sget v0, Lo/fa$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    check-cast v0, Lo/fa$onNavigationEvent;

    .line 93
    invoke-virtual {v0, p0}, Lo/fa$onNavigationEvent;->onMessageChannelReady(Lo/fa;)Lo/fa$onNavigationEvent;

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
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v0

    check-cast p1, Lo/fa;

    invoke-interface {v0, p0, p1}, Lo/fP;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 5
    iget v0, p0, Lo/fa;->zza:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lo/fa;->zza:I

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/fP;->extraCallback(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/fa;->zza:I

    .line 8
    iget v0, p0, Lo/fa;->zza:I

    return v0
.end method

.method final onConnectionSuspended()I
    .locals 1

    .line 25
    iget v0, p0, Lo/fa;->zzc:I

    return v0
.end method

.method public final onPostMessage(Lcom/google/android/gms/internal/measurement/zzhf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lo/getJSONObject;->extraCallback(Ljava/lang/Object;)Lo/fP;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lo/ak$1;->onPostMessage(Lcom/google/android/gms/internal/measurement/zzhf;)Lo/ak$1;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lo/fP;->extraCallback(Ljava/lang/Object;Lo/dS;)V

    return-void
.end method

.method public final onProgressUpdate()Z
    .locals 1

    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lo/fa;->onMessageChannelReady(Lo/fa;Z)Z

    move-result v0

    return v0
.end method

.method protected final onResult()Lo/fa$onNavigationEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lo/fa<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lo/fa$onNavigationEvent<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 16
    sget v0, Lo/fa$onMessageChannelReady;->ICustomTabsCallback:I

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lo/fa;->ICustomTabsCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lo/fa$onNavigationEvent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/em;->ICustomTabsCallback(Lo/ek;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
