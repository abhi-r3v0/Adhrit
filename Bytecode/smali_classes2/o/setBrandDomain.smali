.class public abstract Lo/setBrandDomain;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setBrandDomain$onNavigationEvent;,
        Lo/setBrandDomain$onPostMessage;
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
.method public abstract ICustomTabsCallback()Lo/setBrandDomain$onPostMessage;
.end method

.method public abstract onMessageChannelReady()Lo/saveProperties;
.end method
