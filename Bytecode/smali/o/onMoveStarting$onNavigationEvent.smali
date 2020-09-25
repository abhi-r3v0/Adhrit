.class public final Lo/onMoveStarting$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onMoveStarting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ2\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiPaymentData$UpiAccountResult;",
        "",
        "upiAccountResponse",
        "Lcom/cred/pay/repository/models/UpiAccountResponse;",
        "upiFailure",
        "Lcom/cred/pay/repository/models/UpiErrorResponse;",
        "isTimeOut",
        "",
        "(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;Ljava/lang/Boolean;)V",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getUpiAccountResponse",
        "()Lcom/cred/pay/repository/models/UpiAccountResponse;",
        "getUpiFailure",
        "()Lcom/cred/pay/repository/models/UpiErrorResponse;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;Ljava/lang/Boolean;)Lcom/dreamplug/upi/UpiPaymentData$UpiAccountResult;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/Boolean;

.field public final onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

.field public final onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v0, v1}, Lo/onMoveStarting$onNavigationEvent;-><init>(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v1

    .line 260
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lo/onMoveStarting$onNavigationEvent;-><init>(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;Ljava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(Lcom/cred/pay/repository/models/UpiAccountResponse;Lcom/cred/pay/repository/models/UpiErrorResponse;Ljava/lang/Boolean;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    iput-object p2, p0, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/onMoveStarting$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/onMoveStarting$onNavigationEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lo/onMoveStarting$onNavigationEvent;

    iget-object v0, p0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    iget-object v1, p1, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    iget-object v1, p1, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/onMoveStarting$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Boolean;

    iget-object p1, p1, Lo/onMoveStarting$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/onMoveStarting$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpiAccountResult(upiAccountResponse="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onMoveStarting$onNavigationEvent;->onPostMessage:Lcom/cred/pay/repository/models/UpiAccountResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upiFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/onMoveStarting$onNavigationEvent;->onMessageChannelReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
