.class final Lo/setCallbacks;
.super Lo/zzh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/zzh<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lo/setTimeout;Lo/doOnboarding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lo/zzh;-><init>(Lo/setTimeout;Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lo/zzh;->onNavigationEvent(Landroid/os/Bundle;Landroid/os/Bundle;)V

    const-string p2, "chunk_file_descriptor"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iget-object p2, p0, Lo/zzh;->ICustomTabsCallback:Lo/doOnboarding;

    .line 1000
    iget-object p2, p2, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {p2, p1}, Lo/Onboarding;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method
