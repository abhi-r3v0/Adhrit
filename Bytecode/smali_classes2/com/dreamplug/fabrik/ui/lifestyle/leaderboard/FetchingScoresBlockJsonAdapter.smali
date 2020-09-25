.class public final Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableGameCtaAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
        "nullableLongAdapter",
        "",
        "nullableStringAdapter",
        "",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableGameCtaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableLongAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableStringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lo/SessionFiles$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 5

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "cta"

    const-string v1, "title"

    const-string v2, "description"

    const-string v3, "image_url"

    const-string v4, "end_time"

    .line 25
    filled-new-array {v1, v2, v0, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"t\u2026 \"image_url\", \"end_time\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 27
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(String::cl\u2026     emptySet(), \"title\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 30
    const-class v1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 30
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(GameCta::c\u2026\n      emptySet(), \"cta\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableGameCtaAdapter:Lo/JniNativeApi;

    .line 33
    const-class v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "endTime"

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Long::clas\u2026   emptySet(), \"endTime\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableLongAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 21
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1106
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "title"

    .line 1107
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1108
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2059
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onPostMessage:Ljava/lang/String;

    .line 1108
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "description"

    .line 1109
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1110
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2060
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onMessageChannelReady:Ljava/lang/String;

    .line 1110
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cta"

    .line 1111
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1112
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableGameCtaAdapter:Lo/JniNativeApi;

    .line 2061
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    .line 1112
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "image_url"

    .line 1113
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1114
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2063
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->ICustomTabsCallback:Ljava/lang/String;

    .line 1114
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "end_time"

    .line 1115
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1116
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableLongAdapter:Lo/JniNativeApi;

    .line 2065
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;->extraCallback:Ljava/lang/Long;

    .line 1116
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1117
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1104
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 21
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 1050
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v10, :cond_6

    .line 1051
    iget-object v10, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v10}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v10

    if-eq v10, v2, :cond_5

    if-eqz v10, :cond_4

    if-eq v10, v14, :cond_3

    if-eq v10, v13, :cond_2

    if-eq v10, v12, :cond_1

    if-eq v10, v11, :cond_0

    goto :goto_0

    .line 1073
    :cond_0
    iget-object v8, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableLongAdapter:Lo/JniNativeApi;

    invoke-virtual {v8, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    and-int/lit8 v9, v9, -0x11

    goto :goto_0

    .line 1068
    :cond_1
    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v7, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    and-int/lit8 v9, v9, -0x9

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableGameCtaAdapter:Lo/JniNativeApi;

    invoke-virtual {v6, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    and-int/lit8 v9, v9, -0x5

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    and-int/lit8 v9, v9, -0x3

    goto :goto_0

    .line 1053
    :cond_4
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v4, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    and-int/lit8 v9, v9, -0x2

    goto :goto_0

    .line 1079
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1080
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1084
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1086
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/4 v10, 0x5

    const/4 v15, 0x0

    const/4 v3, 0x7

    if-nez v1, :cond_7

    .line 1087
    const-class v1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v2, v15

    .line 1088
    const-class v16, Ljava/lang/String;

    aput-object v16, v2, v14

    const-class v16, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    aput-object v16, v2, v13

    const-class v16, Ljava/lang/String;

    aput-object v16, v2, v12

    const-class v16, Ljava/lang/Long;

    aput-object v16, v2, v11

    .line 1089
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v2, v10

    sget-object v16, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v17, 0x6

    aput-object v16, v2, v17

    .line 1087
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1090
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlockJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v2, "FetchingScoresBlock::cla\u2026tructorRef =\n        it }"

    .line 1089
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v4, v2, v15

    aput-object v5, v2, v14

    aput-object v6, v2, v13

    aput-object v7, v2, v12

    aput-object v8, v2, v11

    .line 1097
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1091
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/FetchingScoresBlock;

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(FetchingScoresBlock)"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
