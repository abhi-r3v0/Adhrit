.class public final Lo/setFabCradleRoundedCornerRadius;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field private onMessageChannelReady:J

.field private onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setFabCradleRoundedCornerRadius;->ICustomTabsCallback:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/setFabCradleRoundedCornerRadius;->onNavigationEvent:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p3, p0, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    .line 5
    iput-wide p4, p0, Lo/setFabCradleRoundedCornerRadius;->onMessageChannelReady:J

    return-void
.end method

.method public static ICustomTabsCallback(Lo/zzir;)Lo/setFabCradleRoundedCornerRadius;
    .locals 7

    .line 7
    new-instance v6, Lo/setFabCradleRoundedCornerRadius;

    iget-object v1, p0, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/zzir;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    .line 8
    invoke-virtual {v0}, Lo/zzfa$zza;->ICustomTabsCallback()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v4, p0, Lo/zzir;->onPostMessage:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/setFabCradleRoundedCornerRadius;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-object v6
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/zzir;
    .locals 7

    .line 10
    new-instance v6, Lo/zzir;

    iget-object v1, p0, Lo/setFabCradleRoundedCornerRadius;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v2, Lo/zzfa$zza;

    new-instance v0, Landroid/os/Bundle;

    iget-object v3, p0, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v2, v0}, Lo/zzfa$zza;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Lo/setFabCradleRoundedCornerRadius;->onNavigationEvent:Ljava/lang/String;

    iget-wide v4, p0, Lo/setFabCradleRoundedCornerRadius;->onMessageChannelReady:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 11
    iget-object v0, p0, Lo/setFabCradleRoundedCornerRadius;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p0, Lo/setFabCradleRoundedCornerRadius;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/setFabCradleRoundedCornerRadius;->onPostMessage:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "origin="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",name="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",params="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
