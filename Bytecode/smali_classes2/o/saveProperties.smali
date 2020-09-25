.class public abstract Lo/saveProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/saveProperties$onMessageChannelReady;
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
.method public abstract ICustomTabsCallback()Ljava/lang/String;
.end method

.method public abstract ICustomTabsCallback$Stub()Ljava/lang/String;
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public abstract onMessageChannelReady()Ljava/lang/String;
.end method

.method public abstract onNavigationEvent()Ljava/lang/Integer;
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method

.method public abstract onRelationshipValidationResult()Ljava/lang/String;
.end method

.method public abstract onTransact()Ljava/lang/String;
.end method
