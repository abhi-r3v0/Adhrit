.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Lo/fromToken;
.source ""

# interfaces
.implements Lo/setRippleColorResource;


# instance fields
.field private onNavigationEvent:Lo/setIconTintMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fromToken;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->onNavigationEvent:Lo/setIconTintMode;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lo/setIconTintMode;

    invoke-direct {v0, p0}, Lo/setIconTintMode;-><init>(Lo/setRippleColorResource;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->onNavigationEvent:Lo/setIconTintMode;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->onNavigationEvent:Lo/setIconTintMode;

    .line 6
    invoke-virtual {v0, p1, p2}, Lo/setIconTintMode;->extraCallback(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
