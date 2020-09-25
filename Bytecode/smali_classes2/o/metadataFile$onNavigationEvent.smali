.class final Lo/metadataFile$onNavigationEvent;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/metadataFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lo/JniNativeApi<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:[Ljava/lang/String;

.field private final extraCallback:Lo/SessionFiles$onNavigationEvent;

.field private final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onPostMessage:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    .line 234
    iput-object p1, p0, Lo/metadataFile$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Class;

    .line 236
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lo/metadataFile$onNavigationEvent;->onPostMessage:[Ljava/lang/Enum;

    .line 237
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lo/metadataFile$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 238
    :goto_0
    iget-object v1, p0, Lo/metadataFile$onNavigationEvent;->onPostMessage:[Ljava/lang/Enum;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lo/metadataFile$onNavigationEvent;->onPostMessage:[Ljava/lang/Enum;

    aget-object v1, v1, v0

    .line 240
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Lo/NdkCrashFilesManager;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lo/NdkCrashFilesManager;

    if-eqz v2, :cond_0

    .line 241
    invoke-interface {v2}, Lo/NdkCrashFilesManager;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 242
    :goto_1
    iget-object v2, p0, Lo/metadataFile$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lo/metadataFile$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    iput-object v0, p0, Lo/metadataFile$onNavigationEvent;->extraCallback:Lo/SessionFiles$onNavigationEvent;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 246
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing field in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    check-cast p2, Ljava/lang/Enum;

    .line 1262
    iget-object v0, p0, Lo/metadataFile$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lo/deviceFile;->extraCallback(Ljava/lang/String;)Lo/deviceFile;

    return-void
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2251
    iget-object v0, p0, Lo/metadataFile$onNavigationEvent;->extraCallback:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onMessageChannelReady(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2252
    iget-object p1, p0, Lo/metadataFile$onNavigationEvent;->onPostMessage:[Ljava/lang/Enum;

    aget-object p1, p1, v0

    return-object p1

    .line 2508
    :cond_0
    iget v0, p1, Lo/SessionFiles;->extraCallback:I

    iget-object v1, p1, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v2, p1, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v3, p1, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v0, v1, v2, v3}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 2256
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object p1

    .line 2257
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected one of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/metadataFile$onNavigationEvent;->ICustomTabsCallback:[Ljava/lang/String;

    .line 2258
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at path "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/metadataFile$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
