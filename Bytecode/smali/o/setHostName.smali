.class public Lo/setHostName;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setHostName$onPostMessage;,
        Lo/setHostName$extraCallback;
    }
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:Lo/setHostName$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback()Lo/setHostName$extraCallback;
    .locals 2

    .line 95
    sget-object v0, Lo/setHostName;->ICustomTabsCallback:Lo/setHostName$extraCallback;

    if-nez v0, :cond_1

    .line 96
    const-class v0, Lo/setHostName;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lo/setHostName;->ICustomTabsCallback:Lo/setHostName$extraCallback;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lo/setSharingFilterForAllPartners;

    invoke-direct {v1}, Lo/setSharingFilterForAllPartners;-><init>()V

    sput-object v1, Lo/setHostName;->ICustomTabsCallback:Lo/setHostName$extraCallback;

    .line 100
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 102
    :cond_1
    :goto_0
    sget-object v0, Lo/setHostName;->ICustomTabsCallback:Lo/setHostName$extraCallback;

    return-object v0
.end method

.method public static onPostMessage()Z
    .locals 1

    .line 91
    invoke-static {}, Lo/setHostName;->extraCallback()Lo/setHostName$extraCallback;

    const/4 v0, 0x0

    return v0
.end method
