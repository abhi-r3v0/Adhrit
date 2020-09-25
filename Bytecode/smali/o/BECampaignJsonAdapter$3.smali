.class final Lo/BECampaignJsonAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BECampaignJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/BECampaignJsonAdapter;


# direct methods
.method constructor <init>(Lo/BECampaignJsonAdapter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 34
    iget-object v0, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-static {v0}, Lo/BECampaignJsonAdapter;->onMessageChannelReady(Lo/BECampaignJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-static {v1}, Lo/BECampaignJsonAdapter;->ICustomTabsCallback(Lo/BECampaignJsonAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    iget-object v3, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-static {v3}, Lo/BECampaignJsonAdapter;->extraCallback(Lo/BECampaignJsonAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lo/BECampaignJsonAdapter;->extraCallback(Lo/BECampaignJsonAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 37
    iget-object v2, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-static {v2, v1}, Lo/BECampaignJsonAdapter;->onPostMessage(Lo/BECampaignJsonAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-static {v1}, Lo/BECampaignJsonAdapter;->ICustomTabsCallback(Lo/BECampaignJsonAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    iget-object v2, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-static {v2}, Lo/BECampaignJsonAdapter;->ICustomTabsCallback(Lo/BECampaignJsonAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BECampaign$ICustomTabsCallback;

    invoke-interface {v2}, Lo/BECampaign$ICustomTabsCallback;->ICustomTabsCallback()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lo/BECampaignJsonAdapter$3;->extraCallback:Lo/BECampaignJsonAdapter;

    invoke-static {v0}, Lo/BECampaignJsonAdapter;->ICustomTabsCallback(Lo/BECampaignJsonAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0

    throw v1
.end method
