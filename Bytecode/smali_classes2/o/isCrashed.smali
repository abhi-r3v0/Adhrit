.class public abstract Lo/isCrashed;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/isCrashed$onNavigationEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCanonicalId()Ljava/lang/String;
.end method

.method public abstract getField()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;
.end method

.method public abstract matches(Lo/setDiskUsed;)Z
.end method
