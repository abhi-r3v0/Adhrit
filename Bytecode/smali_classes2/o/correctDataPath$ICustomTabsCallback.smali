.class public abstract Lo/correctDataPath$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/correctDataPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lo/correctDataPath;
.end method

.method public abstract setResponseCode(Lo/correctDataPath$extraCallback;)Lo/correctDataPath$ICustomTabsCallback;
.end method

.method public abstract setToken(Ljava/lang/String;)Lo/correctDataPath$ICustomTabsCallback;
.end method

.method public abstract setTokenExpirationTimestamp(J)Lo/correctDataPath$ICustomTabsCallback;
.end method
