.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;
.super Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;
.source ""


# instance fields
.field private final throttleEndTimeMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string v0, "Fetch was throttled."

    .line 30
    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchException;-><init>(Ljava/lang/String;)V

    .line 45
    iput-wide p2, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;->throttleEndTimeMillis:J

    return-void
.end method


# virtual methods
.method public getThrottleEndTimeMillis()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;->throttleEndTimeMillis:J

    return-wide v0
.end method
