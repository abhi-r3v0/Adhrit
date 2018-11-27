.class Landroid/support/v4/media/VolumeProviderCompatApi21;
.super Ljava/lang/Object;
.source "VolumeProviderCompatApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVolumeProvider(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;
    .locals 1

    .line 26
    new-instance v0, Landroid/support/v4/media/VolumeProviderCompatApi21$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/media/VolumeProviderCompatApi21$1;-><init>(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)V

    return-object v0
.end method

.method public static setCurrentVolume(Ljava/lang/Object;I)V
    .locals 0

    .line 40
    check-cast p0, Landroid/media/VolumeProvider;

    invoke-virtual {p0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    return-void
.end method
