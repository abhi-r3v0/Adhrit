.class final Lo/SessionProtobufHelper$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SessionProtobufHelper$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SessionProtobufHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onTransact"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lo/SessionProtobufHelper$onTransact;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback([BII)[B
    .locals 2

    .line 116
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 117
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
