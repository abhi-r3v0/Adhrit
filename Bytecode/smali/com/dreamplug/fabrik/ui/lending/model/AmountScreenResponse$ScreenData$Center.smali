.class public final Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Center"
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
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J!\u0010\u000b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;",
        "",
        "title",
        "",
        "sub_title",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getSub_title",
        "()Ljava/lang/String;",
        "getTitle",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private final sub_title:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;
    .locals 1

    new-instance v0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    invoke-direct {v0, p1, p2}, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

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

.method public final getSub_title()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

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

    const-string v1, "Center(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sub_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lending/model/AmountScreenResponse$ScreenData$Center;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
