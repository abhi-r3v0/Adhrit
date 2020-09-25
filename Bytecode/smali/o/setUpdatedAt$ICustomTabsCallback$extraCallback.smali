.class public final Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setUpdatedAt$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected extraCallback:Ljava/lang/String;

.field protected onMessageChannelReady:Ljava/lang/String;

.field protected onPostMessage:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lo/setUpdatedAt$ICustomTabsCallback;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    .line 1022
    iget-object v0, p1, Lo/setUpdatedAt$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->extraCallback:Ljava/lang/String;

    .line 1023
    iget-boolean v0, p1, Lo/setUpdatedAt$ICustomTabsCallback;->onNavigationEvent:Z

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->onPostMessage:Ljava/lang/Boolean;

    .line 1024
    iget-object p1, p1, Lo/setUpdatedAt$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setUpdatedAt$ICustomTabsCallback;
    .locals 1

    .line 14
    new-instance v0, Lo/setUpdatedAt$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/setUpdatedAt$ICustomTabsCallback;-><init>(Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;)V

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;
    .locals 0

    .line 12
    iput-object p1, p0, Lo/setUpdatedAt$ICustomTabsCallback$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    return-object p0
.end method
