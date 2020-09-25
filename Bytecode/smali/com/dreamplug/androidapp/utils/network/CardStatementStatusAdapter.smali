.class public final Lcom/dreamplug/androidapp/utils/network/CardStatementStatusAdapter;
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
        "Lcom/dreamplug/androidapp/utils/network/CardStatementStatusAdapter;",
        "",
        "()V",
        "fromJson",
        "Lcom/dreamplug/androidapp/data/states/CardStatementStatus;",
        "currencyString",
        "",
        "toJson",
        "currency",
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
.method public final fromJson(Ljava/lang/String;)Lo/getThumbOffset;
    .locals 1
    .annotation runtime Lcom/dreamplug/androidapp/utils/network/StatementStatus;
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "currencyString"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "email_linked"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbOffset$onMessageChannelReady;->onPostMessage:Lo/getThumbOffset$onMessageChannelReady;

    check-cast p1, Lo/getThumbOffset;

    return-object p1

    :sswitch_1
    const-string v0, "email_not_linked"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbOffset$onPostMessage;->onPostMessage:Lo/getThumbOffset$onPostMessage;

    check-cast p1, Lo/getThumbOffset;

    return-object p1

    :sswitch_2
    const-string v0, "credentials_invalid"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbOffset$onNavigationEvent;->extraCallback:Lo/getThumbOffset$onNavigationEvent;

    check-cast p1, Lo/getThumbOffset;

    return-object p1

    :sswitch_3
    const-string v0, "credentials_added"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbOffset$extraCallback;->onMessageChannelReady:Lo/getThumbOffset$extraCallback;

    check-cast p1, Lo/getThumbOffset;

    return-object p1

    :sswitch_4
    const-string v0, "credentials_not_added"

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lo/getThumbOffset$ICustomTabsCallback;->extraCallback:Lo/getThumbOffset$ICustomTabsCallback;

    check-cast p1, Lo/getThumbOffset;

    return-object p1

    .line 35
    :cond_0
    :goto_0
    new-instance v0, Lo/getThumbOffset$onTransact;

    invoke-direct {v0, p1}, Lo/getThumbOffset$onTransact;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/getThumbOffset;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x69e928ef -> :sswitch_4
        -0x2f63c603 -> :sswitch_3
        -0x2c4c004c -> :sswitch_2
        -0x23765a78 -> :sswitch_1
        0x111501c -> :sswitch_0
    .end sparse-switch
.end method

.method public final toJson(Lo/getThumbOffset;)Ljava/lang/String;
    .locals 1
    .param p1    # Lo/getThumbOffset;
        .annotation runtime Lcom/dreamplug/androidapp/utils/network/StatementStatus;
        .end annotation
    .end param
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    const-string v0, "currency"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lo/getThumbOffset$ICustomTabsCallback;->extraCallback:Lo/getThumbOffset$ICustomTabsCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "credentials_not_added"

    return-object p1

    .line 18
    :cond_0
    sget-object v0, Lo/getThumbOffset$extraCallback;->onMessageChannelReady:Lo/getThumbOffset$extraCallback;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "credentials_added"

    return-object p1

    .line 19
    :cond_1
    sget-object v0, Lo/getThumbOffset$onNavigationEvent;->extraCallback:Lo/getThumbOffset$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "credentials_invalid"

    return-object p1

    .line 20
    :cond_2
    sget-object v0, Lo/getThumbOffset$onPostMessage;->onPostMessage:Lo/getThumbOffset$onPostMessage;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "email_not_linked"

    return-object p1

    .line 21
    :cond_3
    sget-object v0, Lo/getThumbOffset$onMessageChannelReady;->onPostMessage:Lo/getThumbOffset$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "email_linked"

    return-object p1

    .line 22
    :cond_4
    instance-of v0, p1, Lo/getThumbOffset$onTransact;

    if-eqz v0, :cond_5

    check-cast p1, Lo/getThumbOffset$onTransact;

    .line 1009
    iget-object p1, p1, Lo/getThumbOffset$onTransact;->onNavigationEvent:Ljava/lang/String;

    return-object p1

    .line 22
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
