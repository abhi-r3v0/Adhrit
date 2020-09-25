.class public final Lo/onNightModeChanged;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u0007J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0007J\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u000bH\u0007J\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0007J\u001a\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0007J\u001a\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0007R \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\tR\"\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R&\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000b0\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0007\"\u0004\u0008\u0019\u0010\t\u00a8\u0006!"
    }
    d2 = {
        "Lclub/cred/interjection/data/db/Converters;",
        "",
        "()V",
        "dataAdapter",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lclub/cred/interjection/data/models/DataCampaign;",
        "getDataAdapter",
        "()Lcom/squareup/moshi/JsonAdapter;",
        "setDataAdapter",
        "(Lcom/squareup/moshi/JsonAdapter;)V",
        "listAdapter",
        "",
        "Lclub/cred/interjection/data/models/Sequence;",
        "getListAdapter",
        "setListAdapter",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "kotlin.jvm.PlatformType",
        "getMoshi",
        "()Lcom/squareup/moshi/Moshi;",
        "setMoshi",
        "(Lcom/squareup/moshi/Moshi;)V",
        "stringListAdapter",
        "",
        "getStringListAdapter",
        "setStringListAdapter",
        "fromDataCampaign",
        "value",
        "fromList",
        "fromStringList",
        "toDataCampaign",
        "toList",
        "toStringList",
        "interjection_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static extraCallback:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lclub/cred/interjection/data/models/DataCampaign;",
            ">;"
        }
    .end annotation
.end field

.field private static onMessageChannelReady:Lo/sessionFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lo/sessionFile$onPostMessage;

    invoke-direct {v0}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 1247
    new-instance v1, Lo/sessionFile;

    invoke-direct {v1, v0}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 15
    sput-object v1, Lo/onNightModeChanged;->onMessageChannelReady:Lo/sessionFile;

    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/reflect/Type;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2068
    sget-object v3, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v4, 0x0

    .line 2098
    invoke-virtual {v1, v0, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Types.newP\u2026ava, String::class.java))"

    .line 15
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/onNightModeChanged;->ICustomTabsCallback:Lo/JniNativeApi;

    .line 16
    sget-object v0, Lo/onNightModeChanged;->onMessageChannelReady:Lo/sessionFile;

    const-class v1, Ljava/util/List;

    check-cast v1, Ljava/lang/reflect/Type;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lclub/cred/interjection/data/models/Sequence;

    check-cast v3, Ljava/lang/reflect/Type;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 3068
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 3098
    invoke-virtual {v0, v1, v2, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Types.newP\u2026a, Sequence::class.java))"

    .line 16
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lo/onNightModeChanged;->onMessageChannelReady:Lo/sessionFile;

    const-class v1, Lclub/cred/interjection/data/models/DataCampaign;

    .line 4072
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 4098
    invoke-virtual {v0, v1, v2, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(DataCampaign::class.java)"

    .line 17
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/onNightModeChanged;->extraCallback:Lo/JniNativeApi;

    return-void
.end method

.method public static final ICustomTabsCallback(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    sget-object v0, Lo/onNightModeChanged;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p0}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final extraCallback(Lclub/cred/interjection/data/models/DataCampaign;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    sget-object v0, Lo/onNightModeChanged;->extraCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p0}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final onNavigationEvent(Ljava/lang/String;)Lclub/cred/interjection/data/models/DataCampaign;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    sget-object v0, Lo/onNightModeChanged;->extraCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p0}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lclub/cred/interjection/data/models/DataCampaign;

    return-object p0
.end method

.method public static final onPostMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    sget-object v0, Lo/onNightModeChanged;->ICustomTabsCallback:Lo/JniNativeApi;

    invoke-virtual {v0, p0}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
