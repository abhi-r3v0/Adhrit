.class final Lo/getInstallReferrer$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInstallReferrer;->ICustomTabsCallback(Lo/invalidateSpanInfo;)Lo/getDrawerToggleDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getInstallReferrer;

.field private synthetic onPostMessage:Lo/invalidateSpanInfo;


# direct methods
.method constructor <init>(Lo/getInstallReferrer;Ljava/lang/Object;Lo/invalidateSpanInfo;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lo/getInstallReferrer$1;->ICustomTabsCallback:Lo/getInstallReferrer;

    iput-object p3, p0, Lo/getInstallReferrer$1;->onPostMessage:Lo/invalidateSpanInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onMessageChannelReady()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    :try_start_0
    iget-object v0, p0, Lo/getInstallReferrer$1;->ICustomTabsCallback:Lo/getInstallReferrer;

    invoke-static {v0}, Lo/getInstallReferrer;->onMessageChannelReady(Lo/getInstallReferrer;)Lo/getGooglePlayInstantParam;

    move-result-object v0

    iget-object v1, p0, Lo/getInstallReferrer$1;->onPostMessage:Lo/invalidateSpanInfo;

    invoke-virtual {v0, v1}, Lo/getGooglePlayInstantParam;->onNavigationEvent(Lo/invalidateSpanInfo;)Z

    .line 344
    iget-object v0, p0, Lo/getInstallReferrer$1;->ICustomTabsCallback:Lo/getInstallReferrer;

    invoke-static {v0}, Lo/getInstallReferrer;->onNavigationEvent(Lo/getInstallReferrer;)Lo/setStrokeColor;

    move-result-object v0

    iget-object v1, p0, Lo/getInstallReferrer$1;->onPostMessage:Lo/invalidateSpanInfo;

    invoke-interface {v0, v1}, Lo/setStrokeColor;->ICustomTabsCallback(Lo/invalidateSpanInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 347
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 349
    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lo/getInstallReferrer$1;->onMessageChannelReady()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
