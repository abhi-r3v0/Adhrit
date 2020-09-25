.class public final Lo/forceCloseConnection$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/forceCloseConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public extraCallback:Z

.field public final onNavigationEvent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-direct {p0, v0}, Lo/forceCloseConnection$onNavigationEvent;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lo/forceCloseConnection$onNavigationEvent;->onNavigationEvent:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 280
    iput-boolean p1, p0, Lo/forceCloseConnection$onNavigationEvent;->extraCallback:Z

    .line 301
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.support.customtabs.extra.SESSION"

    const/4 v1, 0x0

    .line 302
    invoke-static {p1, v0, v1}, Lo/MediaDescriptionCompat$Builder;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 304
    iget-object v0, p0, Lo/forceCloseConnection$onNavigationEvent;->onNavigationEvent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPostMessage()Lo/forceCloseConnection;
    .locals 3

    .line 525
    iget-object v0, p0, Lo/forceCloseConnection$onNavigationEvent;->onNavigationEvent:Landroid/content/Intent;

    iget-boolean v1, p0, Lo/forceCloseConnection$onNavigationEvent;->extraCallback:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 526
    new-instance v0, Lo/forceCloseConnection;

    iget-object v1, p0, Lo/forceCloseConnection$onNavigationEvent;->onNavigationEvent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/forceCloseConnection;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
