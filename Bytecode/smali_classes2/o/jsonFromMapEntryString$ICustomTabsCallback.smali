.class public abstract Lo/jsonFromMapEntryString$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jsonFromMapEntryString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lo/jsonFromMapEntryString;
.end method

.method public abstract setAuthToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method

.method public abstract setExpiresInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method

.method public abstract setFirebaseInstallationId(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method

.method public abstract setFisError(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method

.method public abstract setRefreshToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method

.method public abstract setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method

.method public abstract setTokenCreationEpochInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method
