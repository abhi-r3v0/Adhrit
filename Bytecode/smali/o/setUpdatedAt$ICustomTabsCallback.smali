.class public final Lo/setUpdatedAt$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUpdatedAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final onPostMessage:Lo/setUpdatedAt$ICustomTabsCallback;


# instance fields
.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;

    invoke-direct {v0}, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;-><init>()V

    .line 2014
    new-instance v1, Lo/setUpdatedAt$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/setUpdatedAt$ICustomTabsCallback;-><init>(Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;)V

    .line 26
    sput-object v1, Lo/setUpdatedAt$ICustomTabsCallback;->onPostMessage:Lo/setUpdatedAt$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>(Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->extraCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onNavigationEvent:Z

    .line 4
    iget-object p1, p1, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    iput-object p1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lo/setUpdatedAt$ICustomTabsCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 12
    :cond_1
    check-cast p1, Lo/setUpdatedAt$ICustomTabsCallback;

    .line 13
    iget-object v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    iget-object v3, p1, Lo/setUpdatedAt$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_2

    .line 1001
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    .line 13
    iget-boolean v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onNavigationEvent:Z

    iget-boolean v3, p1, Lo/setUpdatedAt$ICustomTabsCallback;->onNavigationEvent:Z

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/setUpdatedAt$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    if-eq v1, p1, :cond_5

    if-eqz v1, :cond_4

    .line 2001
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onNavigationEvent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2002
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Landroid/os/Bundle;
    .locals 3

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    iget-object v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    const-string v2, "consumer_package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->onNavigationEvent:Z

    const-string v2, "force_save_dialog"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v1, p0, Lo/setUpdatedAt$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const-string v2, "log_session_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
