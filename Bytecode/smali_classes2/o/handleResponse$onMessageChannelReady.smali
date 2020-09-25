.class public abstract Lo/handleResponse$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(J)Lo/handleResponse$onMessageChannelReady;
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lo/handleResponse$onMessageChannelReady;
.end method

.method public abstract ICustomTabsCallback(Lo/onResponse;)Lo/handleResponse$onMessageChannelReady;
.end method

.method public abstract onMessageChannelReady(J)Lo/handleResponse$onMessageChannelReady;
.end method

.method public abstract onMessageChannelReady(Ljava/lang/Integer;)Lo/handleResponse$onMessageChannelReady;
.end method

.method public abstract onNavigationEvent(J)Lo/handleResponse$onMessageChannelReady;
.end method

.method public abstract onPostMessage([B)Lo/handleResponse$onMessageChannelReady;
.end method

.method public abstract onPostMessage()Lo/handleResponse;
.end method
