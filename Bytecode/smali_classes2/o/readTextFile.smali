.class public abstract Lo/readTextFile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lo/readTextFile;
    .locals 1

    .line 24
    new-instance v0, Lo/lambda$static$1;

    invoke-direct {v0, p0, p1}, Lo/lambda$static$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getLibraryName()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method
