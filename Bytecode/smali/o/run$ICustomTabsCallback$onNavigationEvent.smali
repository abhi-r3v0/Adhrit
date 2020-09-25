.class public final Lo/run$ICustomTabsCallback$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/run$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/run$ICustomTabsCallback$onNavigationEvent;->ICustomTabsCallback:Landroid/os/Bundle;

    return-void
.end method
