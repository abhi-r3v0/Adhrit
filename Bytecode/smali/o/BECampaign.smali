.class public abstract Lo/BECampaign;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BECampaign$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static extraCallback:Lo/BECampaign;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized onPostMessage()Lo/BECampaign;
    .locals 2

    const-class v0, Lo/BECampaign;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lo/BECampaign;->extraCallback:Lo/BECampaign;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lo/BECampaignJsonAdapter;

    invoke-direct {v1}, Lo/BECampaignJsonAdapter;-><init>()V

    sput-object v1, Lo/BECampaign;->extraCallback:Lo/BECampaign;

    .line 37
    :cond_0
    sget-object v1, Lo/BECampaign;->extraCallback:Lo/BECampaign;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract extraCallback(Lo/BECampaign$ICustomTabsCallback;)V
.end method

.method public abstract onNavigationEvent(Lo/BECampaign$ICustomTabsCallback;)V
.end method
