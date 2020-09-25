.class public abstract Lo/BinaryImagesConverter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BinaryImagesConverter$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lo/BinaryImagesConverter$extraCallback;
    .locals 1

    .line 52
    new-instance v0, Lo/access$lambda$3$extraCallback;

    invoke-direct {v0}, Lo/access$lambda$3$extraCallback;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTokenCreationTimestamp()J
.end method

.method public abstract getTokenExpirationTimestamp()J
.end method

.method public abstract toBuilder()Lo/BinaryImagesConverter$extraCallback;
.end method
