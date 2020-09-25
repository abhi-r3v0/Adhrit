.class public abstract Lo/getExpiresAtFrom;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getExpiresAtFrom$ICustomTabsCallback;,
        Lo/getExpiresAtFrom$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static ICustomTabsCallback:I = 0x40

.field public static final extraCallback:[B


# instance fields
.field private onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

.field protected onPostMessage:Lo/readCachedSettings$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<policy-file-request/>\u0000"

    .line 47
    invoke-static {v0}, Lo/SettingsDataProvider;->onMessageChannelReady(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/getExpiresAtFrom;->extraCallback:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lo/getExpiresAtFrom;->onPostMessage:Lo/readCachedSettings$onMessageChannelReady;

    .line 52
    iput-object v0, p0, Lo/getExpiresAtFrom;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/getAppSettings;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAppSettings;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Lo/getExpiresAtFrom;->onMessageChannelReady(Lo/getAppSettings;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Ljava/nio/ByteBuffer;Lo/readCachedSettings$onMessageChannelReady;)Lo/getAppSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;,
            Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lo/getExpiresAtFrom;->onMessageChannelReady(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x3

    const-string v2, " "

    .line 86
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 87
    array-length v2, v0

    if-ne v2, v1, :cond_4

    .line 91
    sget-object v1, Lo/readCachedSettings$onMessageChannelReady;->extraCallback:Lo/readCachedSettings$onMessageChannelReady;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 93
    new-instance p1, Lo/logSettings;

    invoke-direct {p1}, Lo/logSettings;-><init>()V

    .line 94
    move-object v1, p1

    check-cast v1, Lo/getStoredBuildInstanceIdentifier;

    .line 95
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 96
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lo/getStoredBuildInstanceIdentifier;->extraCallback(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lo/getCachedSettingsData;

    invoke-direct {p1}, Lo/getCachedSettingsData;-><init>()V

    .line 100
    aget-object v0, v0, v3

    invoke-interface {p1, v0}, Lo/getSettings;->onNavigationEvent(Ljava/lang/String;)V

    .line 104
    :goto_0
    invoke-static {p0}, Lo/getExpiresAtFrom;->onMessageChannelReady(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ":"

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 107
    array-length v1, v0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 109
    aget-object v1, v0, v1

    aget-object v0, v0, v3

    const-string v4, "^ +"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lo/getAppSettings;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance p0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    const-string p1, "not an http header"

    invoke-direct {p0, p1}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v0, :cond_3

    return-object p1

    .line 113
    :cond_3
    new-instance p0, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-direct {p0}, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;-><init>()V

    throw p0

    .line 88
    :cond_4
    new-instance p0, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;

    invoke-direct {p0}, Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;-><init>()V

    throw p0

    .line 84
    :cond_5
    new-instance p1, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    add-int/lit16 p0, p0, 0x80

    invoke-direct {p1, p0}, Lcom/mixpanel/android/java_websocket/exceptions/IncompleteHandshakeException;-><init>(I)V

    throw p1
.end method

.method protected static extraCallback(Lo/getAppSettings;)Z
    .locals 2

    const-string v0, "Upgrade"

    .line 122
    invoke-interface {p0, v0}, Lo/getAppSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p0, v0}, Lo/getAppSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onMessageChannelReady(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    .line 1055
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x30

    .line 1058
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1060
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1061
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    .line 1063
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    .line 1064
    invoke-virtual {v0, p0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 1070
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v3

    :goto_1
    if-nez v0, :cond_2

    return-object v3

    .line 76
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p0, v0}, Lo/SettingsDataProvider;->onNavigationEvent([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/getAppSettings;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAppSettings;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    instance-of v1, p0, Lo/getSettings;

    if-eqz v1, :cond_0

    const-string v1, "GET "

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move-object v1, p0

    check-cast v1, Lo/getSettings;

    invoke-interface {v1}, Lo/getSettings;->extraCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_0
    instance-of v1, p0, Lo/getStoredBuildInstanceIdentifier;

    if-eqz v1, :cond_4

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP/1.1 101 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Lo/getStoredBuildInstanceIdentifier;

    invoke-interface {v2}, Lo/getStoredBuildInstanceIdentifier;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\r\n"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {p0}, Lo/getAppSettings;->onPostMessage()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    invoke-interface {p0, v3}, Lo/getAppSettings;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 184
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/SettingsDataProvider;->onPostMessage(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    invoke-interface {p0}, Lo/getAppSettings;->ICustomTabsCallback()[B

    move-result-object p0

    if-nez p0, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 188
    :cond_2
    array-length v1, p0

    :goto_2
    array-length v2, v0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    .line 191
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    :cond_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 193
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 172
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "unknow role"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/toFeaturesJson;)Ljava/nio/ByteBuffer;
.end method

.method public abstract ICustomTabsCallback()Lo/getExpiresAtFrom;
.end method

.method public extraCallback(Ljava/nio/ByteBuffer;)Lo/getAppSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lo/getExpiresAtFrom;->onPostMessage:Lo/readCachedSettings$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/getExpiresAtFrom;->extraCallback(Ljava/nio/ByteBuffer;Lo/readCachedSettings$onMessageChannelReady;)Lo/getAppSettings;

    move-result-object p1

    return-object p1
.end method

.method public abstract onMessageChannelReady(Lo/getSettings;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onNavigationEvent(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lo/toFeaturesJson;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/getExpiresAtFrom$ICustomTabsCallback;
.end method

.method public abstract onNavigationEvent(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getExpiresAtFrom$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public final onNavigationEvent(Lo/readCachedSettings$onMessageChannelReady;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lo/getExpiresAtFrom;->onPostMessage:Lo/readCachedSettings$onMessageChannelReady;

    return-void
.end method

.method public final onPostMessage(Lo/toFeaturesJson$onMessageChannelReady;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toFeaturesJson$onMessageChannelReady;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lo/toFeaturesJson;",
            ">;"
        }
    .end annotation

    .line 132
    sget-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onPostMessage:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq p1, v0, :cond_1

    sget-object v0, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-eq p1, v0, :cond_1

    sget-object v0, Lo/toFeaturesJson$onMessageChannelReady;->extraCallback:Lo/toFeaturesJson$onMessageChannelReady;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getExpiresAtFrom;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lo/toFeaturesJson$onMessageChannelReady;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    iput-object v0, p0, Lo/getExpiresAtFrom;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    goto :goto_1

    .line 139
    :cond_2
    iput-object p1, p0, Lo/getExpiresAtFrom;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    .line 142
    :goto_1
    new-instance v0, Lo/loadSettingsData;

    iget-object v1, p0, Lo/getExpiresAtFrom;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    invoke-direct {v0, v1}, Lo/loadSettingsData;-><init>(Lo/toFeaturesJson$onMessageChannelReady;)V

    .line 144
    :try_start_0
    invoke-interface {v0, p2}, Lo/toSessionJson;->onPostMessage(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/mixpanel/android/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-interface {v0, p3}, Lo/toSessionJson;->onPostMessage(Z)V

    if-eqz p3, :cond_3

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lo/getExpiresAtFrom;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    goto :goto_2

    .line 152
    :cond_3
    iput-object p1, p0, Lo/getExpiresAtFrom;->onNavigationEvent:Lo/toFeaturesJson$onMessageChannelReady;

    .line 154
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 146
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract onPostMessage(Lo/getSettings;Lo/getStoredBuildInstanceIdentifier;)Lo/getAppSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/getSettings;)Lo/getSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mixpanel/android/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation
.end method
