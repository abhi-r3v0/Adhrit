.class final Lo/access$1500;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RefundAccount$ICustomTabsCallback;


# instance fields
.field private final synthetic zza:Lo/access$1200;


# direct methods
.method constructor <init>(Lo/access$1200;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/access$1500;->zza:Lo/access$1200;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lo/access$1500;->zza:Lo/access$1200;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/access$1200;->zza(Lo/access$1200;Z)Z

    .line 4
    iget-object p1, p0, Lo/access$1500;->zza:Lo/access$1200;

    invoke-virtual {p1}, Lo/access$1200;->zza()V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lo/access$1500;->zza:Lo/access$1200;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/access$1200;->zza(Lo/access$1200;Z)Z

    .line 6
    iget-object p1, p0, Lo/access$1500;->zza:Lo/access$1200;

    invoke-static {p1}, Lo/access$1200;->zza(Lo/access$1200;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lo/access$1500;->zza:Lo/access$1200;

    invoke-static {p1}, Lo/access$1200;->zzb(Lo/access$1200;)Lo/getFilesDir;

    move-result-object p1

    invoke-virtual {p1}, Lo/getFilesDir;->zza()V

    :cond_1
    return-void
.end method
