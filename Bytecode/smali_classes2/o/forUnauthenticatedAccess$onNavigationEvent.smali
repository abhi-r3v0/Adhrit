.class final Lo/forUnauthenticatedAccess$onNavigationEvent;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/forUnauthenticatedAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "Picasso-Dispatcher"

    const/16 v1, 0xa

    .line 540
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method
