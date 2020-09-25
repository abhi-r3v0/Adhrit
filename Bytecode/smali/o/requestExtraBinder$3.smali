.class final Lo/requestExtraBinder$3;
.super Lo/MediaControllerCompat$Callback$StubApi21;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestExtraBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/requestExtraBinder;


# direct methods
.method constructor <init>(Lo/requestExtraBinder;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lo/requestExtraBinder$3;->extraCallback:Lo/requestExtraBinder;

    invoke-direct {p0}, Lo/MediaControllerCompat$Callback$StubApi21;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 390
    iget-object p1, p0, Lo/requestExtraBinder$3;->extraCallback:Lo/requestExtraBinder;

    iget-object p1, p1, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 1200
    iget-object p1, p1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2057
    invoke-static {p1, p2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
