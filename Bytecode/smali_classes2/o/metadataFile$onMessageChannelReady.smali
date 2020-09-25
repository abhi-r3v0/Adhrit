.class final Lo/metadataFile$onMessageChannelReady;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/metadataFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/sessionFile;

.field private final onPostMessage:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/sessionFile;)V
    .locals 3

    .line 286
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    .line 287
    iput-object p1, p0, Lo/metadataFile$onMessageChannelReady;->onNavigationEvent:Lo/sessionFile;

    .line 288
    const-class v0, Ljava/util/List;

    .line 1072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v2, 0x0

    .line 1098
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 288
    iput-object v0, p0, Lo/metadataFile$onMessageChannelReady;->onMessageChannelReady:Lo/JniNativeApi;

    .line 289
    const-class v0, Ljava/util/Map;

    .line 2072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 2098
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 289
    iput-object v0, p0, Lo/metadataFile$onMessageChannelReady;->ICustomTabsCallback:Lo/JniNativeApi;

    .line 290
    const-class v0, Ljava/lang/String;

    .line 3072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 3098
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 290
    iput-object v0, p0, Lo/metadataFile$onMessageChannelReady;->onPostMessage:Lo/JniNativeApi;

    .line 291
    const-class v0, Ljava/lang/Double;

    .line 4072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 4098
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 291
    iput-object v0, p0, Lo/metadataFile$onMessageChannelReady;->extraCallback:Lo/JniNativeApi;

    .line 292
    const-class v0, Ljava/lang/Boolean;

    .line 5072
    sget-object v1, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 5098
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    .line 292
    iput-object p1, p0, Lo/metadataFile$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 323
    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    .line 326
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lo/metadataFile$onMessageChannelReady;->onNavigationEvent:Lo/sessionFile;

    .line 6340
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v0, Ljava/util/Map;

    goto :goto_0

    .line 6341
    :cond_1
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v0, Ljava/util/Collection;

    .line 328
    :cond_2
    :goto_0
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v3, 0x0

    .line 7098
    invoke-virtual {v1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 328
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lo/metadataFile$5;->onPostMessage:[I

    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5508
    iget v2, p1, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p1, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p1, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object p1, p1, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, p1}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p1

    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :pswitch_0
    invoke-virtual {p1}, Lo/SessionFiles;->warmup()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 310
    :pswitch_1
    iget-object v0, p0, Lo/metadataFile$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 307
    :pswitch_2
    iget-object v0, p0, Lo/metadataFile$onMessageChannelReady;->extraCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 304
    :pswitch_3
    iget-object v0, p0, Lo/metadataFile$onMessageChannelReady;->onPostMessage:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 301
    :pswitch_4
    iget-object v0, p0, Lo/metadataFile$onMessageChannelReady;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 298
    :pswitch_5
    iget-object v0, p0, Lo/metadataFile$onMessageChannelReady;->onMessageChannelReady:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "JsonAdapter(Object)"

    return-object v0
.end method
