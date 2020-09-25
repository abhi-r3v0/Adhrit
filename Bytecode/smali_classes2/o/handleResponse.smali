.class public abstract Lo/handleResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/handleResponse$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()[B
.end method

.method public abstract asBinder()Lo/onResponse;
.end method

.method public abstract asInterface()J
.end method

.method public abstract extraCallback()J
.end method

.method public abstract onMessageChannelReady()Ljava/lang/Integer;
.end method

.method public abstract onNavigationEvent()J
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method
