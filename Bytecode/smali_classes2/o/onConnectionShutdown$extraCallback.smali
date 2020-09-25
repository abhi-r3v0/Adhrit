.class public final Lo/onConnectionShutdown$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/shortCircuitingInOrderTraversal$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onConnectionShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/shortCircuitingInOrderTraversal;
    .locals 1

    .line 35
    new-instance v0, Lo/onConnectionShutdown;

    invoke-direct {v0}, Lo/onConnectionShutdown;-><init>()V

    return-object v0
.end method
