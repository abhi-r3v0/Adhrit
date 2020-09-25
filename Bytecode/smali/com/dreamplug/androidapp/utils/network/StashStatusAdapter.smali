.class public final Lcom/dreamplug/androidapp/utils/network/StashStatusAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/utils/network/StashStatusAdapter;",
        "",
        "()V",
        "fromJson",
        "Lcom/dreamplug/androidapp/data/states/StashStatus;",
        "type",
        "",
        "toJson",
        "status",
        "app_release"
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lo/getThumbScrollRange;
    .locals 1
    .annotation runtime Lcom/dreamplug/androidapp/utils/network/StashProcessStatus;
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "OKYC_AADHAAR_SETUP"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$onRelationshipValidationResult;->onNavigationEvent:Lo/getThumbScrollRange$onRelationshipValidationResult;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_1
    const-string v0, "CRED_STASH"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$onNavigationEvent;->onPostMessage:Lo/getThumbScrollRange$onNavigationEvent;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_2
    const-string v0, "OKYC_XML_FETCHING"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$asBinder;->extraCallback:Lo/getThumbScrollRange$asBinder;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_3
    const-string v0, "OKYC_AADHAAR_OTP"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$asInterface;->onNavigationEvent:Lo/getThumbScrollRange$asInterface;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_4
    const-string v0, "LOAN_CREATION"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getThumbScrollRange$ICustomTabsCallback$Stub;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_5
    const-string v0, "AUTODEBIT"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$onMessageChannelReady;->onMessageChannelReady:Lo/getThumbScrollRange$onMessageChannelReady;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_6
    const-string v0, "AUTO_DEBIT_REGISTRATION"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$extraCallback;->ICustomTabsCallback:Lo/getThumbScrollRange$extraCallback;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_7
    const-string v0, "OTP"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$newSession;->ICustomTabsCallback:Lo/getThumbScrollRange$newSession;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_8
    const-string v0, "KYC"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$onPostMessage;->onMessageChannelReady:Lo/getThumbScrollRange$onPostMessage;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_9
    const-string v0, "STASH_AUTH"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$ICustomTabsService;->onMessageChannelReady:Lo/getThumbScrollRange$ICustomTabsService;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_a
    const-string v0, "OKYC_AADHAAR_CAPTCHA"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$onTransact;->onMessageChannelReady:Lo/getThumbScrollRange$onTransact;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    :sswitch_b
    const-string v0, "DISBURSAL"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbScrollRange$ICustomTabsCallback;->extraCallback:Lo/getThumbScrollRange$ICustomTabsCallback;

    check-cast p1, Lo/getThumbScrollRange;

    return-object p1

    .line 49
    :cond_0
    :goto_0
    new-instance v0, Lo/getThumbScrollRange$warmup;

    invoke-direct {v0, p1}, Lo/getThumbScrollRange$warmup;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/getThumbScrollRange;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62835513 -> :sswitch_b
        -0x421e6030 -> :sswitch_a
        -0x1eb3d0ae -> :sswitch_9
        0x12495 -> :sswitch_8
        0x1330b -> :sswitch_7
        0x518a5dc -> :sswitch_6
        0x95cfc7d -> :sswitch_5
        0xbb6614e -> :sswitch_4
        0xce6ef81 -> :sswitch_3
        0xcf153e9 -> :sswitch_2
        0x20d22e24 -> :sswitch_1
        0x6f1ab953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final toJson(Lo/getThumbScrollRange;)Ljava/lang/String;
    .locals 1
    .param p1    # Lo/getThumbScrollRange;
        .annotation runtime Lcom/dreamplug/androidapp/utils/network/StashProcessStatus;
        .end annotation
    .end param
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lo/getThumbScrollRange$onPostMessage;->onMessageChannelReady:Lo/getThumbScrollRange$onPostMessage;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "KYC"

    return-object p1

    .line 18
    :cond_0
    sget-object v0, Lo/getThumbScrollRange$onMessageChannelReady;->onMessageChannelReady:Lo/getThumbScrollRange$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "AUTODEBIT"

    return-object p1

    .line 19
    :cond_1
    sget-object v0, Lo/getThumbScrollRange$extraCallback;->ICustomTabsCallback:Lo/getThumbScrollRange$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "AUTO_DEBIT_REGISTRATION"

    return-object p1

    .line 20
    :cond_2
    sget-object v0, Lo/getThumbScrollRange$onNavigationEvent;->onPostMessage:Lo/getThumbScrollRange$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "CRED_STASH"

    return-object p1

    .line 21
    :cond_3
    sget-object v0, Lo/getThumbScrollRange$ICustomTabsService;->onMessageChannelReady:Lo/getThumbScrollRange$ICustomTabsService;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "STASH_AUTH"

    return-object p1

    .line 22
    :cond_4
    sget-object v0, Lo/getThumbScrollRange$ICustomTabsCallback;->extraCallback:Lo/getThumbScrollRange$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "DISBURSAL"

    return-object p1

    .line 23
    :cond_5
    sget-object v0, Lo/getThumbScrollRange$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/getThumbScrollRange$ICustomTabsCallback$Stub;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "LOAN_CREATION"

    return-object p1

    .line 24
    :cond_6
    sget-object v0, Lo/getThumbScrollRange$newSession;->ICustomTabsCallback:Lo/getThumbScrollRange$newSession;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "OTP"

    return-object p1

    .line 25
    :cond_7
    sget-object v0, Lo/getThumbScrollRange$onRelationshipValidationResult;->onNavigationEvent:Lo/getThumbScrollRange$onRelationshipValidationResult;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "OKYC_AADHAAR_SETUP"

    return-object p1

    .line 26
    :cond_8
    sget-object v0, Lo/getThumbScrollRange$onTransact;->onMessageChannelReady:Lo/getThumbScrollRange$onTransact;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "OKYC_AADHAAR_CAPTCHA"

    return-object p1

    .line 27
    :cond_9
    sget-object v0, Lo/getThumbScrollRange$asInterface;->onNavigationEvent:Lo/getThumbScrollRange$asInterface;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "OKYC_AADHAAR_OTP"

    return-object p1

    .line 28
    :cond_a
    sget-object v0, Lo/getThumbScrollRange$asBinder;->extraCallback:Lo/getThumbScrollRange$asBinder;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "OKYC_XML_FETCHING"

    return-object p1

    .line 29
    :cond_b
    instance-of v0, p1, Lo/getThumbScrollRange$warmup;

    if-eqz v0, :cond_c

    check-cast p1, Lo/getThumbScrollRange$warmup;

    .line 1046
    iget-object p1, p1, Lo/getThumbScrollRange$warmup;->onMessageChannelReady:Ljava/lang/String;

    return-object p1

    .line 29
    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
