.class final Lo/appFile;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/JniNativeApi<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/JniNativeApi$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/appFile$1;

    invoke-direct {v0}, Lo/appFile$1;-><init>()V

    sput-object v0, Lo/appFile;->onPostMessage:Lo/JniNativeApi$onPostMessage;

    return-void
.end method

.method constructor <init>(Lo/sessionFile;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    .line 1068
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v1, 0x0

    .line 1098
    invoke-virtual {p1, p2, v0, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p2

    .line 46
    iput-object p2, p0, Lo/appFile;->ICustomTabsCallback:Lo/JniNativeApi;

    .line 2068
    sget-object p2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 2098
    invoke-virtual {p1, p3, p2, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    .line 47
    iput-object p1, p0, Lo/appFile;->onNavigationEvent:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    check-cast p2, Ljava/util/Map;

    .line 3051
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    .line 3052
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3053
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5176
    iget v1, p1, Lo/deviceFile;->onNavigationEvent:I

    if-eqz v1, :cond_2

    .line 5179
    iget-object v1, p1, Lo/deviceFile;->extraCallback:[I

    iget v2, p1, Lo/deviceFile;->onNavigationEvent:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 4396
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4398
    :cond_1
    :goto_1
    iput-boolean v3, p1, Lo/deviceFile;->onTransact:Z

    .line 3057
    iget-object v1, p0, Lo/appFile;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 3058
    iget-object v1, p0, Lo/appFile;->onNavigationEvent:Lo/JniNativeApi;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    goto :goto_0

    .line 5177
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "JsonWriter is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3054
    :cond_3
    new-instance p2, Lcom/squareup/moshi/JsonDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map key is null at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3488
    iget v1, p1, Lo/deviceFile;->onNavigationEvent:I

    iget-object v2, p1, Lo/deviceFile;->extraCallback:[I

    iget-object v3, p1, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object p1, p1, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v1, v2, v3, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    .line 3054
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3060
    :cond_4
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6064
    new-instance v0, Lo/osFile;

    invoke-direct {v0}, Lo/osFile;-><init>()V

    .line 6065
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    .line 6066
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6067
    invoke-virtual {p1}, Lo/SessionFiles;->requestPostMessageChannel()V

    .line 6068
    iget-object v1, p0, Lo/appFile;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    .line 6069
    iget-object v2, p0, Lo/appFile;->onNavigationEvent:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    .line 6070
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 6072
    :cond_0
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Map key \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' has multiple values at path "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6508
    iget v1, p1, Lo/SessionFiles;->extraCallback:I

    iget-object v5, p1, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v6, p1, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object p1, p1, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v1, v5, v6, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    .line 6073
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6076
    :cond_1
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/appFile;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/appFile;->onNavigationEvent:Lo/JniNativeApi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
