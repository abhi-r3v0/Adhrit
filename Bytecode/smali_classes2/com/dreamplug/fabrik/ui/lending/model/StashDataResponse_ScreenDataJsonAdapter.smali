.class public final Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableDoubleAdapter",
        "",
        "nullableIntAdapter",
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
.field private final nullableDoubleAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableIntAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Integer;",
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
    .locals 10

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "available_limit"

    const-string v2, "id"

    const-string v3, "identifier_name"

    const-string v4, "interest_rate"

    const-string v5, "landing_page"

    const-string v6, "loc_status"

    const-string v7, "stash_utilized"

    const-string v8, "user_name"

    const-string v9, "version"

    .line 22
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"a\u2026  \"user_name\", \"version\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 25
    const-class v0, Ljava/lang/Double;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "availableLimit"

    .line 25
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Double::cl\u2026ySet(), \"availableLimit\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 27
    const-class v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "id"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Int::class\u2026,\n      emptySet(), \"id\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    .line 30
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "identifierName"

    .line 30
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(String::cl\u2026ySet(), \"identifierName\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 17
    check-cast p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1083
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "available_limit"

    .line 1084
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1085
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2015
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->onPostMessage:Ljava/lang/Double;

    .line 1085
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "id"

    .line 1086
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1087
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    .line 2016
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->extraCallback:Ljava/lang/Integer;

    .line 1087
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "identifier_name"

    .line 1088
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1089
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2018
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->ICustomTabsCallback:Ljava/lang/String;

    .line 1089
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "interest_rate"

    .line 1090
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1091
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2020
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->onMessageChannelReady:Ljava/lang/Double;

    .line 1091
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "landing_page"

    .line 1092
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1093
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2022
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    .line 1093
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "loc_status"

    .line 1094
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1095
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2024
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->asInterface:Ljava/lang/String;

    .line 1095
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "stash_utilized"

    .line 1096
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1097
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    .line 2026
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->onRelationshipValidationResult:Ljava/lang/Double;

    .line 1097
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "user_name"

    .line 1098
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1099
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2028
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->asBinder:Ljava/lang/String;

    .line 1099
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "version"

    .line 1100
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1101
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    .line 2029
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 1101
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1102
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1081
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 11

    const-string v0, "reader"

    .line 17
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 1047
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1057
    :pswitch_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/Integer;

    goto :goto_0

    .line 1056
    :pswitch_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    .line 1055
    :pswitch_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Double;

    goto :goto_0

    .line 1054
    :pswitch_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 1053
    :pswitch_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 1052
    :pswitch_5
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Double;

    goto :goto_0

    .line 1051
    :pswitch_6
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 1050
    :pswitch_7
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableIntAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Integer;

    goto :goto_0

    .line 1049
    :pswitch_8
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse_ScreenDataJsonAdapter;->nullableDoubleAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Double;

    goto :goto_0

    .line 1060
    :pswitch_9
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1061
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1066
    new-instance p1, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/dreamplug/fabrik/ui/lending/model/StashDataResponse$ScreenData;-><init>(Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(StashDataResponse.ScreenData)"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
