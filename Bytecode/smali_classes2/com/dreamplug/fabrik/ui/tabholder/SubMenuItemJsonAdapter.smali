.class public final Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableMetaDataAdapter",
        "Lcom/dreamplug/fabrik/ui/tabholder/MetaData;",
        "nullableStringAdapter",
        "",
        "options",
        "Lcom/squareup/moshi/JsonReader$Options;",
        "stringAdapter",
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
            "Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableMetaDataAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/tabholder/MetaData;",
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

.field private final stringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/sessionFile;)V
    .locals 4

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "type"

    const-string v1, "name"

    const-string v2, "identifier"

    const-string v3, "meta_data"

    .line 23
    filled-new-array {v1, v2, v0, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"n\u2026type\",\n      \"meta_data\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 25
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    .line 25
    invoke-virtual {p1, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(String::cl\u2026emptySet(),\n      \"name\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 28
    const-class v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    .line 28
    invoke-virtual {p1, v1, v2, v0}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026      emptySet(), \"type\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v0, Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "metaData"

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(MetaData::\u2026  emptySet(), \"metaData\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->nullableMetaDataAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p2, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1086
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "name"

    .line 1087
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1088
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2039
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->onPostMessage:Ljava/lang/String;

    .line 1088
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "identifier"

    .line 1089
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1090
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2041
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->extraCallback:Ljava/lang/String;

    .line 1090
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1091
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1092
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2043
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->ICustomTabsCallback:Ljava/lang/String;

    .line 1092
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "meta_data"

    .line 1093
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1094
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->nullableMetaDataAdapter:Lo/JniNativeApi;

    .line 2045
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    .line 1094
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1084
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 19
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1047
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const-string v13, "identifier"

    const-string v14, "name"

    if-eqz v9, :cond_7

    .line 1048
    iget-object v9, v0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v9}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v9

    if-eq v9, v2, :cond_6

    if-eqz v9, :cond_4

    if-eq v9, v12, :cond_2

    if-eq v9, v11, :cond_1

    if-eq v9, v10, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    iget-object v8, v0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->nullableMetaDataAdapter:Lo/JniNativeApi;

    invoke-virtual {v8, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    and-int/lit8 v5, v5, -0x9

    goto :goto_0

    .line 1053
    :cond_1
    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v7, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v6, v0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v6, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v13, v13, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ide\u2026    \"identifier\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1049
    :cond_4
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v4, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v14, v14, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"nam\u2026ame\",\n            reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1061
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1062
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1066
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1068
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v3, 0x6

    if-nez v2, :cond_8

    .line 1069
    const-class v2, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    new-array v9, v3, [Ljava/lang/Class;

    const-class v18, Ljava/lang/String;

    aput-object v18, v9, v16

    const-class v18, Ljava/lang/String;

    aput-object v18, v9, v12

    .line 1070
    const-class v18, Ljava/lang/String;

    aput-object v18, v9, v11

    const-class v18, Lcom/dreamplug/fabrik/ui/tabholder/MetaData;

    aput-object v18, v9, v10

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v9, v15

    .line 1071
    sget-object v18, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v17, 0x5

    aput-object v18, v9, v17

    .line 1069
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1071
    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItemJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v9, "SubMenuItem::class.java.\u2026his.constructorRef = it }"

    invoke-static {v2, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_a

    aput-object v4, v3, v16

    if-eqz v6, :cond_9

    aput-object v6, v3, v12

    aput-object v7, v3, v11

    aput-object v8, v3, v10

    .line 1077
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v15

    const/4 v1, 0x5

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 1072
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/fabrik/ui/tabholder/SubMenuItem;

    return-object v1

    .line 1074
    :cond_9
    invoke-static {v13, v13, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"id\u2026r\", \"identifier\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1073
    :cond_a
    invoke-static {v14, v14, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"name\", \"name\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(SubMenuItem)"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
