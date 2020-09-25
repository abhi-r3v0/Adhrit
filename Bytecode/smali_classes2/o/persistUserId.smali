.class public final Lo/persistUserId;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/finalizeSessionWithNativeEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
