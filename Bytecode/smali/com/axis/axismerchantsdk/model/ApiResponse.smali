.class public Lcom/axis/axismerchantsdk/model/ApiResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public extraCallback:I

.field public onNavigationEvent:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/axis/axismerchantsdk/model/ApiResponse;->extraCallback:I

    .line 17
    iput-object p2, p0, Lcom/axis/axismerchantsdk/model/ApiResponse;->onNavigationEvent:[B

    return-void
.end method
