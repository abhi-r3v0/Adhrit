.class abstract Lo/NativeComponentController;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/util/Collection<",
        "TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/JniNativeApi<",
        "TC;>;"
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/JniNativeApi$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lo/NativeComponentController$4;

    invoke-direct {v0}, Lo/NativeComponentController$4;-><init>()V

    sput-object v0, Lo/NativeComponentController;->onMessageChannelReady:Lo/JniNativeApi$onPostMessage;

    return-void
.end method

.method private constructor <init>(Lo/JniNativeApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/JniNativeApi<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    .line 47
    iput-object p1, p0, Lo/NativeComponentController;->ICustomTabsCallback:Lo/JniNativeApi;

    return-void
.end method

.method synthetic constructor <init>(Lo/JniNativeApi;B)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lo/NativeComponentController;-><init>(Lo/JniNativeApi;)V

    return-void
.end method

.method static onNavigationEvent(Ljava/lang/reflect/Type;Lo/sessionFile;)Lo/JniNativeApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lo/sessionFile;",
            ")",
            "Lo/JniNativeApi<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 61
    const-class v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lo/serializeSessionOs;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 2068
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v1, 0x0

    .line 2098
    invoke-virtual {p1, p0, v0, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p0

    .line 63
    new-instance p1, Lo/NativeComponentController$5;

    invoke-direct {p1, p0}, Lo/NativeComponentController$5;-><init>(Lo/JniNativeApi;)V

    return-object p1
.end method

.method static onPostMessage(Ljava/lang/reflect/Type;Lo/sessionFile;)Lo/JniNativeApi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lo/sessionFile;",
            ")",
            "Lo/JniNativeApi<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation

    .line 51
    const-class v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lo/serializeSessionOs;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1068
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v1, 0x0

    .line 1098
    invoke-virtual {p1, p0, v0, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p0

    .line 53
    new-instance p1, Lo/NativeComponentController$3;

    invoke-direct {p1, p0}, Lo/NativeComponentController$3;-><init>(Lo/JniNativeApi;)V

    return-object p1
.end method


# virtual methods
.method public synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lo/NativeComponentController;->onNavigationEvent(Lo/deviceFile;Ljava/util/Collection;)V

    return-void
.end method

.method abstract extraCallback()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final extraCallback(Lo/SessionFiles;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionFiles;",
            ")TC;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lo/NativeComponentController;->extraCallback()Ljava/util/Collection;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lo/SessionFiles;->onMessageChannelReady()V

    .line 75
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lo/NativeComponentController;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onNavigationEvent()V

    return-object v0
.end method

.method public synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lo/NativeComponentController;->extraCallback(Lo/SessionFiles;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Lo/deviceFile;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/deviceFile;",
            "TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lo/deviceFile;->extraCallback()Lo/deviceFile;

    .line 84
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lo/NativeComponentController;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v1, p1, v0}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lo/deviceFile;->onNavigationEvent()Lo/deviceFile;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/NativeComponentController;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".collection()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
