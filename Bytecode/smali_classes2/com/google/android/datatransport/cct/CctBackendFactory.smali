.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SingleInstallBroadcastReceiver;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lo/ServerParameters;)Lo/ContentFetcher$2;
    .locals 3

    .line 1
    new-instance v0, Lo/CreateOneLinkHttpTask$ResponseListener;

    .line 2
    invoke-virtual {p1}, Lo/ServerParameters;->extraCallback()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lo/ServerParameters;->ICustomTabsCallback()Lo/b;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lo/ServerParameters;->onNavigationEvent()Lo/b;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lo/CreateOneLinkHttpTask$ResponseListener;-><init>(Landroid/content/Context;Lo/b;Lo/b;)V

    return-object v0
.end method
