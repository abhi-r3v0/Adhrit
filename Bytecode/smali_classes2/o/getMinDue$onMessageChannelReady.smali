.class public final Lo/getMinDue$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinDue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/LocalTestingException;

.field private onNavigationEvent:Landroid/accounts/Account;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lo/LocalTestingException;->extraCallback:Lo/LocalTestingException;

    iput-object v0, p0, Lo/getMinDue$onMessageChannelReady;->onMessageChannelReady:Lo/LocalTestingException;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/Collection;)Lo/getMinDue$onMessageChannelReady;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lo/getMinDue$onMessageChannelReady;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lo/getMinDue$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    iput-object v0, p0, Lo/getMinDue$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 12
    :cond_0
    iget-object v0, p0, Lo/getMinDue$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/getMinDue$onMessageChannelReady;
    .locals 0

    .line 20
    iput-object p1, p0, Lo/getMinDue$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final onMessageChannelReady()Lo/getMinDue;
    .locals 11

    .line 28
    new-instance v10, Lo/getMinDue;

    iget-object v1, p0, Lo/getMinDue$onMessageChannelReady;->onNavigationEvent:Landroid/accounts/Account;

    iget-object v2, p0, Lo/getMinDue$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v6, p0, Lo/getMinDue$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    iget-object v7, p0, Lo/getMinDue$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v8, p0, Lo/getMinDue$onMessageChannelReady;->onMessageChannelReady:Lo/LocalTestingException;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lo/getMinDue;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lo/LocalTestingException;Z)V

    return-object v10
.end method

.method public final onNavigationEvent(Landroid/accounts/Account;)Lo/getMinDue$onMessageChannelReady;
    .locals 0

    .line 4
    iput-object p1, p0, Lo/getMinDue$onMessageChannelReady;->onNavigationEvent:Landroid/accounts/Account;

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/getMinDue$onMessageChannelReady;
    .locals 0

    .line 22
    iput-object p1, p0, Lo/getMinDue$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    return-object p0
.end method
