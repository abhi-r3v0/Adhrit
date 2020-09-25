.class final Lo/saveNode$extraCallback;
.super Lo/saveNode$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lo/saveNode$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lo/saveNode$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    .line 283
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
