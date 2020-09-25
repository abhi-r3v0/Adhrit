.class public abstract Lo/onResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onResponse$onNavigationEvent;,
        Lo/onResponse$ICustomTabsCallback;,
        Lo/onResponse$onMessageChannelReady;
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
.method public abstract onMessageChannelReady()Lo/onResponse$ICustomTabsCallback;
.end method

.method public abstract onNavigationEvent()Lo/onResponse$onMessageChannelReady;
.end method
