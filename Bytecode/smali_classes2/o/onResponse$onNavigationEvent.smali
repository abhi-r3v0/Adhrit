.class public abstract Lo/onResponse$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/onResponse$onMessageChannelReady;)Lo/onResponse$onNavigationEvent;
.end method

.method public abstract extraCallback()Lo/onResponse;
.end method

.method public abstract onNavigationEvent(Lo/onResponse$ICustomTabsCallback;)Lo/onResponse$onNavigationEvent;
.end method
