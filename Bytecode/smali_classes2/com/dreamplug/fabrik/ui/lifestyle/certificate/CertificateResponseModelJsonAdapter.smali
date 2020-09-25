.class public final Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00018\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableBackGroundAdapter",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;",
        "nullableIntAtCredColorFormatAdapter",
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
.field private final nullableBackGroundAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableIntAtCredColorFormatAdapter:Lo/JniNativeApi;
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

    .line 21
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "background"

    const-string v2, "template"

    const-string v3, "icon_1"

    const-string v4, "icon_2"

    const-string v5, "text_1"

    const-string v6, "text_2"

    const-string v7, "text_3"

    const-string v8, "text_4"

    const-string v9, "cta_text"

    const-string v10, "share_message"

    const-string v11, "shim_color"

    .line 24
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"b\u2026age\",\n      \"shim_color\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 2036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "background"

    .line 27
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(BackGround\u2026emptySet(), \"background\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableBackGroundAdapter:Lo/JniNativeApi;

    .line 29
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "template"

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026  emptySet(), \"template\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 34
    const-class v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "nullableIntAtCredColorFormatAdapter"

    invoke-static {v1, v2}, Lo/serializeSessionOs;->extraCallback(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    const-string v2, "shimColor"

    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Int::class\u2026atAdapter\"), \"shimColor\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableIntAtCredColorFormatAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1093
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "background"

    .line 1094
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1095
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableBackGroundAdapter:Lo/JniNativeApi;

    .line 2011
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    .line 1095
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "template"

    .line 1096
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1097
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2012
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onMessageChannelReady:Ljava/lang/String;

    .line 1097
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "icon_1"

    .line 1098
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1099
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2014
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->ICustomTabsCallback:Ljava/lang/String;

    .line 1099
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "icon_2"

    .line 1100
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1101
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2016
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onPostMessage:Ljava/lang/String;

    .line 1101
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_1"

    .line 1102
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1103
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2018
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onNavigationEvent:Ljava/lang/String;

    .line 1103
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_2"

    .line 1104
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1105
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2020
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->asBinder:Ljava/lang/String;

    .line 1105
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_3"

    .line 1106
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1107
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2022
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onTransact:Ljava/lang/String;

    .line 1107
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "text_4"

    .line 1108
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1109
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2024
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1109
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "cta_text"

    .line 1110
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1111
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2026
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1111
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "share_message"

    .line 1112
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1113
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2028
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->asInterface:Ljava/lang/String;

    .line 1113
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "shim_color"

    .line 1114
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1115
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableIntAtCredColorFormatAdapter:Lo/JniNativeApi;

    .line 2031
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Integer;

    .line 1115
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1116
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1091
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 13

    const-string v0, "reader"

    .line 19
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
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

    move-object v11, v10

    move-object v12, v11

    .line 1053
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v0}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1065
    :pswitch_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableIntAtCredColorFormatAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/Integer;

    goto :goto_0

    .line 1064
    :pswitch_1
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 1063
    :pswitch_2
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 1062
    :pswitch_3
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    goto :goto_0

    .line 1061
    :pswitch_4
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    goto :goto_0

    .line 1060
    :pswitch_5
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 1059
    :pswitch_6
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 1058
    :pswitch_7
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 1057
    :pswitch_8
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 1056
    :pswitch_9
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 1055
    :pswitch_a
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModelJsonAdapter;->nullableBackGroundAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;

    goto :goto_0

    .line 1068
    :pswitch_b
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1069
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1073
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1074
    new-instance p1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/BackGround;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1

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

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(CertificateResponseModel)"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
