.class public abstract Lin/juspay/hypersdk/ui/dialog/JuspayBrandingV3;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/hypersdk/ui/dialog/JuspayBranding;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createWaitingDialogWithLayout()I
.end method

.method public abstract onWaitingDialogCreated(Landroid/app/Dialog;)V
.end method
