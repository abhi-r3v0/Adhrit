.class abstract Lo/OneLinkHttpTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OneLinkHttpTask$onNavigationEvent;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/OaidClient$Info;
.end method

.method abstract extraCallback()Lo/isLogsDisabledCompletely;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isLogsDisabledCompletely<",
            "*>;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady()Lo/getReferrer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getReferrer<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()Lo/isEnableLog;
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method
