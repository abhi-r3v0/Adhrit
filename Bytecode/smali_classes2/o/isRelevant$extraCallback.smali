.class public abstract Lo/isRelevant$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isRelevant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lo/isRelevant;
.end method

.method public abstract setAuthToken(Lo/correctDataPath;)Lo/isRelevant$extraCallback;
.end method

.method public abstract setFid(Ljava/lang/String;)Lo/isRelevant$extraCallback;
.end method

.method public abstract setRefreshToken(Ljava/lang/String;)Lo/isRelevant$extraCallback;
.end method

.method public abstract setResponseCode(Lo/isRelevant$onMessageChannelReady;)Lo/isRelevant$extraCallback;
.end method

.method public abstract setUri(Ljava/lang/String;)Lo/isRelevant$extraCallback;
.end method
