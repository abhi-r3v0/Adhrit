.class public final Lcom/cred/pay/repository/models/CredUpiInstrument;
.super Lo/isInputMethodNotNeeded;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001BA\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0005J\u0008\u0010\u0014\u001a\u00020\u0005H\u0016J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0016\u001a\u00020\u0005H\u0016J\u0008\u0010\u0017\u001a\u00020\u0005H\u0016J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\"\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/CredUpiInstrument;",
        "Lcom/cred/pay/repository/models/Instrument;",
        "vpaAccount",
        "Lcom/cred/pay/repository/models/VpaAccount;",
        "bankImageUrl",
        "",
        "bankCode",
        "bankAccountUniqueId",
        "status",
        "Lcom/cred/pay/repository/models/Status;",
        "(Lcom/cred/pay/repository/models/VpaAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;)V",
        "getBankAccountUniqueId",
        "()Ljava/lang/String;",
        "getBankCode",
        "getBankImageUrl",
        "setBankImageUrl",
        "(Ljava/lang/String;)V",
        "getVpaAccount",
        "()Lcom/cred/pay/repository/models/VpaAccount;",
        "displayAccountNumber",
        "getInstrumentGroup",
        "getInstrumentLogo",
        "getInstrumentTitle",
        "getInstrumentUniqueId",
        "getPaymentMethodType",
        "toInstrumentComplete",
        "Lcom/cred/pay/repository/converters/InstrumentsComplete;",
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
.field public final extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

.field public onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/cred/pay/repository/models/CredUpiInstrument;-><init>(Lcom/cred/pay/repository/models/VpaAccount;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cred/pay/repository/models/VpaAccount;I)V
    .locals 6

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/cred/pay/repository/models/CredUpiInstrument;-><init>(Lcom/cred/pay/repository/models/VpaAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;)V

    return-void
.end method

.method public constructor <init>(Lcom/cred/pay/repository/models/VpaAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "bank_account_unique_id"
        .end annotation
    .end param

    .line 274
    invoke-direct {p0, p5}, Lo/isInputMethodNotNeeded;-><init>(Lcom/cred/pay/repository/models/Status;)V

    iput-object p1, p0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    iput-object p2, p0, Lcom/cred/pay/repository/models/CredUpiInstrument;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lcom/cred/pay/repository/models/CredUpiInstrument;->onPostMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/cred/pay/repository/models/CredUpiInstrument;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v0, :cond_0

    .line 2048
    iget-object v0, v0, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, v0, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upi_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_0

    .line 1048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/cred/pay/repository/models/CredUpiInstrument;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "UPI"

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "upi"

    return-object v0
.end method

.method public final onTransact()Lcom/cred/pay/repository/converters/InstrumentsComplete;
    .locals 39

    move-object/from16 v0, p0

    .line 297
    new-instance v38, Lcom/cred/pay/repository/converters/InstrumentsComplete;

    .line 299
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_0

    .line 3070
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->asBinder:Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    .line 4008
    iget-object v6, v0, Lo/isInputMethodNotNeeded;->ICustomTabsService$Stub$Proxy:Lcom/cred/pay/repository/models/Status;

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

    const/16 v20, 0x0

    .line 317
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_1

    .line 4048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_1

    .line 4063
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->onNavigationEvent:Ljava/lang/String;

    move-object/from16 v21, v1

    goto :goto_1

    :cond_1
    move-object/from16 v21, v2

    :goto_1
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 322
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_2

    .line 5049
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    move-object/from16 v26, v1

    goto :goto_2

    :cond_2
    move-object/from16 v26, v2

    .line 323
    :goto_2
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_3

    .line 6048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_3

    .line 6072
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    move-object/from16 v27, v1

    goto :goto_3

    :cond_3
    move-object/from16 v27, v2

    .line 324
    :goto_3
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_4

    .line 7048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_4

    .line 7067
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->onRelationshipValidationResult:Ljava/lang/String;

    move-object/from16 v28, v1

    goto :goto_4

    :cond_4
    move-object/from16 v28, v2

    .line 325
    :goto_4
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_5

    .line 8048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_5

    .line 8073
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->warmup:Ljava/lang/String;

    move-object/from16 v29, v1

    goto :goto_5

    :cond_5
    move-object/from16 v29, v2

    .line 326
    :goto_5
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_6

    .line 9048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_6

    .line 9066
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback$Stub:Ljava/lang/String;

    move-object/from16 v30, v1

    goto :goto_6

    :cond_6
    move-object/from16 v30, v2

    .line 327
    :goto_6
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_7

    .line 10048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_7

    .line 10062
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->onPostMessage:Ljava/lang/String;

    move-object/from16 v31, v1

    goto :goto_7

    :cond_7
    move-object/from16 v31, v2

    .line 328
    :goto_7
    iget-object v1, v0, Lcom/cred/pay/repository/models/CredUpiInstrument;->extraCallback:Lcom/cred/pay/repository/models/VpaAccount;

    if-eqz v1, :cond_8

    .line 11048
    iget-object v1, v1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    if-eqz v1, :cond_8

    .line 11064
    iget-object v1, v1, Lcom/cred/pay/repository/models/Account;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v32, v1

    goto :goto_8

    :cond_8
    move-object/from16 v32, v2

    :goto_8
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/4 v2, 0x0

    const-string v5, "UPI_CRED"

    move-object/from16 v1, v38

    .line 297
    invoke-direct/range {v1 .. v37}, Lcom/cred/pay/repository/converters/InstrumentsComplete;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v38
.end method
