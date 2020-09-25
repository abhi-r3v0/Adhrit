.class public abstract Lo/getMappingFileId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCustomAmount$onPostMessage;
.implements Ljava/lang/Cloneable;


# instance fields
.field zza:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lo/getMappingFileId;->zza()Lo/getMappingFileId;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza()Lo/getMappingFileId;
.end method
