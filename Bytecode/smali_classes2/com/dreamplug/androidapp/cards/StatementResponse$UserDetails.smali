.class public final Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/androidapp/cards/StatementResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u0017B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;",
        "",
        "address",
        "",
        "userId",
        "accountName",
        "Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;)V",
        "getAccountName",
        "()Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;",
        "getAddress",
        "()Ljava/lang/String;",
        "getUserId",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "AccountName",
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
.field private final accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "account_name"
    .end annotation
.end field

.field private final address:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "address"
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountName"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;ILjava/lang/Object;)Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;)Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;)Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;
    .locals 1

    const-string v0, "address"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountName"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

    iget-object p1, p1, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

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

.method public final getAccountName()Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

    return-object v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

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

    const-string v1, "UserDetails(address="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails;->accountName:Lcom/dreamplug/androidapp/cards/StatementResponse$UserDetails$AccountName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
