.class public final Lo/InstallReferrerClientImpl$ClientState$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstallReferrerCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InstallReferrerClientImpl$ClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/InstallReferrerCommons<",
        "Lcom/facebook/common/memory/PooledByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onPostMessage(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 1025
    invoke-interface {p1}, Lcom/facebook/common/memory/PooledByteBuffer;->onNavigationEvent()I

    move-result p1

    return p1
.end method
