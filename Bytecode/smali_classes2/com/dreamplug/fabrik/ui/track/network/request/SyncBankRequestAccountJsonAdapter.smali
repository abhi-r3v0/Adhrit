.class public final Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
        "nullableBucketizerAdapter",
        "Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;",
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
            "Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableBucketizerAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;",
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
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "moshi"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Lo/JniNativeApi;-><init>()V

    const-string v3, "atmPinLength"

    const-string v4, "bankAccountUniqueId"

    const-string v5, "bankCode"

    const-string v6, "bankName"

    const-string v7, "branchName"

    const-string v8, "ifsc"

    const-string v9, "isPrimary"

    const-string v10, "maskedAccountNumber"

    const-string v11, "mpinLength"

    const-string v12, "mpinSet"

    const-string v13, "name"

    const-string v14, "otpLength"

    const-string v15, "referenceId"

    const-string v16, "type"

    const-string v17, "vpa"

    const-string v18, "bucketizer"

    .line 25
    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"a\u2026     \"vpa\", \"bucketizer\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 27
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "atmPinLength"

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026ptySet(), \"atmPinLength\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 31
    const-class v2, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "bucketizer"

    .line 31
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(Bucketizer\u2026emptySet(), \"bucketizer\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableBucketizerAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1123
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "atmPinLength"

    .line 1124
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1125
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2040
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->extraCallback:Ljava/lang/String;

    .line 1125
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bankAccountUniqueId"

    .line 1126
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1127
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2042
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->ICustomTabsCallback:Ljava/lang/String;

    .line 1127
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bankCode"

    .line 1128
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1129
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2044
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->onNavigationEvent:Ljava/lang/String;

    .line 1129
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bankName"

    .line 1130
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1131
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2046
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->onPostMessage:Ljava/lang/String;

    .line 1131
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "branchName"

    .line 1132
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1133
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2048
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->onMessageChannelReady:Ljava/lang/String;

    .line 1133
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "ifsc"

    .line 1134
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1135
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2050
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1135
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "isPrimary"

    .line 1136
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1137
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2052
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->onTransact:Ljava/lang/String;

    .line 1137
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "maskedAccountNumber"

    .line 1138
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1139
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2054
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->asBinder:Ljava/lang/String;

    .line 1139
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "mpinLength"

    .line 1140
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1141
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2056
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1141
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "mpinSet"

    .line 1142
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1143
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2058
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->asInterface:Ljava/lang/String;

    .line 1143
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name"

    .line 1144
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1145
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2060
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->newSession:Ljava/lang/String;

    .line 1145
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "otpLength"

    .line 1146
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1147
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2062
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->ICustomTabsService:Ljava/lang/String;

    .line 1147
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "referenceId"

    .line 1148
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1149
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2064
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1149
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1150
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1151
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2066
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->warmup:Ljava/lang/String;

    .line 1151
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "vpa"

    .line 1152
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1153
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2068
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->getInterfaceDescriptor:Ljava/lang/String;

    .line 1153
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bucketizer"

    .line 1154
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1155
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableBucketizerAdapter:Lo/JniNativeApi;

    .line 2070
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;

    .line 1155
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1156
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1121
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 19
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

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

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1058
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1059
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1076
    :pswitch_0
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableBucketizerAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;

    const v2, -0x8001

    and-int/2addr v3, v2

    goto :goto_0

    .line 1074
    :pswitch_1
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    goto :goto_0

    .line 1073
    :pswitch_2
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    goto :goto_0

    .line 1072
    :pswitch_3
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    goto :goto_0

    .line 1071
    :pswitch_4
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    goto :goto_0

    .line 1070
    :pswitch_5
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    goto :goto_0

    .line 1069
    :pswitch_6
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    goto :goto_0

    .line 1068
    :pswitch_7
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    goto :goto_0

    .line 1067
    :pswitch_8
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    .line 1066
    :pswitch_9
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    goto :goto_0

    .line 1065
    :pswitch_a
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    .line 1064
    :pswitch_b
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    .line 1063
    :pswitch_c
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto/16 :goto_0

    .line 1062
    :pswitch_d
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 1061
    :pswitch_e
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto/16 :goto_0

    .line 1060
    :pswitch_f
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto/16 :goto_0

    .line 1082
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1083
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    goto/16 :goto_0

    .line 1087
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1089
    iget-object v1, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v21, 0x10

    const/16 v22, 0xf

    const/16 v23, 0xe

    const/16 v24, 0xd

    const/16 v25, 0xc

    const/16 v26, 0xb

    const/16 v27, 0xa

    const/16 v28, 0x9

    const/16 v29, 0x8

    const/16 v30, 0x7

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v34, 0x3

    const/16 v35, 0x2

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v2, 0x12

    if-nez v1, :cond_1

    .line 1090
    const-class v1, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;

    move/from16 v38, v3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v37

    .line 1091
    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v36

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v35

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v34

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v33

    .line 1092
    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v32

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v31

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v30

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v29

    .line 1093
    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v28

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v27

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v26

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v25

    .line 1094
    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v24

    const-class v39, Ljava/lang/String;

    aput-object v39, v3, v23

    const-class v39, Lcom/dreamplug/fabrik/ui/track/network/request/Bucketizer;

    aput-object v39, v3, v22

    .line 1095
    sget-object v39, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v39, v3, v21

    sget-object v39, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    const/16 v40, 0x11

    aput-object v39, v3, v40

    .line 1090
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1096
    iput-object v1, v0, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccountJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v3, "SyncBankRequestAccount::\u2026tructorRef =\n        it }"

    .line 1095
    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move/from16 v38, v3

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v37

    aput-object v5, v2, v36

    aput-object v6, v2, v35

    aput-object v7, v2, v34

    aput-object v8, v2, v33

    aput-object v9, v2, v32

    aput-object v10, v2, v31

    aput-object v11, v2, v30

    aput-object v12, v2, v29

    aput-object v13, v2, v28

    aput-object v14, v2, v27

    aput-object v15, v2, v26

    aput-object v16, v2, v25

    aput-object v17, v2, v24

    aput-object v18, v2, v23

    aput-object v19, v2, v22

    .line 1114
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v21

    const/16 v3, 0x11

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 1097
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/dreamplug/fabrik/ui/track/network/request/SyncBankRequestAccount;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(SyncBankRequestAccount)"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
