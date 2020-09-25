.class final Lo/streamToString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# instance fields
.field private final synthetic zza:Lo/convertLongToTwoByteBuffer;


# direct methods
.method public constructor <init>(Lo/convertLongToTwoByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/streamToString;->zza:Lo/convertLongToTwoByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "crash"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {p2}, Lo/getSharedPrefs;->zzb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "name"

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "timestampInMillis"

    .line 7
    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "params"

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    iget-object p2, p0, Lo/streamToString;->zza:Lo/convertLongToTwoByteBuffer;

    invoke-static {p2}, Lo/convertLongToTwoByteBuffer;->zza(Lo/convertLongToTwoByteBuffer;)Lo/convertLongToFourByteBuffer$onNavigationEvent;

    move-result-object p2

    const/4 p3, 0x3

    invoke-interface {p2, p3, p1}, Lo/convertLongToFourByteBuffer$onNavigationEvent;->onMessageTriggered(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
