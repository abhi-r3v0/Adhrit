.class final Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CrashlyticsNdkRegistrar$$Lambda$1;->ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/util/Set;Lo/sessionFile;)Lo/JniNativeApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/JniNativeApi;

.field private synthetic extraCallback:Ljava/util/Set;

.field private synthetic onMessageChannelReady:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

.field private synthetic onNavigationEvent:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

.field private synthetic onPostMessage:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;Lo/JniNativeApi;Lo/sessionFile;Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;Ljava/util/Set;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onMessageChannelReady:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    iput-object p2, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->ICustomTabsCallback:Lo/JniNativeApi;

    iput-object p4, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onNavigationEvent:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    iput-object p5, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->extraCallback:Ljava/util/Set;

    iput-object p6, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onPostMessage:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onMessageChannelReady:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_0
    iget-boolean v0, v0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onPostMessage:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 70
    invoke-virtual {p1}, Lo/deviceFile;->ICustomTabsCallback()Lo/deviceFile;

    return-void

    .line 73
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onMessageChannelReady:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    invoke-virtual {v0, p1, p2}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 76
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 77
    :cond_2
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    iget v2, p1, Lo/deviceFile;->onNavigationEvent:I

    iget-object v3, p1, Lo/deviceFile;->extraCallback:[I

    iget-object v4, p1, Lo/deviceFile;->onPostMessage:[Ljava/lang/String;

    iget-object p1, p1, Lo/deviceFile;->ICustomTabsCallback:[I

    invoke-static {v2, v3, v4, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onNavigationEvent:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    iget-boolean v0, v0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onPostMessage:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/SessionFiles$onPostMessage;->onTransact:Lo/SessionFiles$onPostMessage;

    if-ne v0, v1, :cond_1

    .line 86
    invoke-virtual {p1}, Lo/SessionFiles;->warmup()Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onNavigationEvent:Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onPostMessage(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 93
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 94
    :cond_2
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    iget v3, p1, Lo/SessionFiles;->extraCallback:I

    iget-object v4, p1, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v5, p1, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object p1, p1, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v3, v4, v5, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->extraCallback:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;->onPostMessage:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
