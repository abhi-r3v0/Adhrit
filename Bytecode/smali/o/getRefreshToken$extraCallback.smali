.class Lo/getRefreshToken$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRefreshToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field public extraCallback:F

.field public onMessageChannelReady:I

.field public onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getRefreshToken$3;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lo/getRefreshToken$extraCallback;-><init>()V

    return-void
.end method
