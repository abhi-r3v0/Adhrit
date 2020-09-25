.class public final Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lcom/cred/pay/repository/models/NetBankingInstrument;",
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
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/models/NetBankingInstrument;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "(Lcom/squareup/moshi/Moshi;)V",
        "nullableBooleanAdapter",
        "",
        "nullableStatusAdapter",
        "Lcom/cred/pay/repository/models/Status;",
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
.field private final nullableBooleanAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final nullableStatusAdapter:Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/JniNativeApi<",
            "Lcom/cred/pay/repository/models/Status;",
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
    .locals 9

    const-string v0, "moshi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    const-string v1, "bank_code"

    const-string v2, "logo_url"

    const-string v3, "name"

    const-string v4, "payment_sub_method"

    const-string v5, "short_code"

    const-string v6, "status"

    const-string v7, "user_authentication_required"

    const-string v8, "status"

    .line 20
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lo/SessionFiles$onNavigationEvent;->extraCallback([Ljava/lang/String;)Lo/SessionFiles$onNavigationEvent;

    move-result-object v0

    const-string v1, "JsonReader.Options.of(\"b\u2026tion_required\", \"status\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    .line 22
    const-class v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 5036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "bankCode"

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(String::cl\u2026  emptySet(), \"bankCode\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 25
    const-class v0, Lcom/cred/pay/repository/models/Status;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 6036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "instrumentStatus"

    .line 25
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "moshi.adapter(Status::cl\u2026et(), \"instrumentStatus\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 29
    const-class v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 7036
    sget-object v1, Lo/getRunLoop;->onNavigationEvent:Lo/getRunLoop;

    check-cast v1, Ljava/util/Set;

    const-string v2, "userAuthenticationRequired"

    .line 29
    invoke-virtual {p1, v0, v1, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    const-string v0, "moshi.adapter(Boolean::c\u2026rAuthenticationRequired\")"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 3

    .line 16
    check-cast p2, Lcom/cred/pay/repository/models/NetBankingInstrument;

    const-string v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 3083
    invoke-virtual {p1}, Lo/deviceFile;->onMessageChannelReady()Lo/deviceFile;

    const-string v0, "bank_code"

    .line 3084
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3085
    iget-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4021
    iget-object v1, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 3085
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "logo_url"

    .line 3086
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3087
    iget-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4023
    iget-object v1, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 3087
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "name"

    .line 3088
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3089
    iget-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4024
    iget-object v1, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 3089
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "payment_sub_method"

    .line 3090
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3091
    iget-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4026
    iget-object v1, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;->extraCallback:Ljava/lang/String;

    .line 3091
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "short_code"

    .line 3092
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3093
    iget-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    .line 4028
    iget-object v1, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;->onPostMessage:Ljava/lang/String;

    .line 3093
    invoke-virtual {v0, p1, v1}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v0, "status"

    .line 3094
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3095
    iget-object v1, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 4030
    iget-object v2, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;->ICustomTabsCallback$Stub:Lcom/cred/pay/repository/models/Status;

    .line 3095
    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    const-string v1, "user_authentication_required"

    .line 3096
    invoke-virtual {p1, v1}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3097
    iget-object v1, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    .line 4032
    iget-object v2, p2, Lcom/cred/pay/repository/models/NetBankingInstrument;->asInterface:Ljava/lang/Boolean;

    .line 3097
    invoke-virtual {v1, p1, v2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 3098
    invoke-virtual {p1, v0}, Lo/deviceFile;->onPostMessage(Ljava/lang/String;)Lo/deviceFile;

    .line 3099
    iget-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    .line 5008
    iget-object p2, p2, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    .line 3099
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    .line 3100
    invoke-virtual {p1}, Lo/deviceFile;->onPostMessage()Lo/deviceFile;

    return-void

    .line 3081
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value was null! Wrap in .nullSafe() to write nullable values."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 10

    const-string v0, "reader"

    .line 16
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p1}, Lo/SessionFiles;->extraCallback()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 1045
    :goto_0
    invoke-virtual {p1}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->options:Lo/SessionFiles$onNavigationEvent;

    invoke-virtual {p1, v2}, Lo/SessionFiles;->onPostMessage(Lo/SessionFiles$onNavigationEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1055
    :pswitch_0
    iget-object v0, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    invoke-virtual {v0, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cred/pay/repository/models/Status;

    const/4 v1, 0x1

    goto :goto_0

    .line 1053
    :pswitch_1
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableBooleanAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_0

    .line 1052
    :pswitch_2
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStatusAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/cred/pay/repository/models/Status;

    goto :goto_0

    .line 1051
    :pswitch_3
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    .line 1050
    :pswitch_4
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 1049
    :pswitch_5
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    .line 1048
    :pswitch_6
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 1047
    :pswitch_7
    iget-object v2, p0, Lcom/cred/pay/repository/models/NetBankingInstrumentJsonAdapter;->nullableStringAdapter:Lo/JniNativeApi;

    invoke-virtual {v2, p1}, Lo/JniNativeApi;->onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 1060
    :pswitch_8
    invoke-virtual {p1}, Lo/SessionFiles;->asBinder()V

    .line 1061
    invoke-virtual {p1}, Lo/SessionFiles;->newSession()V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {p1}, Lo/SessionFiles;->onPostMessage()V

    .line 1066
    new-instance p1, Lcom/cred/pay/repository/models/NetBankingInstrument;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/cred/pay/repository/models/NetBankingInstrument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/Boolean;)V

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2008
    :cond_1
    iget-object v0, p1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    .line 3008
    :goto_1
    iput-object v0, p1, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "GeneratedJsonAdapter(NetBankingInstrument)"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
