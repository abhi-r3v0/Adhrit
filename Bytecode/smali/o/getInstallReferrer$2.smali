.class final Lo/getInstallReferrer$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInstallReferrer;->extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/invalidateSpanInfo;

.field private synthetic extraCallback:Lo/getCardBackgroundColor;

.field private synthetic onPostMessage:Lo/getInstallReferrer;


# direct methods
.method constructor <init>(Lo/getInstallReferrer;Ljava/lang/Object;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lo/getInstallReferrer$2;->onPostMessage:Lo/getInstallReferrer;

    iput-object p3, p0, Lo/getInstallReferrer$2;->ICustomTabsCallback:Lo/invalidateSpanInfo;

    iput-object p4, p0, Lo/getInstallReferrer$2;->extraCallback:Lo/getCardBackgroundColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 306
    :try_start_0
    iget-object v0, p0, Lo/getInstallReferrer$2;->onPostMessage:Lo/getInstallReferrer;

    iget-object v1, p0, Lo/getInstallReferrer$2;->ICustomTabsCallback:Lo/invalidateSpanInfo;

    iget-object v2, p0, Lo/getInstallReferrer$2;->extraCallback:Lo/getCardBackgroundColor;

    invoke-static {v0, v1, v2}, Lo/getInstallReferrer;->extraCallback(Lo/getInstallReferrer;Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Lo/getInstallReferrer$2;->onPostMessage:Lo/getInstallReferrer;

    invoke-static {v0}, Lo/getInstallReferrer;->onMessageChannelReady(Lo/getInstallReferrer;)Lo/getGooglePlayInstantParam;

    move-result-object v0

    iget-object v1, p0, Lo/getInstallReferrer$2;->ICustomTabsCallback:Lo/invalidateSpanInfo;

    iget-object v2, p0, Lo/getInstallReferrer$2;->extraCallback:Lo/getCardBackgroundColor;

    invoke-virtual {v0, v1, v2}, Lo/getGooglePlayInstantParam;->extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)Z

    .line 312
    iget-object v0, p0, Lo/getInstallReferrer$2;->extraCallback:Lo/getCardBackgroundColor;

    if-eqz v0, :cond_0

    .line 1425
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 309
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 311
    iget-object v1, p0, Lo/getInstallReferrer$2;->onPostMessage:Lo/getInstallReferrer;

    invoke-static {v1}, Lo/getInstallReferrer;->onMessageChannelReady(Lo/getInstallReferrer;)Lo/getGooglePlayInstantParam;

    move-result-object v1

    iget-object v2, p0, Lo/getInstallReferrer$2;->ICustomTabsCallback:Lo/invalidateSpanInfo;

    iget-object v3, p0, Lo/getInstallReferrer$2;->extraCallback:Lo/getCardBackgroundColor;

    invoke-virtual {v1, v2, v3}, Lo/getGooglePlayInstantParam;->extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)Z

    .line 312
    iget-object v1, p0, Lo/getInstallReferrer$2;->extraCallback:Lo/getCardBackgroundColor;

    if-eqz v1, :cond_1

    .line 2425
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->close()V

    .line 313
    :cond_1
    throw v0
.end method
