.class public abstract Lo/correctDataPath;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/correctDataPath$ICustomTabsCallback;,
        Lo/correctDataPath$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lo/correctDataPath$ICustomTabsCallback;
    .locals 3

    .line 56
    new-instance v0, Lo/parseProcMapsJsonFromString$onPostMessage;

    invoke-direct {v0}, Lo/parseProcMapsJsonFromString$onPostMessage;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo/correctDataPath$ICustomTabsCallback;->setTokenExpirationTimestamp(J)Lo/correctDataPath$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getResponseCode()Lo/correctDataPath$extraCallback;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenExpirationTimestamp()J
.end method

.method public abstract toBuilder()Lo/correctDataPath$ICustomTabsCallback;
.end method
