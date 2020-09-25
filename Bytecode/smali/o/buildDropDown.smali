.class public final Lo/buildDropDown;
.super Lo/JniNativeApi;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/JniNativeApi<",
        "Lo/MenuPopupWindow;",
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
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cred/pay/repository/visa/VisaDataPayloadAdapter;",
        "Lcom/squareup/moshi/JsonAdapter;",
        "Lcom/cred/pay/repository/visa/VisaDataPayloadClass;",
        "()V",
        "fromJson",
        "reader",
        "Lcom/squareup/moshi/JsonReader;",
        "toJson",
        "",
        "writer",
        "Lcom/squareup/moshi/JsonWriter;",
        "value",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lo/JniNativeApi;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 4

    .line 109
    check-cast p2, Lo/MenuPopupWindow;

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1113
    instance-of v0, p2, Lcom/cred/pay/repository/visa/PrefetchPayload;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v0

    const-class v2, Lcom/cred/pay/repository/visa/PrefetchPayload;

    .line 2072
    sget-object v3, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 2098
    invoke-virtual {v0, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 1113
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void

    .line 1114
    :cond_0
    instance-of v0, p2, Lcom/cred/pay/repository/visa/InitPayload;

    if-eqz v0, :cond_1

    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v0

    const-class v2, Lcom/cred/pay/repository/visa/InitPayload;

    .line 3072
    sget-object v3, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 3098
    invoke-virtual {v0, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 1114
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void

    .line 1115
    :cond_1
    instance-of v0, p2, Lcom/cred/pay/repository/visa/EligibilityPayload;

    if-eqz v0, :cond_2

    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v0

    const-class v2, Lcom/cred/pay/repository/visa/EligibilityPayload;

    .line 4072
    sget-object v3, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 4098
    invoke-virtual {v0, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 1115
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void

    .line 1116
    :cond_2
    instance-of v0, p2, Lcom/cred/pay/repository/visa/JustPaySafePayload;

    if-eqz v0, :cond_3

    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v0

    const-class v2, Lcom/cred/pay/repository/visa/JustPaySafePayload;

    .line 5072
    sget-object v3, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 5098
    invoke-virtual {v0, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 1116
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    return-void

    .line 1117
    :cond_3
    instance-of v0, p2, Lcom/cred/pay/repository/visa/ViesPayPayload;

    if-eqz v0, :cond_4

    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v0

    const-class v2, Lcom/cred/pay/repository/visa/ViesPayPayload;

    .line 6072
    sget-object v3, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 6098
    invoke-virtual {v0, v2, v3, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    .line 1117
    invoke-virtual {v0, p1, p2}, Lo/JniNativeApi;->ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final synthetic onMessageChannelReady(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 1

    const-string v0, "reader"

    .line 109
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6122
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t deserialise VisaDataPayloadClass"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
