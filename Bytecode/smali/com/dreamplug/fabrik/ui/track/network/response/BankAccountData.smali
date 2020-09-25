.class public final Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;
.super Ljava/lang/Object;
.source ""


# annotations
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;",
        "",
        "raw",
        "Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;",
        "templateProperties",
        "Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;",
        "(Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;)V",
        "getRaw",
        "()Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;",
        "getTemplateProperties",
        "()Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field public final extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;

.field public final onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;)V
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "raw"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param

    const-string/jumbo v0, "templateProperties"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;)Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;
    .locals 1
    .param p1    # Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "raw"
        .end annotation
    .end param
    .param p2    # Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "template_properties"
        .end annotation
    .end param

    const-string/jumbo v0, "templateProperties"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;

    invoke-direct {v0, p1, p2}, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;-><init>(Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BankAccountData(raw="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->extraCallback:Lcom/dreamplug/fabrik/ui/track/network/response/RawBankAccount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", templateProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/track/network/response/BankAccountData;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/track/network/response/AccountTemplateProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
