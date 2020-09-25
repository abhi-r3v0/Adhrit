.class public final Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;",
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
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "listOfReelSymbolAdapter",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;",
        "nullableListOfSlabLevelMetaAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;",
        "nullableSpinDetailAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;",
        "nullableZeroSpinsLeftMetaAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ZeroSpinsLeftMeta;",
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
        "",
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
.field private final listOfReelSymbolAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableListOfSlabLevelMetaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nullableSpinDetailAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableZeroSpinsLeftMetaAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ZeroSpinsLeftMeta;",
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

    .line 20
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v0, "reel_symbols"

    const-string v1, "slab_level_meta"

    const-string v2, "spin_detail"

    const-string v3, "zero_spins_left_meta"

    .line 22
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"r\u2026, \"zero_spins_left_meta\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 25
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ReelSymbol;

    check-cast v3, Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v2, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v2, Ljava/util/Set;

    const-string v3, "reelSymbols"

    .line 25
    invoke-virtual {p1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v2, "moshi.adapter(Types.newP\u2026mptySet(), \"reelSymbols\")"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->listOfReelSymbolAdapter:Lo/JniNativeApi;

    .line 29
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const-class v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlabLevelMeta;

    check-cast v2, Ljava/lang/reflect/Type;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "slabLevelMeta"

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Types.newP\u2026tySet(), \"slabLevelMeta\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableListOfSlabLevelMetaAdapter:Lo/JniNativeApi;

    .line 33
    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "spinDetail"

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(SpinDetail\u2026emptySet(), \"spinDetail\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableSpinDetailAdapter:Lo/JniNativeApi;

    .line 36
    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ZeroSpinsLeftMeta;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "zeroSpinsLeftMeta"

    .line 36
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(ZeroSpinsL\u2026t(), \"zeroSpinsLeftMeta\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableZeroSpinsLeftMetaAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 18
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1075
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "reel_symbols"

    .line 1076
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1077
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->listOfReelSymbolAdapter:Lo/JniNativeApi;

    .line 2036
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->onNavigationEvent:Ljava/util/List;

    .line 1077
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "slab_level_meta"

    .line 1078
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1079
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableListOfSlabLevelMetaAdapter:Lo/JniNativeApi;

    .line 2038
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->onPostMessage:Ljava/util/List;

    .line 1079
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "spin_detail"

    .line 1080
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1081
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableSpinDetailAdapter:Lo/JniNativeApi;

    .line 2040
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    .line 1081
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "zero_spins_left_meta"

    .line 1082
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1083
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableZeroSpinsLeftMetaAdapter:Lo/JniNativeApi;

    .line 2042
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ZeroSpinsLeftMeta;

    .line 1083
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1084
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1073
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 8

    const-string v0, "reader"

    .line 18
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    .line 1047
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v4

    const-string v5, "reel_symbols"

    const-string v6, "reelSymbols"

    if-eqz v4, :cond_6

    .line 1048
    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v4}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 1053
    :cond_0
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableZeroSpinsLeftMetaAdapter:Lo/JniNativeApi;

    invoke-virtual {v3, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ZeroSpinsLeftMeta;

    goto :goto_0

    .line 1052
    :cond_1
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableSpinDetailAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    goto :goto_0

    .line 1051
    :cond_2
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->nullableListOfSlabLevelMetaAdapter:Lo/JniNativeApi;

    invoke-virtual {v1, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    .line 1049
    :cond_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachineJsonAdapter;->listOfReelSymbolAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1050
    :cond_4
    invoke-static {v6, v5, p1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.unexpectedNull(\"ree\u2026, \"reel_symbols\", reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1056
    :cond_5
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1057
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1061
    :cond_6
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1062
    new-instance v4, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;

    if-eqz v0, :cond_7

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;-><init>(Ljava/util/List;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ZeroSpinsLeftMeta;)V

    return-object v4

    .line 1063
    :cond_7
    invoke-static {v6, v5, p1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object p1

    const-string v0, "Util.missingProperty(\"re\u2026ols\",\n            reader)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(MetaSlotMachine)"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
