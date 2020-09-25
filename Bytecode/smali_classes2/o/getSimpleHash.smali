.class public final Lo/getSimpleHash;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lo/getSimpleHash;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/getSimpleHash;->extraCallback:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(Lo/checkNoSpaceLeft;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/checkNoSpaceLeft;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->extraCallback()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :goto_0
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {p0}, Lo/getSimpleHash;->onMessageChannelReady(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v1

    sget-object v2, Lo/writeRawBytes;->extraCallback:Lo/writeRawBytes;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->onMessageChannelReady()V

    .line 101
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3511
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extraCallback(Lo/checkNoSpaceLeft;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/checkNoSpaceLeft;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->onNavigationEvent()V

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 82
    :goto_0
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asBinder()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {p0}, Lo/getSimpleHash;->onMessageChannelReady(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v1

    sget-object v2, Lo/writeRawBytes;->onPostMessage:Lo/writeRawBytes;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->onPostMessage()V

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 2511
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onMessageChannelReady(Lo/checkNoSpaceLeft;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lo/getSimpleHash$3;->onMessageChannelReady:[I

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsService()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2105
    :pswitch_0
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->onRelationshipValidationResult()V

    const/4 p0, 0x0

    return-object p0

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 69
    :pswitch_2
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->ICustomTabsCallback$Stub$Proxy()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 67
    :pswitch_3
    invoke-virtual {p0}, Lo/checkNoSpaceLeft;->onTransact()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :pswitch_4
    invoke-static {p0}, Lo/getSimpleHash;->extraCallback(Lo/checkNoSpaceLeft;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 63
    :pswitch_5
    invoke-static {p0}, Lo/getSimpleHash;->ICustomTabsCallback(Lo/checkNoSpaceLeft;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1511
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected end of JSON"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

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

.method public static onPostMessage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to close"

    .line 47
    new-instance v1, Lo/checkNoSpaceLeft;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/checkNoSpaceLeft;-><init>(Ljava/io/Reader;)V

    .line 49
    :try_start_0
    invoke-static {v1}, Lo/getSimpleHash;->onMessageChannelReady(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-virtual {v1}, Lo/checkNoSpaceLeft;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    sget-object v2, Lo/getSimpleHash;->extraCallback:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 52
    :try_start_2
    invoke-virtual {v1}, Lo/checkNoSpaceLeft;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 54
    sget-object v2, Lo/getSimpleHash;->extraCallback:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :goto_1
    throw p0
.end method
