.class final Lo/setNavigationMode$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDropdownSelectedPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setNavigationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lo/setNavigationMode$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 272
    instance-of v0, p1, Lo/setNavigationMode$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, Lo/setNavigationMode$onMessageChannelReady;

    .line 274
    iget-object v0, p0, Lo/setNavigationMode$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget-object p1, p1, Lo/setNavigationMode$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 281
    iget-object v0, p0, Lo/setNavigationMode$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lo/setNavigationMode$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StringHeaderFactory{value=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setNavigationMode$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
