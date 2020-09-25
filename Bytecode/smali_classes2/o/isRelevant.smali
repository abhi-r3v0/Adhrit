.class public abstract Lo/isRelevant;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isRelevant$extraCallback;,
        Lo/isRelevant$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lo/isRelevant$extraCallback;
    .locals 1

    .line 54
    new-instance v0, Lo/getLibraryFile$onMessageChannelReady;

    invoke-direct {v0}, Lo/getLibraryFile$onMessageChannelReady;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getAuthToken()Lo/correctDataPath;
.end method

.method public abstract getFid()Ljava/lang/String;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
.end method

.method public abstract getResponseCode()Lo/isRelevant$onMessageChannelReady;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method

.method public abstract toBuilder()Lo/isRelevant$extraCallback;
.end method
