.class public final Lcom/cred/pay/repository/models/AccountJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/Account;",
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
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0015\u001a\u00020\tH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/AccountJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/Account;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "constructorRef",
        "Ljava/lang/reflect/Constructor;",
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
        "credpayrepository_release"
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
            "Lcom/cred/pay/repository/models/Account;",
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
    .locals 17

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

    const-string v9, "maskedAccountNumber"

    const-string v10, "mpinLength"

    const-string v11, "mpinSet"

    const-string v12, "name"

    const-string v13, "otpLength"

    const-string v14, "referenceId"

    const-string v15, "type"

    const-string v16, "isPrimary"

    .line 24
    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v2

    const-string v3, "JsonReader.Options.of(\"a\u2026Id\", \"type\", \"isPrimary\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 26
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 3036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "atmPinLength"

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v2

    const-string v3, "moshi.adapter(String::cl\u2026(),\n      \"atmPinLength\")"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 29
    const-class v2, Ljava/lang/String;

    check-cast v2, Ljava/lang/reflect/Type;

    .line 4036
    sget-object v3, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v3, Ljava/util/Set;

    const-string v4, "isPrimary"

    .line 29
    invoke-virtual {v1, v2, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "moshi.adapter(String::cl\u2026 emptySet(), \"isPrimary\")"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 2

    .line 19
    check-cast p2, Lcom/cred/pay/repository/models/Account;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1130
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "atmPinLength"

    .line 1131
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1132
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2061
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->extraCallback:Ljava/lang/String;

    .line 1132
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bankAccountUniqueId"

    .line 1133
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1134
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2062
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    .line 1134
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bankCode"

    .line 1135
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1136
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2063
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    .line 1136
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "bankName"

    .line 1137
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1138
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2064
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    .line 1138
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "branchName"

    .line 1139
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1140
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2065
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->onMessageChannelReady:Ljava/lang/String;

    .line 1140
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "ifsc"

    .line 1141
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1142
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2066
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 1142
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "maskedAccountNumber"

    .line 1143
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1144
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2067
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1144
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "mpinLength"

    .line 1145
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1146
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2068
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->asInterface:Ljava/lang/String;

    .line 1146
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "mpinSet"

    .line 1147
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1148
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2069
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->onTransact:Ljava/lang/String;

    .line 1148
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name"

    .line 1149
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1150
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2070
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->asBinder:Ljava/lang/String;

    .line 1150
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "otpLength"

    .line 1151
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1152
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2071
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->ICustomTabsService:Ljava/lang/String;

    .line 1152
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "referenceId"

    .line 1153
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1154
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2072
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 1154
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "type"

    .line 1155
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1156
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    .line 2073
    iget-object v1, p2, Lcom/cred/pay/repository/models/Account;->warmup:Ljava/lang/String;

    .line 1156
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "isPrimary"

    .line 1157
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 1158
    iget-object v0, p0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 2074
    iget-object p2, p2, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1158
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 1159
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 1128
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    .line 19
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
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

    .line 1055
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v18

    const-string v2, "type"

    move-object/from16 v19, v15

    const-string v15, "referenceId"

    move-object/from16 v20, v14

    const-string v14, "otpLength"

    move-object/from16 v21, v13

    const-string v13, "name"

    move-object/from16 v22, v12

    const-string v12, "mpinSet"

    move-object/from16 v23, v11

    const-string v11, "mpinLength"

    move-object/from16 v24, v10

    const-string v10, "maskedAccountNumber"

    move-object/from16 v25, v9

    const-string v9, "ifsc"

    move-object/from16 v26, v8

    const-string v8, "branchName"

    move-object/from16 v27, v7

    const-string v7, "bankName"

    move-object/from16 v28, v6

    const-string v6, "bankCode"

    move-object/from16 v29, v5

    const-string v5, "bankAccountUniqueId"

    move-object/from16 v30, v4

    const-string v4, "atmPinLength"

    if-eqz v18, :cond_d

    move-object/from16 v18, v4

    .line 1056
    iget-object v4, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {v1, v4}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 1084
    :pswitch_0
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    and-int/lit16 v3, v3, -0x2001

    goto/16 :goto_1

    .line 1081
    :pswitch_1
    iget-object v4, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v4, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Ljava/lang/String;

    if-eqz v16, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"typ\u2026ype\",\n            reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1079
    :pswitch_2
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v15, v2

    goto/16 :goto_2

    .line 1080
    :cond_1
    invoke-static {v15, v15, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ref\u2026\", \"referenceId\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1077
    :pswitch_3
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v14, v2

    move-object/from16 v15, v19

    goto/16 :goto_3

    :cond_2
    invoke-static {v14, v14, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"otp\u2026     \"otpLength\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1075
    :pswitch_4
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v13, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    goto/16 :goto_4

    :cond_3
    invoke-static {v13, v13, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"nam\u2026ame\",\n            reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1073
    :pswitch_5
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v12, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    goto/16 :goto_5

    :cond_4
    invoke-static {v12, v12, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"mpi\u2026       \"mpinSet\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1071
    :pswitch_6
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v11, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    goto/16 :goto_6

    :cond_5
    invoke-static {v11, v11, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"mpi\u2026    \"mpinLength\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1069
    :pswitch_7
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v10, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    goto/16 :goto_7

    .line 1070
    :cond_6
    invoke-static {v10, v10, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"mas\u2026edAccountNumber\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1067
    :pswitch_8
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object v9, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    goto/16 :goto_8

    :cond_7
    invoke-static {v9, v9, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ifs\u2026fsc\",\n            reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1065
    :pswitch_9
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object v8, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v9, v25

    goto/16 :goto_9

    :cond_8
    invoke-static {v8, v8, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"bra\u2026    \"branchName\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1063
    :pswitch_a
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object v7, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    goto/16 :goto_a

    :cond_9
    invoke-static {v7, v7, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ban\u2026      \"bankName\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1061
    :pswitch_b
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object v6, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    goto/16 :goto_b

    :cond_a
    invoke-static {v6, v6, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ban\u2026      \"bankCode\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1059
    :pswitch_c
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object v5, v2

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    goto :goto_c

    .line 1060
    :cond_b
    invoke-static {v5, v5, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"ban\u2026AccountUniqueId\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1057
    :pswitch_d
    iget-object v2, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->stringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, v1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v7, v27

    move-object/from16 v6, v28

    move-object/from16 v5, v29

    goto/16 :goto_0

    :cond_c
    move-object/from16 v4, v18

    .line 1058
    invoke-static {v4, v4, v1}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.unexpectedNull(\"atm\u2026, \"atmPinLength\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1090
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->asBinder()V

    .line 1091
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->newSession()V

    :goto_1
    move-object/from16 v15, v19

    :goto_2
    move-object/from16 v14, v20

    :goto_3
    move-object/from16 v13, v21

    :goto_4
    move-object/from16 v12, v22

    :goto_5
    move-object/from16 v11, v23

    :goto_6
    move-object/from16 v10, v24

    :goto_7
    move-object/from16 v9, v25

    :goto_8
    move-object/from16 v8, v26

    :goto_9
    move-object/from16 v7, v27

    :goto_a
    move-object/from16 v6, v28

    :goto_b
    move-object/from16 v5, v29

    :goto_c
    move-object/from16 v4, v30

    goto/16 :goto_0

    .line 1095
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lo/SessionFiles;->onPostMessage()V

    move-object/from16 v18, v4

    .line 1097
    iget-object v4, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const/16 v31, 0x6

    const/16 v32, 0x5

    const/16 v33, 0x4

    const/16 v34, 0x3

    const/16 v35, 0x2

    const/16 v36, 0x1

    const/16 v37, 0x0

    move-object/from16 v38, v5

    const/16 v5, 0x10

    if-nez v4, :cond_e

    .line 1098
    const-class v4, Lcom/cred/pay/repository/models/Account;

    move-object/from16 v39, v6

    new-array v6, v5, [Ljava/lang/Class;

    const-class v40, Ljava/lang/String;

    aput-object v40, v6, v37

    const-class v40, Ljava/lang/String;

    aput-object v40, v6, v36

    .line 1099
    const-class v40, Ljava/lang/String;

    aput-object v40, v6, v35

    const-class v40, Ljava/lang/String;

    aput-object v40, v6, v34

    const-class v40, Ljava/lang/String;

    aput-object v40, v6, v33

    const-class v40, Ljava/lang/String;

    aput-object v40, v6, v32

    .line 1100
    const-class v40, Ljava/lang/String;

    aput-object v40, v6, v31

    const/16 v40, 0x7

    const-class v41, Ljava/lang/String;

    aput-object v41, v6, v40

    const/16 v40, 0x8

    const-class v41, Ljava/lang/String;

    aput-object v41, v6, v40

    const/16 v40, 0x9

    const-class v41, Ljava/lang/String;

    aput-object v41, v6, v40

    const/16 v40, 0xa

    .line 1101
    const-class v41, Ljava/lang/String;

    aput-object v41, v6, v40

    const/16 v40, 0xb

    const-class v41, Ljava/lang/String;

    aput-object v41, v6, v40

    const/16 v40, 0xc

    const-class v41, Ljava/lang/String;

    aput-object v41, v6, v40

    const/16 v40, 0xd

    const-class v41, Ljava/lang/String;

    aput-object v41, v6, v40

    const/16 v40, 0xe

    .line 1102
    sget-object v41, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v41, v6, v40

    const/16 v40, 0xf

    sget-object v41, Lo/serializeBeginSession;->ICustomTabsCallback:Ljava/lang/Class;

    aput-object v41, v6, v40

    .line 1098
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1103
    iput-object v4, v0, Lcom/cred/pay/repository/models/AccountJsonAdapter;->constructorRef:Ljava/lang/reflect/Constructor;

    const-string v6, "Account::class.java.getD\u2026tructorRef =\n        it }"

    .line 1102
    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_e
    move-object/from16 v39, v6

    :goto_d
    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v30, :cond_1b

    aput-object v30, v5, v37

    if-eqz v29, :cond_1a

    aput-object v29, v5, v36

    if-eqz v28, :cond_19

    aput-object v28, v5, v35

    if-eqz v27, :cond_18

    aput-object v27, v5, v34

    if-eqz v26, :cond_17

    aput-object v26, v5, v33

    if-eqz v25, :cond_16

    aput-object v25, v5, v32

    if-eqz v24, :cond_15

    aput-object v24, v5, v31

    const/4 v6, 0x7

    if-eqz v23, :cond_14

    aput-object v23, v5, v6

    const/16 v6, 0x8

    if-eqz v22, :cond_13

    aput-object v22, v5, v6

    const/16 v6, 0x9

    if-eqz v21, :cond_12

    aput-object v21, v5, v6

    const/16 v6, 0xa

    if-eqz v20, :cond_11

    aput-object v20, v5, v6

    const/16 v6, 0xb

    if-eqz v19, :cond_10

    aput-object v19, v5, v6

    const/16 v6, 0xc

    if-eqz v16, :cond_f

    aput-object v16, v5, v6

    const/16 v1, 0xd

    aput-object v17, v5, v1

    const/16 v1, 0xe

    .line 1121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-object v2, v5, v1

    .line 1104
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "localConstructor.newInst\u2026mask0,\n        null\n    )"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cred/pay/repository/models/Account;

    return-object v1

    .line 1119
    :cond_f
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"type\", \"type\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1118
    :cond_10
    invoke-static {v15, v15, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"re\u2026\", \"referenceId\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1117
    :cond_11
    invoke-static {v14, v14, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ot\u2026th\", \"otpLength\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1116
    :cond_12
    invoke-static {v13, v13, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"name\", \"name\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1115
    :cond_13
    invoke-static {v12, v12, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"mpinSet\", \"mpinSet\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1114
    :cond_14
    invoke-static {v11, v11, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"mp\u2026h\", \"mpinLength\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1112
    :cond_15
    invoke-static {v10, v10, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ma\u2026edAccountNumber\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1111
    :cond_16
    invoke-static {v9, v9, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ifsc\", \"ifsc\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1110
    :cond_17
    invoke-static {v8, v8, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"br\u2026e\", \"branchName\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 1109
    :cond_18
    invoke-static {v7, v7, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ba\u2026ame\", \"bankName\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_19
    move-object/from16 v2, v39

    .line 1108
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ba\u2026ode\", \"bankCode\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_1a
    move-object/from16 v2, v38

    .line 1106
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"ba\u2026AccountUniqueId\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_1b
    move-object/from16 v2, v18

    .line 1105
    invoke-static {v2, v2, v1}, Lo/serializeBeginSession;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Lo/SessionFiles;)Lcom/squareup/moshi/JsonDataException;

    move-result-object v1

    const-string v2, "Util.missingProperty(\"at\u2026, \"atmPinLength\", reader)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(Account)"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
