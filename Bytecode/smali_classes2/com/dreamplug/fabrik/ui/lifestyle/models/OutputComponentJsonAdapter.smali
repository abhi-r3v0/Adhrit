.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;",
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
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0018\u001a\u00020\rH\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "booleanAdapter",
        "",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableCtaClaimedAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;",
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
.field private final booleanAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableCtaClaimedAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;",
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

    .line 22
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "text_1"

    const-string v1, "cta"

    const-string v2, "text_2"

    const-string v3, "type"

    const-string v4, "is_sound_scan_enabled"

    .line 24
    filled-new-array {v1, v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"c\u2026 \"is_sound_scan_enabled\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 27
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(CtaClaimed\u2026.java, emptySet(), \"cta\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableCtaClaimedAdapter:Lo/JniNativeApi;

    .line 29
    const-class v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 29
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026    emptySet(), \"text_1\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "isSoundScanEnabled"

    .line 32
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Boolean::c\u2026    \"isSoundScanEnabled\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 20
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1090
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "cta"

    .line 1091
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1092
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableCtaClaimedAdapter:Lo/JniNativeApi;

    .line 2076
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    .line 1092
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_1"

    .line 1093
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1094
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2077
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onPostMessage:Ljava/lang/String;

    .line 1094
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_2"

    .line 1095
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1096
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2078
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onNavigationEvent:Ljava/lang/String;

    .line 1096
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1097
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1098
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2079
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->onMessageChannelReady:Ljava/lang/String;

    .line 1098
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "is_sound_scan_enabled"

    .line 1099
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1100
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    .line 2081
    iget-boolean p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;->extraCallback:Z

    .line 1100
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1101
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1088
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

    .line 20
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1048
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 1049
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v10, :cond_7

    .line 1050
    iget-object v10, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v10}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v10

    if-eq v10, v3, :cond_6

    if-eqz v10, :cond_5

    if-eq v10, v14, :cond_4

    if-eq v10, v13, :cond_3

    if-eq v10, v12, :cond_2

    if-eq v10, v11, :cond_0

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->booleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1057
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    and-int/lit8 v9, v9, -0x11

    goto :goto_0

    :cond_1
    const-string v2, "isSoundScanEnabled"

    const-string v3, "is_sound_scan_enabled"

    invoke-static {v2, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"isS\u2026nd_scan_enabled\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1054
    :cond_2
    iget-object v8, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v8, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    .line 1053
    :cond_3
    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v7, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 1052
    :cond_4
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v6, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 1051
    :cond_5
    iget-object v5, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->nullableCtaClaimedAdapter:Lo/JniNativeApi;

    invoke-virtual {v5, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    goto :goto_0

    .line 1063
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1064
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1068
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1070
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/4 v10, 0x5

    const/4 v15, 0x0

    const/4 v4, 0x7

    if-nez v1, :cond_8

    .line 1071
    const-class v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    new-array v3, v4, [Ljava/lang/Class;

    const-class v16, Lcom/dreamplug/fabrik/ui/lifestyle/models/CtaClaimed;

    aput-object v16, v3, v15

    .line 1072
    const-class v16, Ljava/lang/String;

    aput-object v16, v3, v14

    const-class v16, Ljava/lang/String;

    aput-object v16, v3, v13

    const-class v16, Ljava/lang/String;

    aput-object v16, v3, v12

    .line 1073
    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v3, v11

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v3, v10

    .line 1074
    sget-object v16, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v17, 0x6

    aput-object v16, v3, v17

    .line 1071
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1074
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponentJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v3, "OutputComponent::class.j\u2026his.constructorRef = it }"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v5, v3, v15

    aput-object v6, v3, v14

    aput-object v7, v3, v13

    aput-object v8, v3, v12

    aput-object v2, v3, v11

    .line 1081
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v10

    const/4 v2, 0x6

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1075
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(OutputComponent)"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
