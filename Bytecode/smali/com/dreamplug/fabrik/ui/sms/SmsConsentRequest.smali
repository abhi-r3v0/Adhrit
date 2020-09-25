.class public final Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00032\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;",
        "",
        "consentValue",
        "",
        "purpose",
        "",
        "metadata",
        "Lcom/dreamplug/fabrik/ui/sms/MetaData;",
        "(ZLjava/lang/String;Lcom/dreamplug/fabrik/ui/sms/MetaData;)V",
        "getConsentValue",
        "()Z",
        "getMetadata",
        "()Lcom/dreamplug/fabrik/ui/sms/MetaData;",
        "getPurpose",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field final extraCallback:Z

.field final onMessageChannelReady:Lcom/dreamplug/fabrik/ui/sms/MetaData;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/dreamplug/fabrik/ui/sms/MetaData;)V
    .locals 1
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "consent_value"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "purpose"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/sms/MetaData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "metadata"
        .end annotation
    .end param

    const-string v0, "purpose"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->extraCallback:Z

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/sms/MetaData;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/dreamplug/fabrik/ui/sms/MetaData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string/jumbo p2, "send_sms_to_bank"

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;-><init>(ZLjava/lang/String;Lcom/dreamplug/fabrik/ui/sms/MetaData;)V

    return-void
.end method


# virtual methods
.method public final copy(ZLjava/lang/String;Lcom/dreamplug/fabrik/ui/sms/MetaData;)Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;
    .locals 1
    .param p1    # Z
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "consent_value"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "purpose"
        .end annotation
    .end param
    .param p3    # Lcom/dreamplug/fabrik/ui/sms/MetaData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "metadata"
        .end annotation
    .end param

    const-string v0, "purpose"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;-><init>(ZLjava/lang/String;Lcom/dreamplug/fabrik/ui/sms/MetaData;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->extraCallback:Z

    iget-boolean v1, p1, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->extraCallback:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onPostMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onPostMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/sms/MetaData;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/sms/MetaData;

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

    iget-boolean v0, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->extraCallback:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/sms/MetaData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsConsentRequest(consentValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->extraCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", purpose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/sms/SmsConsentRequest;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/sms/MetaData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
