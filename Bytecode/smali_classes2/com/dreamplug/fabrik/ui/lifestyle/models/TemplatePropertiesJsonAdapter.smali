.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;",
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
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u001e\u001a\u00020\u0010H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00018\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "backGroundAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "intAtCredColorFormatAdapter",
        "",
        "nullableEncodedStringWrapperAdapter",
        "Lcom/dreamplug/textformatter/EncodedStringWrapper;",
        "nullableListOfStringAdapter",
        "",
        "",
        "nullableOutputComponentAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;",
        "nullableStringAdapter",
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
.field private final backGroundAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;",
            ">;"
        }
    .end annotation
.end field

.field private volatile constructorRef:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final intAtCredColorFormatAdapter:Lo/JniNativeApi;
    .annotation runtime Lcom/dreamplug/utils/helpers/CredColorFormat;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lo/getTargetScrollPosition;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableListOfStringAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableOutputComponentAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;",
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
    .locals 12

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "background"

    const-string v2, "logo_url"

    const-string v3, "output_component"

    const-string v4, "text_1"

    const-string v5, "text_2"

    const-string v6, "text_3"

    const-string v7, "actions"

    const-string v8, "share_text_1"

    const-string v9, "share_text_2"

    const-string v10, "share_msg"

    const-string v11, "card_color"

    .line 28
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"b\u2026share_msg\", \"card_color\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 30
    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "background"

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(BackGround\u2026emptySet(), \"background\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->backGroundAdapter:Lo/JniNativeApi;

    .line 33
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "logo_url"

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026  emptySet(), \"logo_url\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 37
    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "outputComponent"

    .line 37
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(OutputComp\u2026Set(), \"outputComponent\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableOutputComponentAdapter:Lo/JniNativeApi;

    .line 40
    const-class v0, Lo/getTargetScrollPosition;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "text1"

    .line 40
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(EncodedStr\u2026ava, emptySet(), \"text1\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 43
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 7036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "actions"

    .line 43
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Types.newP\u2026tySet(),\n      \"actions\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 47
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "intAtCredColorFormatAdapter"

    invoke-static {v1, v2}, Lo/serializeSessionOs;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "shimColor"

    .line 47
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Int::class\u2026atAdapter\"), \"shimColor\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->intAtCredColorFormatAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 23
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1126
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "background"

    .line 1127
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1128
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->backGroundAdapter:Lo/JniNativeApi;

    .line 2029
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    .line 1128
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "logo_url"

    .line 1129
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1130
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2031
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->ICustomTabsCallback:Ljava/lang/String;

    .line 1130
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "output_component"

    .line 1131
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1132
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableOutputComponentAdapter:Lo/JniNativeApi;

    .line 2033
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    .line 1132
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_1"

    .line 1133
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1134
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2035
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onMessageChannelReady:Lo/getTargetScrollPosition;

    .line 1134
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_2"

    .line 1135
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1136
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2037
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onNavigationEvent:Lo/getTargetScrollPosition;

    .line 1136
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_3"

    .line 1137
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1138
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2039
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->ICustomTabsCallback$Stub:Lo/getTargetScrollPosition;

    .line 1138
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "actions"

    .line 1139
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1140
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    .line 2040
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onRelationshipValidationResult:Ljava/util/List;

    .line 1140
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "share_text_1"

    .line 1141
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1142
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2042
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->asBinder:Lo/getTargetScrollPosition;

    .line 1142
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "share_text_2"

    .line 1143
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1144
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    .line 2044
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->asInterface:Lo/getTargetScrollPosition;

    .line 1144
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "share_msg"

    .line 1145
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1146
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2046
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->onTransact:Ljava/lang/String;

    .line 1146
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "card_color"

    .line 1147
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1148
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->intAtCredColorFormatAdapter:Lo/JniNativeApi;

    .line 2049
    iget p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;->getInterfaceDescriptor:I

    .line 1148
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1149
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1124
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 23
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1067
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1069
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1070
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v16

    const-string v4, "background"

    if-eqz v16, :cond_2

    .line 1071
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1084
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->intAtCredColorFormatAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1085
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    and-int/lit16 v5, v5, -0x401

    goto/16 :goto_1

    :cond_0
    const-string v2, "shimColor"

    const-string v3, "card_color"

    invoke-static {v2, v3, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"shi\u2026r\", \"card_color\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1082
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto/16 :goto_1

    .line 1081
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lo/getTargetScrollPosition;

    goto :goto_1

    .line 1080
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lo/getTargetScrollPosition;

    goto :goto_1

    .line 1079
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableListOfStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    goto :goto_1

    .line 1078
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lo/getTargetScrollPosition;

    goto :goto_1

    .line 1077
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lo/getTargetScrollPosition;

    goto :goto_1

    .line 1076
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableEncodedStringWrapperAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lo/getTargetScrollPosition;

    goto :goto_1

    .line 1075
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableOutputComponentAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    goto :goto_1

    .line 1074
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    .line 1072
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->backGroundAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    if-eqz v6, :cond_1

    goto :goto_1

    .line 1073
    :cond_1
    invoke-static {v4, v4, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"bac\u2026d\", \"background\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1091
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1092
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1096
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1098
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v17, 0xc

    const/16 v18, 0xb

    const/16 v19, 0xa

    const/16 v20, 0x9

    const/16 v21, 0x8

    const/16 v22, 0x7

    const/16 v23, 0x6

    const/16 v24, 0x5

    const/16 v25, 0x4

    const/16 v26, 0x3

    const/16 v27, 0x2

    const/16 v28, 0x1

    const/16 v1, 0xd

    if-nez v2, :cond_3

    .line 1099
    const-class v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    move-object/from16 v29, v4

    new-array v4, v1, [Ljava/lang/Class;

    const-class v30, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    const/16 v16, 0x0

    aput-object v30, v4, v16

    .line 1100
    const-class v30, Ljava/lang/String;

    aput-object v30, v4, v28

    const-class v30, Lcom/dreamplug/fabrik/ui/lifestyle/models/OutputComponent;

    aput-object v30, v4, v27

    const-class v30, Lo/getTargetScrollPosition;

    aput-object v30, v4, v26

    .line 1101
    const-class v30, Lo/getTargetScrollPosition;

    aput-object v30, v4, v25

    const-class v30, Lo/getTargetScrollPosition;

    aput-object v30, v4, v24

    const-class v30, Ljava/util/List;

    aput-object v30, v4, v23

    .line 1102
    const-class v30, Lo/getTargetScrollPosition;

    aput-object v30, v4, v22

    const-class v30, Lo/getTargetScrollPosition;

    aput-object v30, v4, v21

    const-class v30, Ljava/lang/String;

    aput-object v30, v4, v20

    .line 1103
    sget-object v30, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v30, v4, v19

    sget-object v30, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v30, v4, v18

    .line 1104
    sget-object v30, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    aput-object v30, v4, v17

    .line 1099
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1104
    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplatePropertiesJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v4, "TemplateProperties::clas\u2026his.constructorRef = it }"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object/from16 v29, v4

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    const/4 v4, 0x0

    aput-object v6, v1, v4

    aput-object v7, v1, v28

    aput-object v8, v1, v27

    aput-object v9, v1, v26

    aput-object v10, v1, v25

    aput-object v11, v1, v24

    aput-object v12, v1, v23

    aput-object v13, v1, v22

    aput-object v14, v1, v21

    aput-object v15, v1, v20

    aput-object v3, v1, v19

    .line 1117
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v18

    const/4 v3, 0x0

    aput-object v3, v1, v17

    .line 1105
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/TemplateProperties;

    return-object v1

    :cond_4
    move-object/from16 v1, p1

    move-object/from16 v2, v29

    .line 1106
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ba\u2026d\", \"background\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(TemplateProperties)"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
