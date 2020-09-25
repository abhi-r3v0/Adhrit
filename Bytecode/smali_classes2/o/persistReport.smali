.class public Lo/persistReport;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HttpResponse$ICustomTabsCallback;


# instance fields
.field private zzcw:Lo/HttpResponse;

.field private zzcx:Lo/onCreateLoader;

.field private zzcy:Z

.field private zzcz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/HttpResponse$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/HttpResponse;->zzbh()Lo/HttpResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/persistReport;-><init>(Lo/HttpResponse;)V

    return-void
.end method

.method public constructor <init>(Lo/HttpResponse;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lo/onCreateLoader;->onMessageChannelReady:Lo/onCreateLoader;

    iput-object v0, p0, Lo/persistReport;->zzcx:Lo/onCreateLoader;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo/persistReport;->zzcy:Z

    .line 6
    iput-object p1, p0, Lo/persistReport;->zzcw:Lo/HttpResponse;

    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/persistReport;->zzcz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lo/onCreateLoader;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lo/persistReport;->zzcx:Lo/onCreateLoader;

    sget-object v1, Lo/onCreateLoader;->onMessageChannelReady:Lo/onCreateLoader;

    if-ne v0, v1, :cond_0

    .line 23
    iput-object p1, p0, Lo/persistReport;->zzcx:Lo/onCreateLoader;

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lo/persistReport;->zzcx:Lo/onCreateLoader;

    if-eq v0, p1, :cond_1

    sget-object v0, Lo/onCreateLoader;->onMessageChannelReady:Lo/onCreateLoader;

    if-eq p1, v0, :cond_1

    .line 25
    sget-object p1, Lo/onCreateLoader;->onPostMessage:Lo/onCreateLoader;

    iput-object p1, p0, Lo/persistReport;->zzcx:Lo/onCreateLoader;

    :cond_1
    return-void
.end method

.method public final zzbj()Lo/onCreateLoader;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/persistReport;->zzcx:Lo/onCreateLoader;

    return-object v0
.end method

.method public final zzbr()V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lo/persistReport;->zzcy:Z

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lo/persistReport;->zzcw:Lo/HttpResponse;

    invoke-virtual {v0}, Lo/HttpResponse;->zzbj()Lo/onCreateLoader;

    move-result-object v0

    iput-object v0, p0, Lo/persistReport;->zzcx:Lo/onCreateLoader;

    .line 12
    iget-object v0, p0, Lo/persistReport;->zzcw:Lo/HttpResponse;

    iget-object v1, p0, Lo/persistReport;->zzcz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lo/HttpResponse;->zza(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/persistReport;->zzcy:Z

    return-void
.end method

.method public final zzbs()V
    .locals 2

    .line 15
    iget-boolean v0, p0, Lo/persistReport;->zzcy:Z

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lo/persistReport;->zzcw:Lo/HttpResponse;

    iget-object v1, p0, Lo/persistReport;->zzcz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lo/HttpResponse;->zzb(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lo/persistReport;->zzcy:Z

    return-void
.end method

.method public final zzc(I)V
    .locals 1

    .line 20
    iget-object p1, p0, Lo/persistReport;->zzcw:Lo/HttpResponse;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/HttpResponse;->zzc(I)V

    return-void
.end method
