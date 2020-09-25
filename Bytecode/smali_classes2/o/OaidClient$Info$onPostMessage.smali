.class public abstract Lo/OaidClient$Info$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OaidClient$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Ljava/lang/String;)Lo/OaidClient$Info$onPostMessage;
.end method

.method public abstract onMessageChannelReady([B)Lo/OaidClient$Info$onPostMessage;
.end method

.method public abstract onNavigationEvent(Lo/setReferrer;)Lo/OaidClient$Info$onPostMessage;
.end method

.method public abstract onPostMessage()Lo/OaidClient$Info;
.end method
