.class public abstract Lo/eE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/startRecording;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/ab$a<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/eE<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lo/startRecording;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Reading "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from a "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lo/eE;->mayLaunchUrl()Lo/eE;

    move-result-object v0

    return-object v0
.end method

.method protected abstract extraCallback(Lo/ab$a;)Lo/eE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract extraCallback(Lo/eL;Lo/getMaxSize;)Lo/eE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/eL;",
            "Lo/getMaxSize;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final synthetic extraCallback([BLo/getMaxSize;)Lo/startRecording;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lo/eE;->onNavigationEvent([BIILo/getMaxSize;)Lo/eE;

    move-result-object p1

    return-object p1
.end method

.method public abstract mayLaunchUrl()Lo/eE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public onMessageChannelReady([BII)Lo/eE;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-static {p1, p2, p3, p2}, Lo/eL;->ICustomTabsCallback([BIIZ)Lo/eL;

    move-result-object p1

    .line 6
    invoke-static {}, Lo/getMaxSize;->extraCallback()Lo/getMaxSize;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lo/eE;->extraCallback(Lo/eL;Lo/getMaxSize;)Lo/eE;

    .line 7
    invoke-virtual {p1, p2}, Lo/eL;->extraCallback(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzig; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lo/eE;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9
    throw p1
.end method

.method public onNavigationEvent([BIILo/getMaxSize;)Lo/eE;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/getMaxSize;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    const/4 p2, 0x0

    .line 13
    :try_start_0
    invoke-static {p1, p2, p3, p2}, Lo/eL;->ICustomTabsCallback([BIIZ)Lo/eL;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, p4}, Lo/eE;->extraCallback(Lo/eL;Lo/getMaxSize;)Lo/eE;

    .line 16
    invoke-virtual {p1, p2}, Lo/eL;->extraCallback(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzig; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Lo/eE;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 18
    throw p1
.end method

.method public final synthetic onPostMessage(Lo/ek;)Lo/startRecording;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/eE;->MediaBrowserCompat$ItemCallback()Lo/ek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lo/ab$a;

    invoke-virtual {p0, p1}, Lo/eE;->extraCallback(Lo/ab$a;)Lo/eE;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic onPostMessage([B)Lo/startRecording;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzig;
        }
    .end annotation

    .line 34
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/eE;->onMessageChannelReady([BII)Lo/eE;

    move-result-object p1

    return-object p1
.end method
