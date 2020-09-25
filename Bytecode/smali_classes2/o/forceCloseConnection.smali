.class public final Lo/forceCloseConnection;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/forceCloseConnection$onNavigationEvent;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroid/content/Intent;

.field public final onNavigationEvent:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lo/forceCloseConnection;->ICustomTabsCallback:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lo/forceCloseConnection;->onNavigationEvent:Landroid/os/Bundle;

    return-void
.end method
