.class final Lo/getCpuArchitectureInt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field private final synthetic zza:Lo/CommonUtils;


# direct methods
.method public constructor <init>(Lo/CommonUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getCpuArchitectureInt;->zza:Lo/CommonUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lo/getCpuArchitectureInt;->zza:Lo/CommonUtils;

    iget-object p1, p1, Lo/CommonUtils;->zza:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-static {p2}, Lo/getSharedPrefs;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "events"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lo/getCpuArchitectureInt;->zza:Lo/CommonUtils;

    invoke-static {p2}, Lo/CommonUtils;->zza(Lo/CommonUtils;)Lo/convertLongToFourByteBuffer$onNavigationEvent;

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p2, p3, p1}, Lo/convertLongToFourByteBuffer$onNavigationEvent;->onMessageTriggered(ILandroid/os/Bundle;)V

    return-void
.end method
