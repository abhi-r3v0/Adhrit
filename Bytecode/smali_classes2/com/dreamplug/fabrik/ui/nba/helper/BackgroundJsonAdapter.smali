.class public final Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Background;",
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Background;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableAssetAdapter",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Asset;",
        "nullableFloatAdapter",
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
            "Lcom/dreamplug/fabrik/ui/nba/helper/Background;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableAssetAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/nba/helper/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableFloatAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Float;",
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
    .locals 8

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "color"

    const-string v2, "image"

    const-string v3, "asset"

    const-string v4, "shim_color"

    const-string v5, "logo"

    const-string v6, "content_limit"

    const-string v7, "content_limit_vertical"

    .line 24
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"c\u2026\"content_limit_vertical\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 26
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "color"

    .line 26
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026     emptySet(), \"color\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 29
    const-class v0, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "asset"

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Asset::cla\u2026     emptySet(), \"asset\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableAssetAdapter:Lo/JniNativeApi;

    .line 32
    const-class v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "limit"

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Float::cla\u2026     emptySet(), \"limit\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableFloatAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 20
    check-cast p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1095
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "color"

    .line 1096
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1097
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2104
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onMessageChannelReady:Ljava/lang/String;

    .line 1097
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "image"

    .line 1098
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1099
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2105
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onPostMessage:Ljava/lang/String;

    .line 1099
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "asset"

    .line 1100
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1101
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableAssetAdapter:Lo/JniNativeApi;

    .line 2106
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    .line 1101
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "shim_color"

    .line 1102
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1103
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2107
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->ICustomTabsCallback:Ljava/lang/String;

    .line 1103
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "logo"

    .line 1104
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1105
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2108
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onNavigationEvent:Ljava/lang/String;

    .line 1105
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "content_limit"

    .line 1106
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1107
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableFloatAdapter:Lo/JniNativeApi;

    .line 2109
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onRelationshipValidationResult:Ljava/lang/Float;

    .line 1107
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "content_limit_vertical"

    .line 1108
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1109
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableFloatAdapter:Lo/JniNativeApi;

    .line 2110
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->ICustomTabsCallback$Stub:Ljava/lang/Float;

    .line 1109
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1110
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1093
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 20
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1051
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1052
    iget-object v11, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v11}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 1063
    :pswitch_0
    iget-object v10, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableFloatAdapter:Lo/JniNativeApi;

    invoke-virtual {v10, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    goto :goto_0

    .line 1062
    :pswitch_1
    iget-object v9, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableFloatAdapter:Lo/JniNativeApi;

    invoke-virtual {v9, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    goto :goto_0

    .line 1058
    :pswitch_2
    iget-object v8, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v8, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    and-int/lit8 v3, v3, -0x11

    goto :goto_0

    .line 1056
    :pswitch_3
    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v7, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 1055
    :pswitch_4
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableAssetAdapter:Lo/JniNativeApi;

    invoke-virtual {v6, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    goto :goto_0

    .line 1054
    :pswitch_5
    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 1053
    :pswitch_6
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v4, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 1066
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1067
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1071
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1073
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v2, 0x9

    if-nez v1, :cond_1

    .line 1074
    const-class v1, Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v20, Ljava/lang/String;

    aput-object v20, v11, v19

    const-class v20, Ljava/lang/String;

    aput-object v20, v11, v18

    .line 1075
    const-class v20, Lcom/dreamplug/fabrik/ui/nba/helper/Asset;

    aput-object v20, v11, v17

    const-class v20, Ljava/lang/String;

    aput-object v20, v11, v16

    const-class v20, Ljava/lang/String;

    aput-object v20, v11, v15

    const-class v20, Ljava/lang/Float;

    aput-object v20, v11, v14

    .line 1076
    const-class v20, Ljava/lang/Float;

    aput-object v20, v11, v13

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v11, v12

    .line 1077
    sget-object v20, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v21, 0x8

    aput-object v20, v11, v21

    .line 1074
    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1077
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/nba/helper/BackgroundJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v11, "Background::class.java.g\u2026his.constructorRef = it }"

    invoke-static {v1, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v19

    aput-object v5, v2, v18

    aput-object v6, v2, v17

    aput-object v7, v2, v16

    aput-object v8, v2, v15

    aput-object v9, v2, v14

    aput-object v10, v2, v13

    .line 1086
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    const/16 v3, 0x8

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1078
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(Background)"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method