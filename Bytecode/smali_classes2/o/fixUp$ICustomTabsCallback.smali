.class public final Lo/fixUp$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fixUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Ljava/lang/String;

.field public extraCallback:Ljava/lang/String;

.field public onMessageChannelReady:Lo/joinBytes;

.field public onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown-authority"

    .line 73
    iput-object v0, p0, Lo/fixUp$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 74
    sget-object v0, Lo/serverCacheEstimatedSizeInBytes;->ICustomTabsCallback:Lo/serverCacheEstimatedSizeInBytes;

    iput-object v0, p0, Lo/fixUp$ICustomTabsCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 136
    instance-of v0, p1, Lo/fixUp$ICustomTabsCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    check-cast p1, Lo/fixUp$ICustomTabsCallback;

    .line 140
    iget-object v0, p0, Lo/fixUp$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p1, Lo/fixUp$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/fixUp$ICustomTabsCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes;

    iget-object v2, p1, Lo/fixUp$ICustomTabsCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes;

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/fixUp$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    iget-object v2, p1, Lo/fixUp$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    .line 2052
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 142
    iget-object v0, p0, Lo/fixUp$ICustomTabsCallback;->onMessageChannelReady:Lo/joinBytes;

    iget-object p1, p1, Lo/fixUp$ICustomTabsCallback;->onMessageChannelReady:Lo/joinBytes;

    if-eq v0, p1, :cond_4

    if-eqz v0, :cond_3

    .line 3052
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lo/fixUp$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/fixUp$ICustomTabsCallback;->onNavigationEvent:Lo/serverCacheEstimatedSizeInBytes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/fixUp$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/fixUp$ICustomTabsCallback;->onMessageChannelReady:Lo/joinBytes;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
