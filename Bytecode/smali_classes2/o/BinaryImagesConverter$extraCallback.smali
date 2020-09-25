.class public abstract Lo/BinaryImagesConverter$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BinaryImagesConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lo/BinaryImagesConverter;
.end method

.method public abstract setToken(Ljava/lang/String;)Lo/BinaryImagesConverter$extraCallback;
.end method

.method public abstract setTokenCreationTimestamp(J)Lo/BinaryImagesConverter$extraCallback;
.end method

.method public abstract setTokenExpirationTimestamp(J)Lo/BinaryImagesConverter$extraCallback;
.end method
