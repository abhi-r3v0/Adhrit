.class final Lo/setExitTransition$asBinder$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setExitTransition$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Lo/setExitTransition$asBinder;

.field private synthetic onNavigationEvent:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;

.field private synthetic onRelationshipValidationResult:Lcom/cred/pay/repository/models/CardBinDetails;


# direct methods
.method constructor <init>(Lo/setExitTransition$asBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/CardBinDetails;)V
    .locals 0

    iput-object p1, p0, Lo/setExitTransition$asBinder$3;->onMessageChannelReady:Lo/setExitTransition$asBinder;

    iput-object p2, p0, Lo/setExitTransition$asBinder$3;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/setExitTransition$asBinder$3;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/setExitTransition$asBinder$3;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p5, p0, Lo/setExitTransition$asBinder$3;->onNavigationEvent:Ljava/lang/String;

    iput-object p6, p0, Lo/setExitTransition$asBinder$3;->onRelationshipValidationResult:Lcom/cred/pay/repository/models/CardBinDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 28

    move-object/from16 v0, p0

    .line 193
    iget-object v1, v0, Lo/setExitTransition$asBinder$3;->onMessageChannelReady:Lo/setExitTransition$asBinder;

    iget-object v1, v1, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    .line 1000
    iget-object v1, v1, Lo/setExitTransition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MenuItemHoverListener;

    if-eqz v1, :cond_2

    .line 193
    iget-object v2, v0, Lo/setExitTransition$asBinder$3;->onPostMessage:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, v0, Lo/setExitTransition$asBinder$3;->extraCallback:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    iget-object v4, v0, Lo/setExitTransition$asBinder$3;->ICustomTabsCallback:Ljava/lang/String;

    move-object/from16 v22, v4

    iget-object v15, v0, Lo/setExitTransition$asBinder$3;->onNavigationEvent:Ljava/lang/String;

    iget-object v9, v0, Lo/setExitTransition$asBinder$3;->onRelationshipValidationResult:Lcom/cred/pay/repository/models/CardBinDetails;

    iget-object v5, v0, Lo/setExitTransition$asBinder$3;->onMessageChannelReady:Lo/setExitTransition$asBinder;

    iget-object v5, v5, Lo/setExitTransition$asBinder;->ICustomTabsCallback:Lo/setExitTransition;

    invoke-static {v5}, Lo/setExitTransition;->asBinder(Lo/setExitTransition;)Z

    move-result v23

    const-string v5, "cardNumber"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "cvv"

    invoke-static {v15, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "binDetails"

    invoke-static {v9, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1135
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2046
    iget-object v5, v9, Lcom/cred/pay/repository/models/CardBinDetails;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 3040
    iget-object v6, v9, Lcom/cred/pay/repository/models/CardBinDetails;->extraCallback:Ljava/lang/String;

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v10, 0x4

    invoke-virtual {v4, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v11, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-XXXX-XXXX-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3041
    iget-object v10, v9, Lcom/cred/pay/repository/models/CardBinDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 1134
    new-instance v2, Lcom/cred/pay/repository/models/CardInstrument;

    move-object v4, v2

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object/from16 v27, v15

    move-object v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const v25, 0x9fdd0

    const/16 v26, 0x0

    invoke-direct/range {v4 .. v26}, Lcom/cred/pay/repository/models/CardInstrument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lo/isInputMethodNotNeeded;

    move-object/from16 v3, v27

    invoke-virtual {v1, v2, v3}, Lo/MenuItemHoverListener;->extraCallback(Lo/isInputMethodNotNeeded;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
