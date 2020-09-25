.class final Lo/deleteSessionFilesDirectory;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/deleteSessionFilesDirectory$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/JniNativeApi<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/JniNativeApi$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/SessionFiles$onNavigationEvent;

.field private final extraCallback:Lo/CrashlyticsNdkRegistrar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsNdkRegistrar<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:[Lo/deleteSessionFilesDirectory$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/deleteSessionFilesDirectory$ICustomTabsCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lo/deleteSessionFilesDirectory$3;

    invoke-direct {v0}, Lo/deleteSessionFilesDirectory$3;-><init>()V

    sput-object v0, Lo/deleteSessionFilesDirectory;->onNavigationEvent:Lo/JniNativeApi$onPostMessage;

    return-void
.end method

.method constructor <init>(Lo/CrashlyticsNdkRegistrar;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsNdkRegistrar<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/deleteSessionFilesDirectory$ICustomTabsCallback<",
            "*>;>;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    .line 139
    iput-object p1, p0, Lo/deleteSessionFilesDirectory;->extraCallback:Lo/CrashlyticsNdkRegistrar;

    .line 140
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lo/deleteSessionFilesDirectory$ICustomTabsCallback;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/deleteSessionFilesDirectory$ICustomTabsCallback;

    iput-object p1, p0, Lo/deleteSessionFilesDirectory;->onMessageChannelReady:[Lo/deleteSessionFilesDirectory$ICustomTabsCallback;

    .line 142
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 141
    invoke-static {p1}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object p1

    iput-object p1, p0, Lo/deleteSessionFilesDirectory;->ICustomTabsCallback:Lo/SessionFiles$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/deviceFile;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    :try_start_0
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    .line 178
    iget-object v0, p0, Lo/deleteSessionFilesDirectory;->onMessageChannelReady:[Lo/deleteSessionFilesDirectory$ICustomTabsCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 179
    iget-object v4, v3, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1210
    iget-object v4, v3, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->extraCallback:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1211
    iget-object v3, v3, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->onPostMessage:Lo/JniNativeApi;

    invoke-virtual {v3, p1, v4}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 184
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SessionFiles;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lo/deleteSessionFilesDirectory;->extraCallback:Lo/CrashlyticsNdkRegistrar;

    invoke-virtual {v0}, Lo/CrashlyticsNdkRegistrar;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    :try_start_1
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    .line 159
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lo/deleteSessionFilesDirectory;->ICustomTabsCallback:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v1}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 162
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 163
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v2, p0, Lo/deleteSessionFilesDirectory;->onMessageChannelReady:[Lo/deleteSessionFilesDirectory$ICustomTabsCallback;

    aget-object v1, v2, v1

    .line 1204
    iget-object v2, v1, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->onPostMessage:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    .line 1205
    iget-object v1, v1, Lo/deleteSessionFilesDirectory$ICustomTabsCallback;->extraCallback:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 171
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 154
    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_2
    move-exception p1

    .line 152
    invoke-static {p1}, Lo/serializeBeginSession;->extraCallback(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/deleteSessionFilesDirectory;->extraCallback:Lo/CrashlyticsNdkRegistrar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
