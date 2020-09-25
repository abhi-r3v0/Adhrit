.class public final Lo/beginTransaction$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/beginTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/beginTransaction$onMessageChannelReady$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/deleteTrackedQuery;

.field private final onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;


# direct methods
.method public constructor <init>(Lo/serverCacheEstimatedSizeInBytes;Lo/deleteTrackedQuery;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 103
    check-cast p1, Lo/serverCacheEstimatedSizeInBytes;

    iput-object p1, p0, Lo/beginTransaction$onMessageChannelReady;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    if-eqz p2, :cond_0

    .line 104
    check-cast p2, Lo/deleteTrackedQuery;

    iput-object p2, p0, Lo/beginTransaction$onMessageChannelReady;->ICustomTabsCallback:Lo/deleteTrackedQuery;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callOptions"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1910
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transportAttrs"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 3105
    new-instance v0, Lo/buildAppRequest$onPostMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/buildAppRequest$onPostMessage;-><init>(Ljava/lang/String;B)V

    .line 145
    iget-object v1, p0, Lo/beginTransaction$onMessageChannelReady;->onMessageChannelReady:Lo/serverCacheEstimatedSizeInBytes;

    const-string v2, "transportAttrs"

    .line 146
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/beginTransaction$onMessageChannelReady;->ICustomTabsCallback:Lo/deleteTrackedQuery;

    const-string v2, "callOptions"

    .line 147
    invoke-virtual {v0, v2, v1}, Lo/buildAppRequest$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/buildAppRequest$onPostMessage;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
