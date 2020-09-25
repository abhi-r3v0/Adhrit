.class public abstract Lo/OneLinkHttpTask$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OneLinkHttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/OneLinkHttpTask;
.end method

.method public abstract extraCallback(Ljava/lang/String;)Lo/OneLinkHttpTask$onNavigationEvent;
.end method

.method abstract extraCallback(Lo/isLogsDisabledCompletely;)Lo/OneLinkHttpTask$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isLogsDisabledCompletely<",
            "*>;)",
            "Lo/OneLinkHttpTask$onNavigationEvent;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lo/OaidClient$Info;)Lo/OneLinkHttpTask$onNavigationEvent;
.end method

.method abstract onNavigationEvent(Lo/getReferrer;)Lo/OneLinkHttpTask$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getReferrer<",
            "*[B>;)",
            "Lo/OneLinkHttpTask$onNavigationEvent;"
        }
    .end annotation
.end method

.method abstract onPostMessage(Lo/isEnableLog;)Lo/OneLinkHttpTask$onNavigationEvent;
.end method
