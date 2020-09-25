.class public abstract Lo/ServerParameters;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/b;
.end method

.method public abstract extraCallback()Landroid/content/Context;
.end method

.method public abstract onNavigationEvent()Lo/b;
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method
